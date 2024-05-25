const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

it("can get user", async () => {
  const user = await prisma.user.findUnique({ where: { id: "1" } });
  expect(user).toBeTruthy();
});
