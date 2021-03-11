/*
 Navicat Premium Data Transfer

 Source Server         : deliveryAppDb
 Source Server Type    : SQLite
 Source Server Version : 3030001
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3030001
 File Encoding         : 65001

 Date: 10/03/2021 23:33:58
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for livreur
-- ----------------------------
DROP TABLE IF EXISTS "livreur";
CREATE TABLE "livreur" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "login" TEXT(255) NOT NULL,
  "password" TEXT(255) NOT NULL
);

-- ----------------------------
-- Records of livreur
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for receptionnaire
-- ----------------------------
DROP TABLE IF EXISTS "receptionnaire";
CREATE TABLE "receptionnaire" (
  "id" INTEGER(10) NOT NULL,
  "nomPrenoms" TEXT(255) NOT NULL,
  "telephone" TEXT(255) NOT NULL,
  PRIMARY KEY ("id")
);

-- ----------------------------
-- Records of receptionnaire
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_sequence";
CREATE TABLE sqlite_sequence(name,seq);

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
BEGIN;
COMMIT;

PRAGMA foreign_keys = true;
