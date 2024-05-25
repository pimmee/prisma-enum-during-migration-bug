const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

async function run() {
  await prisma.user.upsert({
    where: { id: "1" },
    create: { id: "1", values: ["A"] },
    update: { values: ["A"] },
  });
}

run();
