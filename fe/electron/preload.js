const { contextBridge } = require('electron');

// Expose secure APIs to the renderer process if needed in the future
contextBridge.exposeInMainWorld('electronAPI', {
  platform: process.platform,
});
