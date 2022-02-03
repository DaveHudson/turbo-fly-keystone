import { config } from "@keystone-6/core";
import { lists } from "./schema";
import { insertSeedData } from "./seed-data";

export default config({
  db: {
    provider: "postgresql",
    url: process.env.DATABASE_URL || "postgres://davehudson@localhost/davehudson",
    async onConnect(context) {
      if (process.argv.includes("--seed-data")) {
        await insertSeedData(context);
      }
    },
  },
  lists,
});
