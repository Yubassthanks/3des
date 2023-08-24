/*
  Warnings:

  - Added the required column `valor` to the `Itens` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `itens` ADD COLUMN `valor` DOUBLE NOT NULL;
