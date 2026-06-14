import type { NextConfig } from "next";
import { PHASE_PRODUCTION_BUILD } from "next/constants";
import withPWAInit from "@ducanh2912/next-pwa";

const nextConfig = (phase: string): NextConfig => {
  const isExport = phase === PHASE_PRODUCTION_BUILD;

  const config: NextConfig = {
    ...(isExport ? { output: 'export' } : {}),
    trailingSlash: true,
    allowedDevOrigins: ['103.6.201.118'],
    images: {
      unoptimized: true,
      remotePatterns: [
        {
          protocol: "http",
          hostname: "localhost",
          port: "8000",
          pathname: "/storage/**",
        },
        {
          protocol: "https",
          hostname: "api-ta.neverland.my.id",
          pathname: "/storage/**",
        },
        {
          protocol: "https",
          hostname: "ui-avatars.com",
          pathname: "/api/**",
        },
      ],
    },
  };

  const withPWA = withPWAInit({
    dest: "public",
    cacheOnFrontEndNav: true,
    aggressiveFrontEndNavCaching: true,
    reloadOnOnline: true,
    disable: process.env.NODE_ENV === "development",
    workboxOptions: {
      disableDevLogs: true,
    },
  });

  return withPWA(config);
};

export default nextConfig;

