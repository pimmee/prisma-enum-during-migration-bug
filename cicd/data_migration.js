const { PrismaClient, MyEnum } = require("@prisma/client");

const prisma = new PrismaClient();

console.log("Performing data migration...");

async function run() {
  await prisma.user.upsert({
    where: { id: "1" },
    create: { id: "1", values: [MyEnum.A, MyEnum.B] },
    update: { values: [MyEnum.A, MyEnum.B] },
  });
}

run();
