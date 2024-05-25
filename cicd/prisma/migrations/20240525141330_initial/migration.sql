-- CreateEnum
CREATE TYPE "MyEnum" AS ENUM ('A');

-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "values" "MyEnum"[],

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);
