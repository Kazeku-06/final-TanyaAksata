import type { NextConfig } from "next";
import { PHASE_PRODUCTION_BUILD } from "next/constants";

const nextConfig = (phase: string): NextConfig => {
  const isExport = phase === PHASE_PRODUCTION_BUILD;

  return {
    ...(isExport ? { output: 'export' } : {}),
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
};

export default nextConfig;
