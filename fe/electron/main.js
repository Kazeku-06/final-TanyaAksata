const { app, BrowserWindow, protocol, net } = require('electron');
const path = require('path');
const fs = require('fs');

// Register the custom scheme 'app' as privileged
// standard: true allows relative URLs and handles links like http
// supportFetchAPI: true ensures fetch requests are supported
protocol.registerSchemesAsPrivileged([
  { scheme: 'app', privileges: { standard: true, secure: true, supportFetchAPI: true } }
]);

function createWindow() {
  const win = new BrowserWindow({
    width: 1200,
    height: 800,
    webPreferences: {
      preload: path.join(__dirname, 'preload.js'),
      contextIsolation: true,
      nodeIntegration: false,
    },
    title: "TanyaAksata Desktop",
  });

  // Load the application using custom scheme
  win.loadURL('app://index.html');

  // Open the DevTools.
  win.webContents.openDevTools();
}

app.whenReady().then(() => {
  // Intercept the custom protocol 'app'
  protocol.handle('app', async (request) => {
    const url = new URL(request.url);
    let pathname = decodeURIComponent(url.pathname);
    
    // Resolve absolute path in Next.js build output directory ('out')
    const outDir = path.join(__dirname, '../out');
    
    // Fallback to index.html for root path
    if (pathname === '/' || pathname === '') {
      pathname = '/index.html';
    }

    let filePath = path.join(outDir, pathname);

    // 1. Direct file resolution (assets, JS, CSS, images)
    if (fs.existsSync(filePath) && fs.statSync(filePath).isFile()) {
      return net.fetch('file://' + filePath);
    }

    // 2. Trailing slash / directory resolution (e.g. /questions/edit/ -> /questions/edit/index.html)
    const indexPath = path.join(filePath, 'index.html');
    if (fs.existsSync(indexPath) && fs.statSync(indexPath).isFile()) {
      return net.fetch('file://' + indexPath);
    }

    // 3. SPA Routing Fallback: Let Next.js client router handle navigation
    return net.fetch('file://' + path.join(outDir, 'index.html'));
  });

  createWindow();

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
      createWindow();
    }
  });
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});
