/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : PostgreSQL
 Source Server Version : 110009
 Source Host           : localhost:5432
 Source Catalog        : DB_FD
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110009
 File Encoding         : 65001

 Date: 16/03/2021 18:38:34
*/


-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order";
CREATE TABLE "public"."t_order" (
  "id" int2 NOT NULL DEFAULT nextval('order_id_seq'::regclass),
  "firstname" varchar(255) COLLATE "pg_catalog"."default",
  "lastname" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "item" varchar(255) COLLATE "pg_catalog"."default",
  "quantity" varchar(16) COLLATE "pg_catalog"."default",
  "total_price" numeric(10,2)
)
;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO "public"."t_order" VALUES (1, 'ILHAM', 'RAMADHAN', 'ilham@me.com', 'barang1', '1', 1500000.00);
INSERT INTO "public"."t_order" VALUES (2, 'RAMA', 'NDAN', 'rama@me.com', 'barang2', '2', 200000.00);
INSERT INTO "public"."t_order" VALUES (4, 'ICHSAN', 'KUR', 'ichsan@me.com', 'barang3', '1', 150000.00);
INSERT INTO "public"."t_order" VALUES (5, 'LUTHFI', 'KH', 'luthfi@me.com', 'barang4', '1', 400000.00);
INSERT INTO "public"."t_order" VALUES (6, 'HERLAN', 'JUL', 'herlan@me.com', 'barang5', '1', 50000.00);
INSERT INTO "public"."t_order" VALUES (7, 'PUJI', 'PRAS', 'puj@me.com', 'barang6', '2', 700000.00);
INSERT INTO "public"."t_order" VALUES (8, 'DILA', 'FADILA', 'dilaa@me.com', 'barang7', '1', 20000.00);
INSERT INTO "public"."t_order" VALUES (9, 'DESI', 'EKA', 'des@me.com', 'barang8', '5', 450000.00);
INSERT INTO "public"."t_order" VALUES (10, 'EVA', 'YUL', 'eva@me.com', 'barang9', '1', 90000.00);
INSERT INTO "public"."t_order" VALUES (3, 'ILHAM', 'RAMADHAN', 'ilham@me.com', 'barang2', '3', 300000.00);
INSERT INTO "public"."t_order" VALUES (11, 'SEBEL', 'LAS', 'belas@me.com', 'barang10', '1', 10000.00);

-- ----------------------------
-- Primary Key structure for table t_order
-- ----------------------------
ALTER TABLE "public"."t_order" ADD CONSTRAINT "order_pkey" PRIMARY KEY ("id");
