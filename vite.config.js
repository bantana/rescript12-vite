import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
// import rescript from "@jihchi/vite-plugin-rescript";
import rescript from "@nojaf/vite-plugin-rescript";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    rescript(),
    react({
      include: ["**/*.res.mjs"],
    }),
  ],
});
