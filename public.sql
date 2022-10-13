/*
 Navicat Premium Data Transfer

 Source Server         : localhost_5432
 Source Server Type    : PostgreSQL
 Source Server Version : 120012
 Source Host           : localhost:5432
 Source Catalog        : blog_db
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120012
 File Encoding         : 65001

 Date: 13/10/2022 08:46:19
*/


-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_summernote_attachment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_summernote_attachment_id_seq";
CREATE SEQUENCE "public"."django_summernote_attachment_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for posts_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."posts_post_id_seq";
CREATE SEQUENCE "public"."posts_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for posts_post_tags_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."posts_post_tags_id_seq";
CREATE SEQUENCE "public"."posts_post_tags_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for posts_tag_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."posts_tag_id_seq";
CREATE SEQUENCE "public"."posts_tag_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for token_blacklist_blacklistedtoken_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."token_blacklist_blacklistedtoken_id_seq";
CREATE SEQUENCE "public"."token_blacklist_blacklistedtoken_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for token_blacklist_outstandingtoken_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."token_blacklist_outstandingtoken_id_seq";
CREATE SEQUENCE "public"."token_blacklist_outstandingtoken_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_user_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_user_groups_id_seq";
CREATE SEQUENCE "public"."users_user_groups_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_user_id_seq";
CREATE SEQUENCE "public"."users_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_user_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."users_user_user_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_id_seq'::regclass),
  "name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
  "id" int8 NOT NULL DEFAULT nextval('auth_group_permissions_id_seq'::regclass),
  "group_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
  "id" int4 NOT NULL DEFAULT nextval('auth_permission_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4 NOT NULL,
  "codename" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO "public"."auth_permission" VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO "public"."auth_permission" VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO "public"."auth_permission" VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO "public"."auth_permission" VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO "public"."auth_permission" VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO "public"."auth_permission" VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO "public"."auth_permission" VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO "public"."auth_permission" VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO "public"."auth_permission" VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO "public"."auth_permission" VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO "public"."auth_permission" VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO "public"."auth_permission" VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO "public"."auth_permission" VALUES (21, 'Can add attachment', 6, 'add_attachment');
INSERT INTO "public"."auth_permission" VALUES (22, 'Can change attachment', 6, 'change_attachment');
INSERT INTO "public"."auth_permission" VALUES (23, 'Can delete attachment', 6, 'delete_attachment');
INSERT INTO "public"."auth_permission" VALUES (24, 'Can view attachment', 6, 'view_attachment');
INSERT INTO "public"."auth_permission" VALUES (25, 'Can add blacklisted token', 7, 'add_blacklistedtoken');
INSERT INTO "public"."auth_permission" VALUES (26, 'Can change blacklisted token', 7, 'change_blacklistedtoken');
INSERT INTO "public"."auth_permission" VALUES (27, 'Can delete blacklisted token', 7, 'delete_blacklistedtoken');
INSERT INTO "public"."auth_permission" VALUES (28, 'Can view blacklisted token', 7, 'view_blacklistedtoken');
INSERT INTO "public"."auth_permission" VALUES (29, 'Can add outstanding token', 8, 'add_outstandingtoken');
INSERT INTO "public"."auth_permission" VALUES (30, 'Can change outstanding token', 8, 'change_outstandingtoken');
INSERT INTO "public"."auth_permission" VALUES (31, 'Can delete outstanding token', 8, 'delete_outstandingtoken');
INSERT INTO "public"."auth_permission" VALUES (32, 'Can view outstanding token', 8, 'view_outstandingtoken');
INSERT INTO "public"."auth_permission" VALUES (33, 'Can add user', 9, 'add_user');
INSERT INTO "public"."auth_permission" VALUES (34, 'Can change user', 9, 'change_user');
INSERT INTO "public"."auth_permission" VALUES (35, 'Can delete user', 9, 'delete_user');
INSERT INTO "public"."auth_permission" VALUES (36, 'Can view user', 9, 'view_user');
INSERT INTO "public"."auth_permission" VALUES (37, 'Can add post', 10, 'add_post');
INSERT INTO "public"."auth_permission" VALUES (38, 'Can change post', 10, 'change_post');
INSERT INTO "public"."auth_permission" VALUES (39, 'Can delete post', 10, 'delete_post');
INSERT INTO "public"."auth_permission" VALUES (40, 'Can view post', 10, 'view_post');
INSERT INTO "public"."auth_permission" VALUES (41, 'Can add tag', 11, 'add_tag');
INSERT INTO "public"."auth_permission" VALUES (42, 'Can change tag', 11, 'change_tag');
INSERT INTO "public"."auth_permission" VALUES (43, 'Can delete tag', 11, 'delete_tag');
INSERT INTO "public"."auth_permission" VALUES (44, 'Can view tag', 11, 'view_tag');
INSERT INTO "public"."auth_permission" VALUES (45, 'Can add comment', 12, 'add_comment');
INSERT INTO "public"."auth_permission" VALUES (46, 'Can change comment', 12, 'change_comment');
INSERT INTO "public"."auth_permission" VALUES (47, 'Can delete comment', 12, 'delete_comment');
INSERT INTO "public"."auth_permission" VALUES (48, 'Can view comment', 12, 'view_comment');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
  "id" int4 NOT NULL DEFAULT nextval('django_admin_log_id_seq'::regclass),
  "action_time" timestamptz(6) NOT NULL,
  "object_id" text COLLATE "pg_catalog"."default",
  "object_repr" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "action_flag" int2 NOT NULL,
  "change_message" text COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4,
  "user_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO "public"."django_admin_log" VALUES (1, '2022-10-10 13:21:44-04', '1', '1', 1, '123', 1, 1);
INSERT INTO "public"."django_admin_log" VALUES (2, '2022-10-10 20:16:02.55022-04', '2', '2. save', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "public"."django_admin_log" VALUES (3, '2022-10-10 20:16:17.940128-04', '1', '1. ssstest - Rachel Peters - darkbear0112@gmail.com', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (4, '2022-10-10 20:17:19.994101-04', '3', '3. test', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "public"."django_admin_log" VALUES (5, '2022-10-10 20:17:21.99559-04', '2', '2. blockchain - Rachel Peters - darkbear0112@gmail.com', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (6, '2022-10-10 20:18:01.683188-04', '3', '3. betting - Rachel Peters - darkbear0112@gmail.com', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (7, '2022-10-10 20:19:31.493243-04', '2', 'simba - ', 1, '[{"added": {}}]', 9, 1);
INSERT INTO "public"."django_admin_log" VALUES (8, '2022-10-10 20:20:12.411981-04', '2', 'simba - simba@gmail.com', 2, '[{"changed": {"fields": ["Email", "Avatar", "Is verified", "Is staff", "First name", "Last name", "Title"]}}]', 9, 1);
INSERT INTO "public"."django_admin_log" VALUES (9, '2022-10-10 20:25:50.532046-04', '1', '1. ssstest - Rachel Peters - darkbear0112@gmail.com', 3, '', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (10, '2022-10-10 20:25:50.534048-04', '3', '3. betting - Rachel Peters - darkbear0112@gmail.com', 3, '', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (11, '2022-10-10 22:48:30.924907-04', '4', '4. car', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "public"."django_admin_log" VALUES (12, '2022-10-10 22:48:35.47792-04', '4', '4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (13, '2022-10-10 22:50:26.249265-04', '2', '2. save', 3, '', 11, 1);
INSERT INTO "public"."django_admin_log" VALUES (14, '2022-10-10 22:50:26.251288-04', '3', '3. test', 3, '', 11, 1);
INSERT INTO "public"."django_admin_log" VALUES (15, '2022-10-10 22:51:06.803211-04', '18', 'Blacklisted token for Rachel Peters - darkbear0112@gmail.com', 1, '[{"added": {}}]', 7, 1);
INSERT INTO "public"."django_admin_log" VALUES (16, '2022-10-10 22:54:46.645439-04', '4', '4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com', 2, '[{"changed": {"fields": ["Thumbnail"]}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (17, '2022-10-10 22:54:51.724477-04', '4', '4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com', 2, '[]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (18, '2022-10-10 22:55:00.787927-04', '4', '4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com', 2, '[]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (19, '2022-10-10 23:08:17.435488-04', '4', '4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com', 2, '[{"changed": {"fields": ["Thumbnail"]}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (20, '2022-10-10 23:08:22.325443-04', '4', '4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com', 2, '[]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (21, '2022-10-10 23:09:57.249175-04', '4', '4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com', 2, '[{"changed": {"fields": ["Thumbnail"]}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (22, '2022-10-10 23:18:54.025357-04', '4', '4. Hatchback Car - Rachel Peters - darkbear0112@gmail.com', 2, '[{"changed": {"fields": ["Thumbnail"]}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (23, '2022-10-10 23:21:27.276751-04', '5', '5. Sedan Car - simba - simba@gmail.com', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (24, '2022-10-10 23:24:05.235488-04', '6', '6. Convertible Car - Rachel Peters - darkbear0112@gmail.com', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (25, '2022-10-10 23:28:12.358137-04', '5', '5. truck', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "public"."django_admin_log" VALUES (26, '2022-10-10 23:28:17.662699-04', '7', '7. Pick Up Vehicle Car - Rachel Peters - darkbear0112@gmail.com', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (27, '2022-10-10 23:28:45.522455-04', '6', '6. Bus', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "public"."django_admin_log" VALUES (28, '2022-10-10 23:28:49.708357-04', '8', '8. Van Car - Rachel Peters - darkbear0112@gmail.com', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (29, '2022-10-10 23:29:33.427586-04', '9', '9. SUV Car - simba - simba@gmail.com', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (30, '2022-10-10 23:30:12.826144-04', '10', '10. Coupe Car - Rachel Peters - darkbear0112@gmail.com', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (31, '2022-10-12 06:22:24.748902-04', '10', '10. Coupe Car - darkbear0112@gmail.com - darkbear0112@gmail.com', 2, '[{"changed": {"fields": ["Description", "Rental start", "Rental end"]}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (32, '2022-10-13 05:36:23.806588-04', '7', '7. Pick Up Vehicle Car - Rachel Peters - darkbear0112@gmail.com', 2, '[{"changed": {"fields": ["Available"]}}]', 10, 1);
INSERT INTO "public"."django_admin_log" VALUES (33, '2022-10-13 07:38:21.446416-04', '3', 'Egor - egormikhail0112@gmail.com', 2, '[]', 9, 1);
INSERT INTO "public"."django_admin_log" VALUES (34, '2022-10-13 07:38:21.477385-04', '3', 'Egor - egormikhail0112@gmail.com', 2, '[]', 9, 1);
INSERT INTO "public"."django_admin_log" VALUES (35, '2022-10-13 07:38:45.607285-04', '3', 'Egor - egormikhail0112@gmail.com', 2, '[{"changed": {"fields": ["Is verified"]}}]', 9, 1);
INSERT INTO "public"."django_admin_log" VALUES (36, '2022-10-13 07:38:47.999203-04', '3', 'Egor - egormikhail0112@gmail.com', 2, '[]', 9, 1);
INSERT INTO "public"."django_admin_log" VALUES (37, '2022-10-13 07:38:57.806883-04', '3', 'Egor - egormikhail0112@gmail.com', 2, '[{"changed": {"fields": ["Is verified"]}}]', 9, 1);
INSERT INTO "public"."django_admin_log" VALUES (38, '2022-10-13 08:06:39.77688-04', '10', '10. Coupe Car - Rachel Peters - darkbear0112@gmail.com', 2, '[{"changed": {"fields": ["Available"]}}]', 10, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
  "id" int4 NOT NULL DEFAULT nextval('django_content_type_id_seq'::regclass),
  "app_label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "model" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES (1, 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES (2, 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES (3, 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES (5, 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES (6, 'django_summernote', 'attachment');
INSERT INTO "public"."django_content_type" VALUES (7, 'token_blacklist', 'blacklistedtoken');
INSERT INTO "public"."django_content_type" VALUES (8, 'token_blacklist', 'outstandingtoken');
INSERT INTO "public"."django_content_type" VALUES (9, 'users', 'user');
INSERT INTO "public"."django_content_type" VALUES (10, 'posts', 'post');
INSERT INTO "public"."django_content_type" VALUES (11, 'posts', 'tag');
INSERT INTO "public"."django_content_type" VALUES (12, 'comments', 'comment');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
  "id" int8 NOT NULL DEFAULT nextval('django_migrations_id_seq'::regclass),
  "app" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "applied" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "public"."django_migrations" VALUES (1, 'contenttypes', '0001_initial', '2022-10-10 07:40:55.20017-04');
INSERT INTO "public"."django_migrations" VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2022-10-10 07:40:55.331074-04');
INSERT INTO "public"."django_migrations" VALUES (3, 'auth', '0001_initial', '2022-10-10 07:40:55.729147-04');
INSERT INTO "public"."django_migrations" VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2022-10-10 07:40:55.750489-04');
INSERT INTO "public"."django_migrations" VALUES (5, 'auth', '0003_alter_user_email_max_length', '2022-10-10 07:40:55.768469-04');
INSERT INTO "public"."django_migrations" VALUES (6, 'auth', '0004_alter_user_username_opts', '2022-10-10 07:40:55.782462-04');
INSERT INTO "public"."django_migrations" VALUES (7, 'auth', '0005_alter_user_last_login_null', '2022-10-10 07:40:55.793417-04');
INSERT INTO "public"."django_migrations" VALUES (8, 'auth', '0006_require_contenttypes_0002', '2022-10-10 07:40:55.796415-04');
INSERT INTO "public"."django_migrations" VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2022-10-10 07:40:55.804467-04');
INSERT INTO "public"."django_migrations" VALUES (10, 'auth', '0008_alter_user_username_max_length', '2022-10-10 07:40:55.811462-04');
INSERT INTO "public"."django_migrations" VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2022-10-10 07:40:55.818458-04');
INSERT INTO "public"."django_migrations" VALUES (12, 'auth', '0010_alter_group_name_max_length', '2022-10-10 07:40:55.872329-04');
INSERT INTO "public"."django_migrations" VALUES (13, 'auth', '0011_update_proxy_permissions', '2022-10-10 07:40:55.881346-04');
INSERT INTO "public"."django_migrations" VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2022-10-10 07:40:55.898843-04');
INSERT INTO "public"."django_migrations" VALUES (15, 'users', '0001_initial', '2022-10-10 07:40:56.165631-04');
INSERT INTO "public"."django_migrations" VALUES (16, 'admin', '0001_initial', '2022-10-10 07:40:56.275417-04');
INSERT INTO "public"."django_migrations" VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2022-10-10 07:40:56.301777-04');
INSERT INTO "public"."django_migrations" VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-10 07:40:56.317134-04');
INSERT INTO "public"."django_migrations" VALUES (19, 'posts', '0001_initial', '2022-10-10 07:40:56.510133-04');
INSERT INTO "public"."django_migrations" VALUES (20, 'comments', '0001_initial', '2022-10-10 07:40:56.552416-04');
INSERT INTO "public"."django_migrations" VALUES (21, 'comments', '0002_initial', '2022-10-10 07:40:56.627416-04');
INSERT INTO "public"."django_migrations" VALUES (22, 'django_summernote', '0001_initial', '2022-10-10 07:40:56.665428-04');
INSERT INTO "public"."django_migrations" VALUES (23, 'django_summernote', '0002_update-help_text', '2022-10-10 07:40:56.685627-04');
INSERT INTO "public"."django_migrations" VALUES (24, 'posts', '0002_initial', '2022-10-10 07:40:56.866758-04');
INSERT INTO "public"."django_migrations" VALUES (25, 'sessions', '0001_initial', '2022-10-10 07:40:56.968834-04');
INSERT INTO "public"."django_migrations" VALUES (26, 'token_blacklist', '0001_initial', '2022-10-10 07:40:57.266511-04');
INSERT INTO "public"."django_migrations" VALUES (27, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2022-10-10 07:40:57.30346-04');
INSERT INTO "public"."django_migrations" VALUES (28, 'token_blacklist', '0003_auto_20171017_2007', '2022-10-10 07:40:57.330459-04');
INSERT INTO "public"."django_migrations" VALUES (29, 'token_blacklist', '0004_auto_20171017_2013', '2022-10-10 07:40:57.385879-04');
INSERT INTO "public"."django_migrations" VALUES (30, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2022-10-10 07:40:57.421213-04');
INSERT INTO "public"."django_migrations" VALUES (31, 'token_blacklist', '0006_auto_20171017_2113', '2022-10-10 07:40:57.447179-04');
INSERT INTO "public"."django_migrations" VALUES (32, 'token_blacklist', '0007_auto_20171017_2214', '2022-10-10 07:40:57.634728-04');
INSERT INTO "public"."django_migrations" VALUES (33, 'token_blacklist', '0008_migrate_to_bigautofield', '2022-10-10 07:40:57.839136-04');
INSERT INTO "public"."django_migrations" VALUES (34, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2022-10-10 07:40:57.875376-04');
INSERT INTO "public"."django_migrations" VALUES (35, 'token_blacklist', '0011_linearizes_history', '2022-10-10 07:40:57.87836-04');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_session";
CREATE TABLE "public"."django_session" (
  "session_key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "session_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "expire_date" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('86yvptw5rrf3q0obca7fpz5uscxi2mbv', '.eJxVj8uOwyAMRf-FdYUwDwNdzr7fgHg4TTpNqApdVfPvQ9QsZnaW7_Gx7puF-OpzeDV6hqWwMwN2-rtLMX_TtgflFrdr5blu_bkkviP8SBu_1EL3r4P9J5hjm8e1VxEholCa0NucdJQyO2GnLK33zilSSRUUacISHQxwMsVNAxYGtLBDOj5Qp4-V1rjcQ6OtszMgGqOsAcHBoEY4sVzXdWThUVun8kEQhLeSO23A427rQ9FCnkctOhAEJQ3XGsf08wvcHFgS:1oiwbF:8ZbXEvrQODXtzA_MW1Iy8LeH_GgqUtahViSjD5OLmLw', '2022-10-27 07:42:05.447676-04');
INSERT INTO "public"."django_session" VALUES ('ixhzlgymbdpacwqc16d0mqu7zef2rg6v', 'eyJkZXRhaWxzX2NoYW5nZSI6MTY2NTU3MjI4OC4xMDM2NTZ9:1oiZRA:d_7-NSH2waGt3j4uN_8NsJFFMPkoQE2nXdo-F8ovtPY', '2022-10-26 06:58:08.103656-04');

-- ----------------------------
-- Table structure for django_summernote_attachment
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_summernote_attachment";
CREATE TABLE "public"."django_summernote_attachment" (
  "id" int4 NOT NULL DEFAULT nextval('django_summernote_attachment_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "file" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "uploaded" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for posts_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."posts_post";
CREATE TABLE "public"."posts_post" (
  "id" int8 NOT NULL DEFAULT nextval('posts_post_id_seq'::regclass),
  "title" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "slug" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "thumbnail" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "read_time" int4,
  "created_at" timestamptz(6) NOT NULL,
  "edited_at" timestamptz(6) NOT NULL,
  "is_public" bool NOT NULL,
  "author_id" int8 NOT NULL,
  "rental_start" timestamptz(6),
  "rental_end" timestamptz(6),
  "available" bool NOT NULL,
  "price" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of posts_post
-- ----------------------------
INSERT INTO "public"."posts_post" VALUES (4, 'Hatchback Car', 'hatchback-car', 'thumbnails/Cars-1-1024x539_4.webp', '<p><span style="background-color: rgb(255, 255, 0);">This is Hatchback Car</span></p><p><span style="background-color: rgb(247, 247, 247); font-family: &quot;Arial Black&quot;;">Great Car</span></p>', NULL, '2022-10-10 22:48:35.450936-04', '2022-10-10 23:18:54.023358-04', 't', 1, NULL, NULL, 't', 40);
INSERT INTO "public"."posts_post" VALUES (2, 'blockchain', 'blockchain', 'thumbnails/fe0e04.jpg', '<p>sssssssss</p>', NULL, '2022-10-10 20:17:21.985903-04', '2022-10-10 20:17:21.985903-04', 'f', 1, NULL, NULL, 't', 40);
INSERT INTO "public"."posts_post" VALUES (5, 'Sedan Car', 'sedan-car', 'thumbnails/Cars-1-1024x539_5.webp', '<p>Good Car</p>', NULL, '2022-10-10 23:21:27.273753-04', '2022-10-10 23:21:27.273753-04', 't', 2, NULL, NULL, 't', 20);
INSERT INTO "public"."posts_post" VALUES (6, 'Convertible Car', 'convertible-car', 'thumbnails/Cars-1-1024x539_6.webp', '<p>Nice car</p>', 2012, '2022-10-10 23:24:05.232491-04', '2022-10-13 05:14:05.022022-04', 't', 1, '2022-10-13 05:13:59.322-04', '2022-10-13 05:30:00.322-04', 't', 44);
INSERT INTO "public"."posts_post" VALUES (7, 'Pick Up Vehicle Car', 'pick-vehicle-car', 'thumbnails/Cars-1-1024x539_10.webp', '<p>Good truck</p>', NULL, '2022-10-10 23:28:17.659696-04', '2022-10-13 05:36:23.804603-04', 't', 1, '2022-10-13 03:19:17-04', '2022-10-13 03:19:17-04', 'f', 11);
INSERT INTO "public"."posts_post" VALUES (9, 'SUV Car', 'suv-car', 'thumbnails/Cars-1-1024x539_8.webp', '<p>Success</p>', NULL, '2022-10-10 23:29:33.423589-04', '2022-10-13 07:33:02.981042-04', 't', 2, '2022-10-13 07:31:47.401-04', '2022-10-27 08:00:00-04', 'f', 12);
INSERT INTO "public"."posts_post" VALUES (8, 'van-car', 'van-car', 'thumbnails/Cars-1-1024x539_9.webp', '<p>Small Bus</p>', 211, '2022-10-10 23:28:49.704346-04', '2022-10-13 08:06:00.311682-04', 't', 1, '2022-10-13 08:05:50.108-04', '2022-10-28 08:30:00-04', 'f', 3);
INSERT INTO "public"."posts_post" VALUES (10, 'Coupe Car', 'coupe-car', 'thumbnails/Cars-1-1024x539_7.webp', '<p>Wonderful!s</p>', NULL, '2022-10-10 23:30:12.822146-04', '2022-10-13 08:06:39.773882-04', 't', 1, '2022-10-13 06:02:00-04', '2022-10-21 06:00:00-04', 't', 10);

-- ----------------------------
-- Table structure for posts_post_tags
-- ----------------------------
DROP TABLE IF EXISTS "public"."posts_post_tags";
CREATE TABLE "public"."posts_post_tags" (
  "id" int8 NOT NULL DEFAULT nextval('posts_post_tags_id_seq'::regclass),
  "post_id" int8 NOT NULL,
  "tag_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of posts_post_tags
-- ----------------------------
INSERT INTO "public"."posts_post_tags" VALUES (5, 4, 4);
INSERT INTO "public"."posts_post_tags" VALUES (6, 5, 4);
INSERT INTO "public"."posts_post_tags" VALUES (7, 6, 4);
INSERT INTO "public"."posts_post_tags" VALUES (8, 7, 5);
INSERT INTO "public"."posts_post_tags" VALUES (9, 8, 6);
INSERT INTO "public"."posts_post_tags" VALUES (10, 9, 4);
INSERT INTO "public"."posts_post_tags" VALUES (11, 10, 4);

-- ----------------------------
-- Table structure for posts_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."posts_tag";
CREATE TABLE "public"."posts_tag" (
  "id" int8 NOT NULL DEFAULT nextval('posts_tag_id_seq'::regclass),
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of posts_tag
-- ----------------------------
INSERT INTO "public"."posts_tag" VALUES (4, 'car');
INSERT INTO "public"."posts_tag" VALUES (5, 'truck');
INSERT INTO "public"."posts_tag" VALUES (6, 'Bus');

-- ----------------------------
-- Table structure for token_blacklist_blacklistedtoken
-- ----------------------------
DROP TABLE IF EXISTS "public"."token_blacklist_blacklistedtoken";
CREATE TABLE "public"."token_blacklist_blacklistedtoken" (
  "id" int8 NOT NULL DEFAULT nextval('token_blacklist_blacklistedtoken_id_seq'::regclass),
  "blacklisted_at" timestamptz(6) NOT NULL,
  "token_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of token_blacklist_blacklistedtoken
-- ----------------------------
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (1, '2022-10-10 09:06:00.082911-04', 1);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (2, '2022-10-10 09:37:47.825382-04', 2);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (3, '2022-10-10 09:38:07.618588-04', 3);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (4, '2022-10-10 13:11:20.671134-04', 4);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (5, '2022-10-10 13:22:53.216317-04', 5);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (6, '2022-10-10 13:28:35.080324-04', 6);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (7, '2022-10-10 13:28:37.414943-04', 7);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (8, '2022-10-10 13:30:23.253836-04', 8);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (9, '2022-10-10 13:38:05.198839-04', 9);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (10, '2022-10-10 13:38:25.507719-04', 10);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (11, '2022-10-10 20:02:49.220889-04', 11);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (12, '2022-10-10 20:18:15.81458-04', 12);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (13, '2022-10-10 20:24:34.887951-04', 13);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (14, '2022-10-10 20:24:39.833912-04', 14);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (15, '2022-10-10 20:34:55.394728-04', 15);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (16, '2022-10-10 20:38:53.076636-04', 16);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (17, '2022-10-10 20:57:45.258932-04', 17);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (18, '2022-10-10 22:51:06.801226-04', 18);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (19, '2022-10-10 22:59:13.077324-04', 19);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (20, '2022-10-10 22:59:37.811263-04', 20);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (21, '2022-10-11 14:34:21.974797-04', 21);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (22, '2022-10-11 14:42:19.287084-04', 22);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (23, '2022-10-11 15:06:33.602338-04', 23);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (24, '2022-10-11 16:40:54.748921-04', 24);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (25, '2022-10-11 16:45:59.178833-04', 25);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (26, '2022-10-11 17:08:28.782265-04', 26);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (27, '2022-10-11 17:20:48.297621-04', 27);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (28, '2022-10-11 17:29:22.975236-04', 28);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (29, '2022-10-11 17:29:33.260646-04', 29);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (30, '2022-10-11 17:37:07.125748-04', 30);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (31, '2022-10-11 17:50:58.122031-04', 31);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (32, '2022-10-11 17:51:59.95062-04', 32);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (33, '2022-10-11 19:12:19.342798-04', 33);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (34, '2022-10-11 19:12:22.004293-04', 34);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (35, '2022-10-11 20:24:56.520035-04', 35);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (36, '2022-10-11 20:38:17.778888-04', 36);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (37, '2022-10-11 20:43:38.268423-04', 37);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (38, '2022-10-11 20:48:42.588632-04', 38);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (39, '2022-10-11 20:59:30.48402-04', 39);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (40, '2022-10-11 21:04:53.449591-04', 40);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (41, '2022-10-11 21:11:32.769852-04', 41);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (42, '2022-10-11 21:17:00.116737-04', 42);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (43, '2022-10-11 21:22:29.722836-04', 43);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (44, '2022-10-11 21:28:46.185593-04', 44);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (45, '2022-10-12 02:24:08.030317-04', 45);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (46, '2022-10-12 02:30:26.634535-04', 46);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (47, '2022-10-12 02:35:55.777286-04', 47);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (48, '2022-10-12 02:45:21.928418-04', 48);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (49, '2022-10-12 02:57:21.624128-04', 49);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (50, '2022-10-12 02:57:21.675098-04', 50);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (51, '2022-10-12 02:57:58.984396-04', 51);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (52, '2022-10-12 03:20:11.546514-04', 52);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (53, '2022-10-12 03:26:45.738152-04', 53);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (86, '2022-10-12 03:36:32.574199-04', 86);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (87, '2022-10-12 04:12:10.265006-04', 87);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (88, '2022-10-12 04:12:12.526983-04', 88);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (89, '2022-10-12 04:54:54.763227-04', 89);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (90, '2022-10-12 05:13:30.020743-04', 90);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (91, '2022-10-12 05:49:41.301033-04', 91);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (92, '2022-10-12 05:49:42.466829-04', 92);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (93, '2022-10-12 05:58:57.464908-04', 94);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (94, '2022-10-12 06:01:37.661078-04', 95);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (95, '2022-10-12 06:15:29.061684-04', 96);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (96, '2022-10-12 06:26:14.365793-04', 97);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (97, '2022-10-12 06:31:19.264956-04', 98);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (98, '2022-10-12 06:37:19.00058-04', 99);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (99, '2022-10-12 06:54:32.296818-04', 100);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (100, '2022-10-12 17:31:29.291122-04', 101);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (101, '2022-10-12 17:36:41.541043-04', 102);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (102, '2022-10-12 17:42:49.447717-04', 103);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (103, '2022-10-12 17:51:35.448691-04', 104);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (104, '2022-10-12 17:51:47.45455-04', 105);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (105, '2022-10-12 18:52:11.334964-04', 106);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (106, '2022-10-12 18:52:18.856496-04', 107);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (107, '2022-10-12 18:52:38.045575-04', 108);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (108, '2022-10-12 19:04:01.647311-04', 109);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (109, '2022-10-12 19:56:08.277757-04', 110);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (110, '2022-10-12 20:02:09.421177-04', 111);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (111, '2022-10-12 20:12:31.718954-04', 112);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (112, '2022-10-12 20:17:31.297683-04', 113);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (113, '2022-10-12 20:29:58.935906-04', 114);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (114, '2022-10-12 20:35:01.625653-04', 115);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (115, '2022-10-12 20:52:02.352519-04', 116);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (116, '2022-10-12 21:01:17.366743-04', 117);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (117, '2022-10-12 21:16:28.926733-04', 118);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (118, '2022-10-12 21:22:56.530703-04', 119);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (119, '2022-10-12 21:28:03.469968-04', 120);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (120, '2022-10-12 21:33:03.197258-04', 121);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (121, '2022-10-12 21:43:23.847874-04', 122);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (122, '2022-10-12 21:49:35.646302-04', 123);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (123, '2022-10-12 22:00:30.787795-04', 124);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (124, '2022-10-12 22:05:50.000355-04', 125);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (125, '2022-10-12 22:11:38.803366-04', 126);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (126, '2022-10-12 22:32:34.121389-04', 127);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (127, '2022-10-12 22:36:25.005205-04', 128);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (128, '2022-10-12 22:42:24.348551-04', 129);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (129, '2022-10-12 22:47:34.832767-04', 130);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (130, '2022-10-12 22:53:17.246734-04', 131);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (131, '2022-10-12 22:58:35.37941-04', 132);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (132, '2022-10-12 23:05:35.175354-04', 133);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (133, '2022-10-12 23:12:00.21325-04', 134);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (134, '2022-10-12 23:18:38.91064-04', 135);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (135, '2022-10-12 23:33:32.669451-04', 136);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (136, '2022-10-12 23:49:51.295153-04', 137);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (137, '2022-10-12 23:54:52.215576-04', 138);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (138, '2022-10-13 00:01:41.065357-04', 139);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (139, '2022-10-13 00:06:56.061721-04', 140);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (140, '2022-10-13 00:22:04.778383-04', 141);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (141, '2022-10-13 00:27:51.524107-04', 142);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (142, '2022-10-13 00:32:58.116402-04', 143);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (143, '2022-10-13 00:37:58.485424-04', 144);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (144, '2022-10-13 01:19:29.047525-04', 145);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (145, '2022-10-13 01:19:29.166457-04', 146);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (146, '2022-10-13 01:25:06.359464-04', 147);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (147, '2022-10-13 01:37:33.855658-04', 148);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (148, '2022-10-13 01:43:42.31172-04', 149);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (149, '2022-10-13 01:49:18.2076-04', 150);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (150, '2022-10-13 01:55:10.709932-04', 151);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (151, '2022-10-13 02:02:24.986414-04', 152);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (152, '2022-10-13 02:07:24.056823-04', 153);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (153, '2022-10-13 02:13:04.502951-04', 154);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (154, '2022-10-13 02:18:05.264767-04', 155);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (155, '2022-10-13 02:25:15.281909-04', 156);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (156, '2022-10-13 02:30:19.837391-04', 157);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (157, '2022-10-13 02:44:37.842468-04', 158);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (158, '2022-10-13 02:44:45.241383-04', 159);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (159, '2022-10-13 02:52:17.254948-04', 160);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (160, '2022-10-13 02:58:46.369329-04', 161);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (161, '2022-10-13 03:04:44.209145-04', 162);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (162, '2022-10-13 03:10:26.076364-04', 164);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (163, '2022-10-13 03:16:15.568379-04', 166);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (164, '2022-10-13 03:27:14.429807-04', 167);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (165, '2022-10-13 03:37:03.177725-04', 168);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (166, '2022-10-13 03:42:15.813641-04', 169);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (167, '2022-10-13 03:47:48.604149-04', 170);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (168, '2022-10-13 03:52:52.140676-04', 171);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (169, '2022-10-13 03:58:00.616716-04', 172);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (170, '2022-10-13 04:05:07.308287-04', 173);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (171, '2022-10-13 04:10:26.351402-04', 174);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (172, '2022-10-13 04:24:56.44564-04', 175);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (173, '2022-10-13 04:32:24.956532-04', 176);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (174, '2022-10-13 04:40:23.650395-04', 177);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (175, '2022-10-13 04:46:01.707043-04', 178);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (176, '2022-10-13 04:56:08.9636-04', 179);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (177, '2022-10-13 05:01:34.941268-04', 180);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (178, '2022-10-13 05:13:38.015446-04', 181);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (179, '2022-10-13 05:20:33.869489-04', 182);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (180, '2022-10-13 05:30:40.493134-04', 183);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (181, '2022-10-13 05:41:11.075629-04', 184);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (182, '2022-10-13 05:46:22.667789-04', 185);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (183, '2022-10-13 05:52:20.164875-04', 186);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (184, '2022-10-13 05:52:21.614461-04', 187);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (185, '2022-10-13 05:57:47.522667-04', 188);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (186, '2022-10-13 06:03:22.785386-04', 189);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (187, '2022-10-13 07:31:42.673477-04', 190);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (188, '2022-10-13 07:35:14.37165-04', 191);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (189, '2022-10-13 07:54:08.689265-04', 192);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (190, '2022-10-13 08:05:48.761074-04', 193);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (191, '2022-10-13 08:12:48.160025-04', 194);
INSERT INTO "public"."token_blacklist_blacklistedtoken" VALUES (192, '2022-10-13 08:27:34.287871-04', 195);

-- ----------------------------
-- Table structure for token_blacklist_outstandingtoken
-- ----------------------------
DROP TABLE IF EXISTS "public"."token_blacklist_outstandingtoken";
CREATE TABLE "public"."token_blacklist_outstandingtoken" (
  "id" int8 NOT NULL DEFAULT nextval('token_blacklist_outstandingtoken_id_seq'::regclass),
  "token" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6),
  "expires_at" timestamptz(6) NOT NULL,
  "user_id" int8,
  "jti" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of token_blacklist_outstandingtoken
-- ----------------------------
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAwOTQ1NywianRpIjoiZTgzYjUwNTdkMTY0NDQwMWJiYTJjMDQ4MzUyZGMyOTMiLCJ1c2VyX2lkIjoxfQ.PMGqa0V_V11BbuRdzvv7PJy6syy69mueOE4iQ3ZgpP4', '2022-10-10 08:24:17.214329-04', '2022-10-17 08:24:17-04', 1, 'e83b5057d1644401bba2c048352dc293');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (2, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAxMTk2MCwianRpIjoiZGRlYjg3MWJlY2EzNDRlNzhjOTg2OGVlMTdlNGZjNjQiLCJ1c2VyX2lkIjoxfQ.Y_QrlQ3w6fSHI8gQ9PlqshIrtbnH3RvmzxT0k7Q1kSY', NULL, '2022-10-17 09:06:00-04', NULL, 'ddeb871beca344e78c9868ee17e4fc64');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (3, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAxMzg2NywianRpIjoiY2I3M2NjZjVhMWNjNGI0YmJkMzMxNjI4OTVkOTc2YjIiLCJ1c2VyX2lkIjoxfQ.gDtPZBWVHSO9c2p3ZmTZqhRmXflp8mg9h4uOi6z5pjw', NULL, '2022-10-17 09:37:47-04', NULL, 'cb73ccf5a1cc4b4bbd33162895d976b2');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAxMzkwNiwianRpIjoiZTE3NTc0NjE3M2E3NDViZTg2NjRiODU1MDZkZDE0ZGEiLCJ1c2VyX2lkIjoxfQ.JVPgul85m-8di9c7ZlQs4oqYl0NW23BH3XS8crkHK48', '2022-10-10 09:38:26.833289-04', '2022-10-17 09:38:26-04', 1, 'e175746173a745be8664b85506dd14da');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (5, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAyNjY4MCwianRpIjoiYTg3OTMwOTMwMjU4NDNiN2I4MDlhYzU0NjVhMjM5N2EiLCJ1c2VyX2lkIjoxfQ.t8r4eJwck426G5BjS987Vv5PMFxRpgN4Rsxm9r7maxs', NULL, '2022-10-17 13:11:20-04', NULL, 'a8793093025843b7b809ac5465a2397a');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAyNzM3MywianRpIjoiMmFjMjE1MmRhM2RjNGFkNzliYjM5YzEwMzU4ZGQ4ZjkiLCJ1c2VyX2lkIjoxfQ.gt_J9MRLUgVWYD941xlKMVyadmvhc6OZr5-cwvWZpFw', NULL, '2022-10-17 13:22:53-04', NULL, '2ac2152da3dc4ad79bb39c10358dd8f9');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (7, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAyNzcxNSwianRpIjoiM2VhMGVmMGM2YWZjNDYxMGE2NWMxOGVlMzA3ZDJhMzIiLCJ1c2VyX2lkIjoxfQ.Jzt6LLJaiSREXIkEi1yFJ1jCHq44I3L09pHPktH4KqA', NULL, '2022-10-17 13:28:35-04', NULL, '3ea0ef0c6afc4610a65c18ee307d2a32');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (8, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAyNzczNSwianRpIjoiNmY2MGE1ZGZlMzU4NGE5Yzg1N2I2YWZjMjU4NGNmY2QiLCJ1c2VyX2lkIjoxfQ.VMj6LcO6RGiemrTF3xEK6vovw_zf7HYXWzN1EPWCZZ0', '2022-10-10 13:28:55.508837-04', '2022-10-17 13:28:55-04', 1, '6f60a5dfe3584a9c857b6afc2584cfcd');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (9, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAyNzg3MywianRpIjoiYmQzNjhhZWIxMDEwNGM5Yjg4ZjA2MzYyMjI5YmJmZWUiLCJ1c2VyX2lkIjoxfQ.iywofKXn3TD2q51S7BBjqp3i3SLaCN3IhSFjBfdVY4I', '2022-10-10 13:31:13.152506-04', '2022-10-17 13:31:13-04', 1, 'bd368aeb10104c9b88f06362229bbfee');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (10, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAyODI4NSwianRpIjoiZTk4ZDAzOTY1YjcyNDM3ZGE1Yzc1NGM3YTM1YTgwZTIiLCJ1c2VyX2lkIjoxfQ.QzMybztutr_WyJUzLXYoivV52AnvqaO01kFQWM_rrhY', NULL, '2022-10-17 13:38:05-04', NULL, 'e98d03965b72437da5c754c7a35a80e2');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (11, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjAzMjE5MCwianRpIjoiYTYzZjMxZWVkZWQwNDIxMzlmNjU1OTA3YzViMjIyOTciLCJ1c2VyX2lkIjoxfQ.yiXcceEhjTTTBJuV6APl0KkvMjNLUPkBi84ZHySgZ-c', '2022-10-10 14:43:10.860222-04', '2022-10-17 14:43:10-04', 1, 'a63f31eeded042139f655907c5b22297');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (12, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjA1MTM2OSwianRpIjoiOGMxMzY3MmM0OWYzNDkwNjljMTYzYmIxZWY3OTk0ODIiLCJ1c2VyX2lkIjoxfQ.2M55jZqV3xW-sOc14M8J5O-1fdbH_3MwIubANlalo9w', NULL, '2022-10-17 20:02:49-04', NULL, '8c13672c49f349069c163bb1ef799482');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (13, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjA1MjI5NSwianRpIjoiYTYzOTc0MjMzYzEwNGZmOGFiYTVmYjQ4OTY3MDE4ZWYiLCJ1c2VyX2lkIjoxfQ.i0uPDslpRt4QtPlnhBX6rjt28F1zr77s9x-nefz6mi0', NULL, '2022-10-17 20:18:15-04', NULL, 'a63974233c104ff8aba5fb48967018ef');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (14, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjA1MjY3NCwianRpIjoiYjg4YzEyZDZmNDgwNDFmNGE2YTcwOGUyYTIyN2M0OWUiLCJ1c2VyX2lkIjoxfQ.0oUvSjeIS8g7afLcjR5NGzi40H5Xqzch_Cid6c57nSE', NULL, '2022-10-17 20:24:34-04', NULL, 'b88c12d6f48041f4a6a708e2a227c49e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (15, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjA1MjY4MywianRpIjoiOWM0OTIxOTExNWI4NGM1NGIxZDBkMTI4MGU5ZTg5YzciLCJ1c2VyX2lkIjoxfQ.0Y7SrRZ4KfMSEyfq9M6xMRL0q8avMScP8zi9Kc7zjZk', '2022-10-10 20:24:43.261825-04', '2022-10-17 20:24:43-04', 1, '9c49219115b84c54b1d0d1280e9e89c7');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (16, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjA1MzI5NSwianRpIjoiMWJkOGE3YjIzOTRkNDVmZmJjNmQ4ZmQxMWNhNDRhYTEiLCJ1c2VyX2lkIjoxfQ.d49mfZPASHb1Y1arP8Js5Vkp21n_LWYCkT1iLyycerM', NULL, '2022-10-17 20:34:55-04', NULL, '1bd8a7b2394d45ffbc6d8fd11ca44aa1');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (17, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjA1Mzg1MywianRpIjoiYmY3YjY0NGNjOTdiNDA3ZTk2MDhhYjQxOGJlNDlmNDEiLCJ1c2VyX2lkIjoxfQ.ApyB5Gin1zF_K17zrXhaWz0q8ehINNExkjYRQQxUG9I', '2022-10-10 20:44:13.863982-04', '2022-10-17 20:44:13-04', 1, 'bf7b644cc97b407e9608ab418be49f41');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (18, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjA2MTM1MywianRpIjoiYzg2MzdmZTM0ZDc0NDM5ZGIzMDFmY2VkN2VjNjM5ZTYiLCJ1c2VyX2lkIjoxfQ.GgE1g2bG4h1N2izZPXG9bHdtXyJUuJjp_V6MoouQN2g', '2022-10-10 22:49:13.637559-04', '2022-10-17 22:49:13-04', 1, 'c8637fe34d74439db301fced7ec639e6');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (19, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjA2MTg1MiwianRpIjoiNGIyNGM1YmJkYTZhNGFlNDliMWYwNTU1N2E1MmMyOWYiLCJ1c2VyX2lkIjoyfQ.v4nsYkesMPXoOChMLWGnjKvsJKPPpP9pgimI77ZQHoc', '2022-10-10 22:57:32.731502-04', '2022-10-17 22:57:32-04', 2, '4b24c5bbda6a4ae49b1f05557a52c29f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (20, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjA2MTk2MCwianRpIjoiNDgzMjBjYmI3OTVjNDcxOGI1NDg2MDdjZDc4ZTdlZjAiLCJ1c2VyX2lkIjoxfQ.bLHffCYHwojX-PphotkN3cSsu9CJi-pjJL4rbdHztjY', '2022-10-10 22:59:20.876144-04', '2022-10-17 22:59:20-04', 1, '48320cbb795c4718b548607cd78e7ef0');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (21, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjExNzcwOSwianRpIjoiYThiNzcwMjFkN2JmNDExOWIyOGM5NzkzODA0NjJlNmUiLCJ1c2VyX2lkIjoxfQ.FsHrT7SuKT19SSlxiwc9a06h8lnnN6tSNkdzltAl1EU', '2022-10-11 14:28:29.87669-04', '2022-10-18 14:28:29-04', 1, 'a8b77021d7bf4119b28c979380462e6e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (22, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjExODA2MSwianRpIjoiOWUwZjNiNDM0MTZmNGI0NTlhNWRiNmMwNTY5OTYzMDMiLCJ1c2VyX2lkIjoxfQ.YuOcbgf8gj-rIN1w1UAUF2lreLzGPh3rQ1VoIG1NOPA', NULL, '2022-10-18 14:34:21-04', NULL, '9e0f3b43416f4b459a5db6c056996303');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (23, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjExODUzOSwianRpIjoiZTYzZjlmYWJmZjczNDFhOGE4Mjg5ZGYyZjkyOGZlODQiLCJ1c2VyX2lkIjoxfQ._n_vUQEj4Xmofdr5LDGI5Ydv0TDxL0uwlNlclSl_SVw', NULL, '2022-10-18 14:42:19-04', NULL, 'e63f9fabff7341a8a8289df2f928fe84');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (24, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjExOTk5MywianRpIjoiOTNiMTA3NmYxYWUwNGYzNWFhZTFlMjc3ZDY3NTQ3ZGIiLCJ1c2VyX2lkIjoxfQ.5xwCRAmbNf0kTO_ljP2DSg3bP5w1WSH-hytc6cEpeJ0', NULL, '2022-10-18 15:06:33-04', NULL, '93b1076f1ae04f35aae1e277d67547db');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (25, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEyNTY1NCwianRpIjoiYWM0YjI2ZjBjMGViNDNjZmFjYmY4N2Y0MjhjNmYwM2MiLCJ1c2VyX2lkIjoxfQ.yo6-XV_6mRllLDyuxnEsEeaMRpj7cjbld7Y6flRldmE', NULL, '2022-10-18 16:40:54-04', NULL, 'ac4b26f0c0eb43cfacbf87f428c6f03c');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (26, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEyNTk1OSwianRpIjoiMDA2NDdjYmUyZjQ2NGVjMzlkNmM0MjY4ODZkMTExNDAiLCJ1c2VyX2lkIjoxfQ.kCBYsBoSGqnkxIkiHfy-Ss6fFTZIszBsa6iGyU4-3Kg', NULL, '2022-10-18 16:45:59-04', NULL, '00647cbe2f464ec39d6c426886d11140');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (27, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEyNzMwOCwianRpIjoiZmIyMjQ2MDBjZDc5NGY1NDhkNzg5OTFiZTY4OWViNTQiLCJ1c2VyX2lkIjoxfQ.tExJHyY4hZxb6mvX2ioXlqKnCWeuBlfY9U6qVctRelg', NULL, '2022-10-18 17:08:28-04', NULL, 'fb224600cd794f548d78991be689eb54');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (28, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEyODA0OCwianRpIjoiNDQ2NDljMTViZDkwNDVhNWIzZDg0ZDhiY2UwNmEyMWYiLCJ1c2VyX2lkIjoxfQ.Fl3lfe3ppbeUDaN9uYJplM9yP63JmVNIcMXmJ31A0g4', NULL, '2022-10-18 17:20:48-04', NULL, '44649c15bd9045a5b3d84d8bce06a21f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (29, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEyODU2MiwianRpIjoiNGJmMGVkYWM2ZWEzNDM4MjljMjhmZTkzMTlmMWVjZjMiLCJ1c2VyX2lkIjoxfQ.pnGgvgppm4mmsv1LgF24XttOz7qu3rFdbjVpm48xc-M', NULL, '2022-10-18 17:29:22-04', NULL, '4bf0edac6ea343829c28fe9319f1ecf3');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (30, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEyODU3NywianRpIjoiYThjODVhZGRlMDIyNGRkODkwN2E2ZjFlMDQ1NDFhY2IiLCJ1c2VyX2lkIjoxfQ.xAch4Y0x4ZmWbN1jJR22WMtj3m-JNkMmamfSw362e78', '2022-10-11 17:29:37.487141-04', '2022-10-18 17:29:37-04', 1, 'a8c85adde0224dd8907a6f1e04541acb');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (31, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEyOTAyNywianRpIjoiNmMxN2I0YzM4N2NjNGQ4ZTlkN2I5NjE3NWU0OGVjNzUiLCJ1c2VyX2lkIjoxfQ.tZ39TTz46JYnVns3Tg102I8HRoWS4wJ9d4CIPB-TgFk', NULL, '2022-10-18 17:37:07-04', NULL, '6c17b4c387cc4d8e9d7b96175e48ec75');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (32, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEyOTg1NywianRpIjoiNjA0MzdmZTg4N2UxNDllYjhmNGM0ZTU4YmI3YTI0NDkiLCJ1c2VyX2lkIjoxfQ.EYJ0XLnJqzroHNc7a8IjlJ-eBCy1Vk8r-GMHi-AqI-I', NULL, '2022-10-18 17:50:57-04', NULL, '60437fe887e149eb8f4c4e58bb7a2449');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (33, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEyOTkyNywianRpIjoiNmMzYzQ0OWJhOGEzNGJmMTkyZjY2YmRlMWM5MDA2YTIiLCJ1c2VyX2lkIjoxfQ.oUUTTKr0FKQWLfvYuJDHXqlAEMrKRCIukjc3JYs9-e4', '2022-10-11 17:52:07.018991-04', '2022-10-18 17:52:07-04', 1, '6c3c449ba8a34bf192f66bde1c9006a2');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (34, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEzNDczOSwianRpIjoiZDk4MzRmNTFjNDgyNGIwNzllMzAwMzJlNDU0ZjNjZjIiLCJ1c2VyX2lkIjoxfQ.1mJBvXxomPXh2tGdx4twAM4DXheuGLjNxdcnwTeiACg', NULL, '2022-10-18 19:12:19-04', NULL, 'd9834f51c4824b079e30032e454f3cf2');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (35, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEzNDc0NSwianRpIjoiYzVlMDVmMjQ3NTIwNDliMmExYzMxNzRmYzFjZDU0MjciLCJ1c2VyX2lkIjoxfQ.Vs6aWkVmUMZSzDQf6UDNIqFMoZ2F3W8E52yjzOnuY9Y', '2022-10-11 19:12:25.289268-04', '2022-10-18 19:12:25-04', 1, 'c5e05f24752049b2a1c3174fc1cd5427');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (36, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEzOTA5NiwianRpIjoiYWRhNjQwYzFkM2FjNDY2Y2I0ZTNiNWVlZmY4YzE0M2YiLCJ1c2VyX2lkIjoxfQ.emIjCCQsZ1s4K3A7ECAaeQiHhv2aJahEV7YlZ-kzYSM', NULL, '2022-10-18 20:24:56-04', NULL, 'ada640c1d3ac466cb4e3b5eeff8c143f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (37, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjEzOTg5NywianRpIjoiMjdhZTFmNjNmYzlmNDY0ODhjNTkzMWFhMjA5YjQ3ZDgiLCJ1c2VyX2lkIjoxfQ.eafr0bajlfvpTAYI5jW-y1epCtrGvbChB5sdrz_tY7A', NULL, '2022-10-18 20:38:17-04', NULL, '27ae1f63fc9f46488c5931aa209b47d8');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (38, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE0MDIxOCwianRpIjoiZWRlY2I4MmIxMjdhNDljNzhhNjY0ODc3MGZhNTZlNzQiLCJ1c2VyX2lkIjoxfQ.ZbGK3RQDAuMLj7CouVoXZBt1XZnmNC_EmknOt0ewPm4', NULL, '2022-10-18 20:43:38-04', NULL, 'edecb82b127a49c78a6648770fa56e74');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (39, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE0MDUyMiwianRpIjoiMDBkODUxOTVjY2M1NDE5ZmE1ZDdlMzhjNjNlNTlhNTciLCJ1c2VyX2lkIjoxfQ.e8_SzP-i2jy8y0F1FyRZ4Zbipq4vxwtsKN-ACzcHa9w', NULL, '2022-10-18 20:48:42-04', NULL, '00d85195ccc5419fa5d7e38c63e59a57');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (40, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE0MTE3MCwianRpIjoiNTRkZWU5NDMxYWUxNDkxNGFkY2QxNmJmZDg3NTA4MDMiLCJ1c2VyX2lkIjoxfQ.pqtiAwbddlmALMNkklLchI6GR1anQouFUwHMUh65eIg', NULL, '2022-10-18 20:59:30-04', NULL, '54dee9431ae14914adcd16bfd8750803');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (41, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE0MTQ5MywianRpIjoiZThiZTg0MWQ2YTBjNGNmOGFlNGNkZjljY2JjODNiZjEiLCJ1c2VyX2lkIjoxfQ.UxVEYwn0iKSPsV3viruwUJ0tnt6zQzmA0qlf7MhXp-M', NULL, '2022-10-18 21:04:53-04', NULL, 'e8be841d6a0c4cf8ae4cdf9ccbc83bf1');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (42, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE0MTg5MiwianRpIjoiNmIzOTg3OWQ4NTRiNDIzNWFjYzhlNTNkODgyM2Y1MDciLCJ1c2VyX2lkIjoxfQ.8f9wv8sSZG_cli7z5rgHfuz4A_hB3CCAgxdHuzXUVhE', NULL, '2022-10-18 21:11:32-04', NULL, '6b39879d854b4235acc8e53d8823f507');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (43, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE0MjIyMCwianRpIjoiN2U0YWM0YmNhZmE4NGVkNjg0MWVhYWIzYjEwMzA3YjIiLCJ1c2VyX2lkIjoxfQ.69XMXq0SUb9gBlnP9i2pQxrY73YCFY_HihpR0cL0ojg', NULL, '2022-10-18 21:17:00-04', NULL, '7e4ac4bcafa84ed6841eaab3b10307b2');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (44, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE0MjU0OSwianRpIjoiNTUzYjk0NWFmNDhiNDBkMWE4OTcxY2IzYzA1NmRmNmMiLCJ1c2VyX2lkIjoxfQ.gl-h5GV_VoIsk7tllqNX7PoTB60s0avDgHnZ-zp6Tk8', NULL, '2022-10-18 21:22:29-04', NULL, '553b945af48b40d1a8971cb3c056df6c');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (45, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2MDMzOSwianRpIjoiZTMyYjQ3NGNmM2ExNDkxM2IyY2ZiNmE3NTFjMzQxZDciLCJ1c2VyX2lkIjoxfQ.rPCqWoiEkGW-YOC_pq3E_0QW0pf2FO6umo4-rvtOZmw', '2022-10-12 02:18:59.024947-04', '2022-10-19 02:18:59-04', 1, 'e32b474cf3a14913b2cfb6a751c341d7');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (46, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE0MjkyNiwianRpIjoiNDdkMGNkYWU3M2Y1NDliOWJhM2FiNzhmNDA0ZDIwZmYiLCJ1c2VyX2lkIjoxfQ.yYv-mx5gApvQ5yZteWh03Bf4hxO2HUnMBBj1qX-QR9E', NULL, '2022-10-18 21:28:46-04', NULL, '47d0cdae73f549b9ba3ab78f404d20ff');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (47, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2MTAyNiwianRpIjoiMjRhMmI4YTBiMmNjNDk4MWI3NTU0YmEzZTExMmY5MmMiLCJ1c2VyX2lkIjoxfQ.eSVJWjRPD4UAJ19n8pgwPL4anbmAO2GbuXXpC517Z0M', NULL, '2022-10-19 02:30:26-04', NULL, '24a2b8a0b2cc4981b7554ba3e112f92c');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (48, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2MTM1NSwianRpIjoiY2I1ZWZmZTkzMzFhNDRjOGI5ZjYzZTFhMzhiMTY4YTYiLCJ1c2VyX2lkIjoxfQ.PLrcidu8U6qp8iK84IDEGtUH4qzO8hVFCzFKNZvsFNk', NULL, '2022-10-19 02:35:55-04', NULL, 'cb5effe9331a44c8b9f63e1a38b168a6');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (49, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2MTkyMSwianRpIjoiZWViZjgwNWYyNmE1NDQ5Nzk0ODYyZmYxNDFkNzAwYzIiLCJ1c2VyX2lkIjoxfQ.eJbjpZ8sjNYJbPfeioacQ1d-wfQ3Pxe9rJgENjomh0o', NULL, '2022-10-19 02:45:21-04', NULL, 'eebf805f26a5449794862ff141d700c2');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (50, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2MjY0MSwianRpIjoiOGU2NTFhYjE3YjBmNDlmMTg3ZDMxZDY2YjNlOTk0NDYiLCJ1c2VyX2lkIjoxfQ.wuKVWmEeItVg1DwEtqaz3JhifszFG5CBtXo-l9cSaAs', NULL, '2022-10-19 02:57:21-04', NULL, '8e651ab17b0f49f187d31d66b3e99446');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (51, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2MjY0MSwianRpIjoiYjMzNTI1M2U3NGI0NDA0OWEzYTU0ZTBjODc3MmQ2YjEiLCJ1c2VyX2lkIjoxfQ.SyRnjyZYq_xQYCI8IUDkEKzXqLiwvBJ1rgRv9OJjRrM', NULL, '2022-10-19 02:57:21-04', NULL, 'b335253e74b44049a3a54e0c8772d6b1');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (52, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2MjY4NCwianRpIjoiY2U3NDFjOTIwNjY1NDIxNzg3ZDlkNDJjNzlhODE3MDgiLCJ1c2VyX2lkIjoxfQ.Wfm2BDdkAO4Z5hNp5NUXJEe7nahvUR2IY997rOB11A8', '2022-10-12 02:58:04.647874-04', '2022-10-19 02:58:04-04', 1, 'ce741c920665421787d9d42c79a81708');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (53, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2NDAxMSwianRpIjoiMjFjOGZiYzcwYWE1NDVmYjkyZWU3YTA2YzQxZGU0YWUiLCJ1c2VyX2lkIjoxfQ.TqLgRqwacX-o4Qr3xIz4KD5CLp6IPpVVELuoYAyEdMI', NULL, '2022-10-19 03:20:11-04', NULL, '21c8fbc70aa545fb92ee7a06c41de4ae');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (86, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2NDQwNSwianRpIjoiZWIwYzE1Yzg4ZGNhNGRhZWE3MTJhYTVjNjNkZWRkMzMiLCJ1c2VyX2lkIjoxfQ.Wyd6SG0XdOuAJ0XexSMqwGcAjGmai-zI-u1LCCtZfpw', NULL, '2022-10-19 03:26:45-04', NULL, 'eb0c15c88dca4daea712aa5c63dedd33');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (87, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2NDk5MSwianRpIjoiMjFmMmM4NGEyMzk1NGM0YmIyMDg3Y2Y5NTEyNzdmMDciLCJ1c2VyX2lkIjoxfQ.4uQs6hLGb_zl778urQmzF3ynQ5fF-UBEf_LmtGXqoTc', NULL, '2022-10-19 03:36:31-04', NULL, '21f2c84a23954c4bb2087cf951277f07');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (88, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2NzEzMCwianRpIjoiY2E1OWM2MzI2M2E2NDJjMGIyNzJlMGJkZThmMjE1NWYiLCJ1c2VyX2lkIjoxfQ.Td615BOPpcpWIGM2SUf8nL8oLeKRuK2Cd83dsVcn9RM', NULL, '2022-10-19 04:12:10-04', NULL, 'ca59c63263a642c0b272e0bde8f2155f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (89, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2ODk0NywianRpIjoiYzk5MmI0NTVmYWZjNDEwZmIwN2FiYTI1MDI1ZWE5YjciLCJ1c2VyX2lkIjoxfQ.VvRsed6jCzgvENXLz4eLxAuYpYxvYh4tgypgZQdmbY4', '2022-10-12 04:42:27.27323-04', '2022-10-19 04:42:27-04', 1, 'c992b455fafc410fb07aba25025ea9b7');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (90, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE2OTY5NCwianRpIjoiYjE3MDRiNGYyNjU4NDcyOTllYTVhZTA4YzUzYmM1ZTkiLCJ1c2VyX2lkIjoxfQ.hIntGP5HPDX0CmKFfeozDe0Ie3hSeLqHs3OuN4v6pT0', NULL, '2022-10-19 04:54:54-04', NULL, 'b1704b4f265847299ea5ae08c53bc5e9');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (91, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3MDgyNiwianRpIjoiYThhZTdiYzRkMjg4NDFmYThlOTUwYmQxMTBhNGUxMmEiLCJ1c2VyX2lkIjoxfQ.F2O8QVbmWj5HWD8QvrWQdgvuMXNYhLZmPHt1gh_w7BA', '2022-10-12 05:13:46.385047-04', '2022-10-19 05:13:46-04', 1, 'a8ae7bc4d28841fa8e950bd110a4e12a');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (92, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3Mjk4MSwianRpIjoiODg2NmFhYzBkYmNiNDA0OGIwMjA0ZWRkNWM1MWJlNmUiLCJ1c2VyX2lkIjoxfQ.sWwYiopK-3BVT7GxFXn9nWHOotbDQrFIZ1lG0gkeI6g', NULL, '2022-10-19 05:49:41-04', NULL, '8866aac0dbcb4048b0204edd5c51be6e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (93, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3MzEzNCwianRpIjoiZGIyMTk3ODQ1ZWVmNDg2OWI3MzA4ZjViMjdjYjFjZWQiLCJ1c2VyX2lkIjoxfQ.ZPpH_6CTrW_kHv4hq4FA5g0-kXT8ruHdvSDCtHmSTto', '2022-10-12 05:52:14.951901-04', '2022-10-19 05:52:14-04', 1, 'db2197845eef4869b7308f5b27cb1ced');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (94, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3MzIyNCwianRpIjoiNDA3NGQ1NzZmNjI2NDQxNTk3MjhmYjBlZTZkY2IwZjYiLCJ1c2VyX2lkIjoxfQ.DBIVdxuH16j_T3WhOQD9Lnkho7Y7q0BmXuDQK-heboQ', '2022-10-12 05:53:44.89305-04', '2022-10-19 05:53:44-04', 1, '4074d576f62644159728fb0ee6dcb0f6');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (95, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3MzUzNywianRpIjoiODcxMDZkMjFiZDFmNGU5OTk1OWQ3OGI4NTJiNzNmZWMiLCJ1c2VyX2lkIjoxfQ.6A9BARPNQMhCtuPo5ZOAPqcQ8l3vIzS-0JrH17nITJQ', NULL, '2022-10-19 05:58:57-04', NULL, '87106d21bd1f4e99959d78b852b73fec');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3MzcwMSwianRpIjoiYTgxZTI3NzRjNWVkNDk3ZTg5OTdkMjQ2ZGI5MmVhZmEiLCJ1c2VyX2lkIjoxfQ.h-02BTVxvBE8xyynGrDM8Ox9ktgJvaOL4aUYqyGV_Jw', '2022-10-12 06:01:41.168031-04', '2022-10-19 06:01:41-04', 1, 'a81e2774c5ed497e8997d246db92eafa');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3NDUyOSwianRpIjoiNzJiMTlmYjE1MTk2NGE5OWJjN2M1MDVlNjM5OTllMzAiLCJ1c2VyX2lkIjoxfQ.zDS_2ToDGt5SPnXYz8To1QLocP8eA_f1c-_HsPzaI24', NULL, '2022-10-19 06:15:29-04', NULL, '72b19fb151964a99bc7c505e63999e30');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (98, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3NTE3NCwianRpIjoiNDQzNmM1ZGJmMDZmNDBlZDllOWMwZDBkMzQ0MWJhYjkiLCJ1c2VyX2lkIjoxfQ.hBZcEkvdxuZWHRC4-a37m1Pprf46hC-XHmkiQ059900', NULL, '2022-10-19 06:26:14-04', NULL, '4436c5dbf06f40ed9e9c0d0d3441bab9');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (99, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3NTQ3OSwianRpIjoiNGViYzExZjJhNzUwNGZhOTgyYmIxNmM3YzViN2MyMmMiLCJ1c2VyX2lkIjoxfQ.CiiG8LB2KTtB47LW4TCwElT63-4XpVYf17BAUUNkk4g', NULL, '2022-10-19 06:31:19-04', NULL, '4ebc11f2a7504fa982bb16c7c5b7c22c');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (100, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3NTgzOCwianRpIjoiNTA1Y2Y3NTIxMmRiNDdjY2EyMmNjNDk3OTQ3MzllNjYiLCJ1c2VyX2lkIjoxfQ.ThojKGrHNhHROEfe6i4VBbJ7vbANLixuswpuU8ifYSU', NULL, '2022-10-19 06:37:18-04', NULL, '505cf75212db47cca22cc49794739e66');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (101, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjE3Njg3MiwianRpIjoiNjI5MzhjOWVkNGQ2NDEwNGIyOGM1ODIxZDRhOWMwMjEiLCJ1c2VyX2lkIjoxfQ.Nddo_DvVS-f4l54mb0hYZ6-jT0beb96NKF5ulF7756c', NULL, '2022-10-19 06:54:32-04', NULL, '62938c9ed4d64104b28c5821d4a9c021');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (102, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIxNTA4OSwianRpIjoiNWFmY2RkMmQ0OGQ0NDY5YmI3MDJiMDE0MWZhYzNlNTEiLCJ1c2VyX2lkIjoxfQ.dsh9D9OASwIKdFV_osiRiXx00Dy0DMeSKprwk_TjIOo', NULL, '2022-10-19 17:31:29-04', NULL, '5afcdd2d48d4469bb702b0141fac3e51');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (103, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIxNTQwMSwianRpIjoiOWQ3OWNjOWQ4MTE1NGI3MmEwODM1MWUwYjhiNjg1M2UiLCJ1c2VyX2lkIjoxfQ.e3fyu63YQNqJUwCV0PFYOikJSX7amtjzunFeXM0qNLI', NULL, '2022-10-19 17:36:41-04', NULL, '9d79cc9d81154b72a08351e0b8b6853e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (104, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIxNTc2OSwianRpIjoiYTk2YzAwZjU5NTMzNDU2YWExNmFkYTc5M2RlMmE2OGUiLCJ1c2VyX2lkIjoxfQ.Zujsfrg2ruZqBg4GfUqXTduwsanrsyk7TxcL06VWCnE', NULL, '2022-10-19 17:42:49-04', NULL, 'a96c00f59533456aa16ada793de2a68e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (105, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIxNjI5NSwianRpIjoiNjNmYjgxNGJhNWNmNDVjNmIxZTZiNDg1OGEzYmMxNWIiLCJ1c2VyX2lkIjoxfQ.quhQl88masZDmC5tb7ajv4-vzFfCqOeUiFqZ9Uw5DkE', NULL, '2022-10-19 17:51:35-04', NULL, '63fb814ba5cf45c6b1e6b4858a3bc15b');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (106, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIxNzcxNCwianRpIjoiN2VjZDMxM2I1ODFiNDYwMWFhNmMzMDE1MWRiN2Q4ODAiLCJ1c2VyX2lkIjoxfQ.6ECvYF7u5nX3dXw_xujS7bPHY2ODylwSNLRhYR5PikY', '2022-10-12 18:15:14.702932-04', '2022-10-19 18:15:14-04', 1, '7ecd313b581b4601aa6c30151db7d880');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (107, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIxOTkzMSwianRpIjoiMjQ1ZDNkYzNlMjk5NDdkM2JjMDI4MzYwOWY3ZWFmNTYiLCJ1c2VyX2lkIjoxfQ.2LFspYngI1_rKw5j_XfyIxYNKLcMIy-BISjzbS0hgC4', NULL, '2022-10-19 18:52:11-04', NULL, '245d3dc3e29947d3bc0283609f7eaf56');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (108, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIxOTk0MywianRpIjoiYjlhNTJmNTBhZTIxNDJhMDg4MmFkZTFiZjAzNDI5YzciLCJ1c2VyX2lkIjoxfQ.Ft40b577IB_TFEoyrsaNBQIN8sR2eMcUqxgeO6EdP8k', '2022-10-12 18:52:23.912154-04', '2022-10-19 18:52:23-04', 1, 'b9a52f50ae2142a0882ade1bf03429c7');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (109, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIxOTk2MSwianRpIjoiNTU5Y2Y5OGRhMjNmNDcwNjg4MjNhMzkwMTZkNWY4ZjQiLCJ1c2VyX2lkIjoxfQ.nKjeg6JhvNJwlF8RPrfRVYMgZTROORJnmtfuliihPT0', '2022-10-12 18:52:41.140699-04', '2022-10-19 18:52:41-04', 1, '559cf98da23f47068823a39016d5f8f4');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (110, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyMDY0MSwianRpIjoiYWQ5ZjFjOGZjYzlmNGFmY2E4YjY4NThmNWRmZjZjNTciLCJ1c2VyX2lkIjoxfQ.lprECRgml8kBQAaQhCHTz5WMH65MI9AMqASQ_JX3Epo', NULL, '2022-10-19 19:04:01-04', NULL, 'ad9f1c8fcc9f4afca8b6858f5dff6c57');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (111, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyMzc2OCwianRpIjoiNWJlNDU4OWU1ZjA3NDQxNWEzNjlmODZlZTQ3OGFiODUiLCJ1c2VyX2lkIjoxfQ.JnylLPFmqiVAGfc1MvFluxBEZbeRh9R5_cdCIx0RK9A', NULL, '2022-10-19 19:56:08-04', NULL, '5be4589e5f074415a369f86ee478ab85');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (112, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyNDEyOSwianRpIjoiNjczMWZjM2QxZWJjNGVjNzg1NjQyMTNmMWRhOTM4MDgiLCJ1c2VyX2lkIjoxfQ.W5Mbzxnm_xc8wq1JRvgffQ8_YJNcKYxKq9OEeiZlwPg', NULL, '2022-10-19 20:02:09-04', NULL, '6731fc3d1ebc4ec78564213f1da93808');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (113, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyNDc1MSwianRpIjoiZWE5MDI4NzIzMTY2NGRlOWFhNjJiNjFiMjNlNjQxZDkiLCJ1c2VyX2lkIjoxfQ.zuPUmdmhl4M8nsZ3w7VThNyrZwXzTImyqvFJXVh1QxY', NULL, '2022-10-19 20:12:31-04', NULL, 'ea90287231664de9aa62b61b23e641d9');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (114, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyNTA1MSwianRpIjoiNWMwZGM0YmQ2MzVmNGIwMmExZDk0ZDU3NDdiNWFlMGUiLCJ1c2VyX2lkIjoxfQ.VMZtnPCV-L97oJoGpxl0ef5Tyb_v2B1eseikbI_c66A', NULL, '2022-10-19 20:17:31-04', NULL, '5c0dc4bd635f4b02a1d94d5747b5ae0e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (115, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyNTc5OCwianRpIjoiOThlNjZhOTQ2ZGUzNGNiYTg3MjlmOTBjZTc0ZTFlNTEiLCJ1c2VyX2lkIjoxfQ.Lr8qyTrSFO8V31hmoXQECagOi7f7uqrnWxFu39Y82_4', NULL, '2022-10-19 20:29:58-04', NULL, '98e66a946de34cba8729f90ce74e1e51');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (116, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyNjEwMSwianRpIjoiOGQyNzcwNWUzOWU4NDcxMmIyNmZhYWFmYjNkOTEyYzQiLCJ1c2VyX2lkIjoxfQ.qDkCy9Mwt2t5lYUteOtlCQaOK1zoHn7tEn7uNCz-gXw', NULL, '2022-10-19 20:35:01-04', NULL, '8d27705e39e84712b26faaafb3d912c4');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (117, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyNzEyMiwianRpIjoiMmU1ODJkZTI3NzJkNDMxNDk2Yzk3NGZlODc5Y2ViNzgiLCJ1c2VyX2lkIjoxfQ.-AmJtGQjMMokR-kZXhtiQKhmIVIO_Vdd-DBj_hwsfUc', NULL, '2022-10-19 20:52:02-04', NULL, '2e582de2772d431496c974fe879ceb78');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (118, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyNzY3NywianRpIjoiNjBlNzJlZTA0ZmVlNGFiZTg1OTNkMDZjMTgxMTgxYzYiLCJ1c2VyX2lkIjoxfQ.m6vuXUhRdymSEES6dQdH6EWc2idTLaCEXdmAZJ1zi1U', NULL, '2022-10-19 21:01:17-04', NULL, '60e72ee04fee4abe8593d06c181181c6');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (119, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyODU4OCwianRpIjoiNDVjZDBkZDFmZjFiNDg0NDg1YmYxMDM5NDgxMGFjMGYiLCJ1c2VyX2lkIjoxfQ.vBEdqAf0lpojN8VFHDe0exillKtLZd4gr9IHaA1eiNU', NULL, '2022-10-19 21:16:28-04', NULL, '45cd0dd1ff1b484485bf10394810ac0f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (120, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyODk3NiwianRpIjoiNjkwNTMwZWNjNzFhNDUyMGEyMjgxMTBhNjA4YjkzODEiLCJ1c2VyX2lkIjoxfQ.l5QryeYdazHGlSuyvZLKQsieWRzIDJpaQD_xd9xqYZc', NULL, '2022-10-19 21:22:56-04', NULL, '690530ecc71a4520a228110a608b9381');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (121, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyOTI4MywianRpIjoiOTY0ZWE3NjExMzllNDg1YWJhODlkNjRkMjEwOGUxMTAiLCJ1c2VyX2lkIjoxfQ.b5miW06CxGOCT-JiYmfMp4lckX2zAxgZSwTG83gDj0I', NULL, '2022-10-19 21:28:03-04', NULL, '964ea761139e485aba89d64d2108e110');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (122, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIyOTU4MywianRpIjoiZGY5NGY0Y2UxZTI5NGRkMzlmZTliZGU3NDhjYjg0MWUiLCJ1c2VyX2lkIjoxfQ.2nOWcUf5NtZZmTI3CEw6NOfEAJtusubBIVeCOiN6akk', NULL, '2022-10-19 21:33:03-04', NULL, 'df94f4ce1e294dd39fe9bde748cb841e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (123, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzMDIwMywianRpIjoiYjRmMjk1MTM2YjkzNDhmNTkzZmVhYWY3ZTQ4Y2I4NDMiLCJ1c2VyX2lkIjoxfQ.vdng0EynqD9RkUYr2ceS6R6CFdiwuc0eqz_ze4jeWto', NULL, '2022-10-19 21:43:23-04', NULL, 'b4f295136b9348f593feaaf7e48cb843');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (124, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzMDU3NSwianRpIjoiNTc1NDBmMmMwYTgzNGRkNmI4NzQ2Y2ZkN2JkZGVmNDEiLCJ1c2VyX2lkIjoxfQ.gBOA6wp87wsfdY4-abVv1C3ZS53J4qliHlYvCvo2uHw', NULL, '2022-10-19 21:49:35-04', NULL, '57540f2c0a834dd6b8746cfd7bddef41');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (125, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzMTIzMCwianRpIjoiMTk2MDY0MTk1MzA0NDg5ZWFhN2I1MTBmMWEyNThmMmYiLCJ1c2VyX2lkIjoxfQ.3wGlvIJFaB6aNcmETCzDA7eIv6f9xXr47OloO0wDcso', NULL, '2022-10-19 22:00:30-04', NULL, '196064195304489eaa7b510f1a258f2f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (126, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzMTU0OSwianRpIjoiZDA0YThiOGI3YmU3NDk5ZDlhZjY2OTBkYTE1MWYyZDUiLCJ1c2VyX2lkIjoxfQ.7ov0JQZF7QPVodHQb65VXvly-ao_4UKUtnICjUsLNvI', NULL, '2022-10-19 22:05:49-04', NULL, 'd04a8b8b7be7499d9af6690da151f2d5');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (127, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzMTg5OCwianRpIjoiMWVjMGEwZmMyYTUyNGU0NTkxOWE3N2UwZjEyNTM2YzMiLCJ1c2VyX2lkIjoxfQ.hxWdqkd_XTbaMgvrzhvhWDCIm-970Hk_9q8wYwYgGC4', NULL, '2022-10-19 22:11:38-04', NULL, '1ec0a0fc2a524e45919a77e0f12536c3');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (128, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzMzE1NCwianRpIjoiODc5Y2UwYjM3ZWFhNGIxMDg3ZTU4ZGI4ZTRmZjM5YTMiLCJ1c2VyX2lkIjoxfQ.r1oI7OA3ruMEJrMK2AUcubd73hGIvQSqqXzRjZ4kBWk', NULL, '2022-10-19 22:32:34-04', NULL, '879ce0b37eaa4b1087e58db8e4ff39a3');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (129, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzMzQwNiwianRpIjoiYmVkNzZlZTM0Y2IyNDY3MTg1YWU5MjEwMjQ4ODU0NzkiLCJ1c2VyX2lkIjoxfQ.kbbowT47DObIp2mtYcuv10eYL4CbmB2nMAltvwYW_eE', '2022-10-12 22:36:46.896849-04', '2022-10-19 22:36:46-04', 1, 'bed76ee34cb2467185ae921024885479');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (130, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzMzc0NCwianRpIjoiZmRkNTA2Njc5ODNjNDAxN2I5NjVjNzgzNjkwZmQ0ZDEiLCJ1c2VyX2lkIjoxfQ.jCL4XmkWiLy8-E-HWSLGNmztGCocKoEUteyAbPtr0T0', NULL, '2022-10-19 22:42:24-04', NULL, 'fdd50667983c4017b965c783690fd4d1');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (131, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzNDA1NCwianRpIjoiODYxYTFiZGM2MjBkNGIwM2I0MDM4MWRlMjFiZmI3MWQiLCJ1c2VyX2lkIjoxfQ.qWoMlBT5YuMiUgGxygTCKAPsBpf2-d6kAhGhDSFYZKg', NULL, '2022-10-19 22:47:34-04', NULL, '861a1bdc620d4b03b40381de21bfb71d');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (132, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzNDM5NywianRpIjoiMzY1OTdmYmRjZWQ3NDIyNWJkNGVkNjA0ZTczN2FmNTQiLCJ1c2VyX2lkIjoxfQ.yQST2oTwfyDcQNAIfRbbP_VRnCrCadwwvyFhSB1MGxM', NULL, '2022-10-19 22:53:17-04', NULL, '36597fbdced74225bd4ed604e737af54');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (133, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzNDcxNSwianRpIjoiMGVkZjZjMDMzYTdiNDcxODgzM2ZjZWMyNjc2MDM3ZjEiLCJ1c2VyX2lkIjoxfQ.tjyZ6XDkS7eWNIOXnFovVRDxJQRirVZfTaCp3f6Q5WA', NULL, '2022-10-19 22:58:35-04', NULL, '0edf6c033a7b4718833fcec2676037f1');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (134, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzNTEzNSwianRpIjoiOWM4MjJmYTM2YjVkNGRmOWE2MWM1NmIxNDdlMDA4NjMiLCJ1c2VyX2lkIjoxfQ.BLH3h0xPYHPsSi3vsTnE4N1YjgJJtu3sA9zI2zL60ao', NULL, '2022-10-19 23:05:35-04', NULL, '9c822fa36b5d4df9a61c56b147e00863');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (135, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzNTUyMCwianRpIjoiMjIzZGM2Njk4NGYxNDcxYThjNDIyMmVhN2FmNWIzYWEiLCJ1c2VyX2lkIjoxfQ.yLY6-KfR4yV6D_svjVGMAw_vSt6RFr8BX9IkevSmJAY', NULL, '2022-10-19 23:12:00-04', NULL, '223dc66984f1471a8c4222ea7af5b3aa');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (136, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzNTkxOCwianRpIjoiNjU3YmJiMmU1NTgwNGNmYThjMGRmN2E4NGNmNmNmZDQiLCJ1c2VyX2lkIjoxfQ.eDNw7I63CsaJnznbUueuqqFkc3-izb4fxkfbJUZiYA0', NULL, '2022-10-19 23:18:38-04', NULL, '657bbb2e55804cfa8c0df7a84cf6cfd4');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (137, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzNjgxMiwianRpIjoiMTQ0Njg4Y2I1OWQwNDk5NGE2OTk5YjNhNzIzZWRiM2QiLCJ1c2VyX2lkIjoxfQ.f_qwo6uwOtSU-oEvaRuJtEiFK8oXEuHru82nckoAoWM', NULL, '2022-10-19 23:33:32-04', NULL, '144688cb59d04994a6999b3a723edb3d');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (138, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzNzc5MSwianRpIjoiZmNmNGJiODlkZTg2NDllNjk1YTZmNjA3OGVkOTgyMGUiLCJ1c2VyX2lkIjoxfQ.AG1XyfYuVc_pSVe2TjTh7COfesrufzmeS9LqV4pCS-8', NULL, '2022-10-19 23:49:51-04', NULL, 'fcf4bb89de8649e695a6f6078ed9820e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (139, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzODA5MiwianRpIjoiZTM3YzNiOGI2ZWY0NDY2YTlhY2Y5YjQyYjIyM2IzMDAiLCJ1c2VyX2lkIjoxfQ.K1JXJcF-A4gkjRuLk8h7KN-UYCYH8iPztNi9iZCgLGs', NULL, '2022-10-19 23:54:52-04', NULL, 'e37c3b8b6ef4466a9acf9b42b223b300');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (140, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzODUwMSwianRpIjoiNGQ5YTU5NGUzNzgzNDU1OWFlMWQ2ZjA5MGQ0YmUwODkiLCJ1c2VyX2lkIjoxfQ.YdAauO_IsW30hSaBL74VnR9qqpXMDQl2-1O2x2m5p7M', NULL, '2022-10-20 00:01:41-04', NULL, '4d9a594e37834559ae1d6f090d4be089');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (141, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzODgxNiwianRpIjoiY2IyNjQ4MjIyYjkwNGQzZmI4NmY0YjRiNWJlZTJlNjUiLCJ1c2VyX2lkIjoxfQ.nghVfboamCPk8FI6byOsPLHNXVQ45bl8LPg4YY5G2oQ', NULL, '2022-10-20 00:06:56-04', NULL, 'cb2648222b904d3fb86f4b4b5bee2e65');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (142, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjIzOTcyNCwianRpIjoiZDRmZDYwZGQ2MmVjNDVjYmIwZmY5NWQ0ODExZGYyYzciLCJ1c2VyX2lkIjoxfQ.rkLiGyUi8XTKfm3BGA4WcpO90irwIAlGepSRyfXn9Gc', NULL, '2022-10-20 00:22:04-04', NULL, 'd4fd60dd62ec45cbb0ff95d4811df2c7');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (143, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0MDA3MSwianRpIjoiMzYyNDNmMTI5MjdkNDkyMzhiZGU3OTYwOTVlMWFmNWYiLCJ1c2VyX2lkIjoxfQ.bKpTP-RAq__Y9zqODxW93AQQn6njr-WVz1mvw_nmddU', NULL, '2022-10-20 00:27:51-04', NULL, '36243f12927d49238bde796095e1af5f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (144, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0MDM3OCwianRpIjoiYWY2ODNjMTg1MWZjNDdmNGJkMjcxYTJlMDZjMWIyYTEiLCJ1c2VyX2lkIjoxfQ.3ITBxP9Gqs3AI_FecgTo_C5N7QTg_PF9GycFzSuVHLs', NULL, '2022-10-20 00:32:58-04', NULL, 'af683c1851fc47f4bd271a2e06c1b2a1');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (145, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0MDY3OCwianRpIjoiMmM0YjAxOWIzYjRiNGY2ZWI5YWE3YzcxMDkwNDYxYmYiLCJ1c2VyX2lkIjoxfQ.mFhD3iioJrHlOrSg8NTCvZSK5XWJd1NNvgkbDMeXSJI', NULL, '2022-10-20 00:37:58-04', NULL, '2c4b019b3b4b4f6eb9aa7c71090461bf');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (146, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0MzE2OCwianRpIjoiMWNkNDg5ZThkMzEzNGQ0Mjg2YzBlYzYyZDVhOGVmNzEiLCJ1c2VyX2lkIjoxfQ.Aip-3JTUFxXa5pAOTX-W68WmNTurmkbJt5ksEEwL2tY', NULL, '2022-10-20 01:19:28-04', NULL, '1cd489e8d3134d4286c0ec62d5a8ef71');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (147, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0MzE2OSwianRpIjoiZDQzOTkyMjc2YTc2NGNmNWEwM2M4NDAxNDA2MmM3MGUiLCJ1c2VyX2lkIjoxfQ.MQmbjX8gYe0o2wld9mNqxeU-g7GJRgZLhc1PefC3tzE', NULL, '2022-10-20 01:19:29-04', NULL, 'd43992276a764cf5a03c84014062c70e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (148, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0MzUwNiwianRpIjoiMDRmY2EyNmNhNjI1NGYzYzgyOGZkYWQxZGY4YzNkYmYiLCJ1c2VyX2lkIjoxfQ.BlvglWUOcYDE308sCiq4gDWKwI2GNoeb-0TwRZksOvM', NULL, '2022-10-20 01:25:06-04', NULL, '04fca26ca6254f3c828fdad1df8c3dbf');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (149, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0NDI1MywianRpIjoiNzQzYTBhMGZiMmU2NGRkZmEzMTViNjM3MWFlMTk5NjciLCJ1c2VyX2lkIjoxfQ.WM8mAp2uwssC7qCzfXbxna1g02qlnnYzpkP7LcOaE2Q', NULL, '2022-10-20 01:37:33-04', NULL, '743a0a0fb2e64ddfa315b6371ae19967');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (150, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0NDYyMiwianRpIjoiMmEzN2QyNGI4NTY4NDNhZTk1ZDBiZTdlMTczYzc4NzQiLCJ1c2VyX2lkIjoxfQ.R4mSMS6JBXSOHkI6BZKYIslORDU0Od2Wpkfr2A3j7b8', NULL, '2022-10-20 01:43:42-04', NULL, '2a37d24b856843ae95d0be7e173c7874');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (151, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0NDk1OCwianRpIjoiNmM2ZDJlZWVlMTM0NDQ1NzkyYWEwOTYxZmQyZjRkZjYiLCJ1c2VyX2lkIjoxfQ.F_XiDzUpfyEdCAMbsSGQcP9O8hMtYUpQ_R8rAyVV5M8', NULL, '2022-10-20 01:49:18-04', NULL, '6c6d2eeee134445792aa0961fd2f4df6');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (152, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0NTMxMCwianRpIjoiYWRiNGIzNzM1ZjhkNGY3N2I0ZTc1NDRhZGIyZTBjNjEiLCJ1c2VyX2lkIjoxfQ.onp0c_1gakbMfNloKSTgSRKUxbWQ7a4ZfS19dFEVsdo', NULL, '2022-10-20 01:55:10-04', NULL, 'adb4b3735f8d4f77b4e7544adb2e0c61');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (153, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0NTc0NCwianRpIjoiZGEzOWRhNWFlZTA0NDgzYTkzMDkwYzAxYjEyNjc5MmYiLCJ1c2VyX2lkIjoxfQ.vKwGoOHgXopdr01h7sf9kIjgdMhidDOScP-mKZMSynY', NULL, '2022-10-20 02:02:24-04', NULL, 'da39da5aee04483a93090c01b126792f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (154, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0NjA0NCwianRpIjoiZTA1N2E2ZTk5ZmVmNDY3MDgzOWY5NzRjZGI1ODYzN2EiLCJ1c2VyX2lkIjoxfQ.YuOGjhids_AN4j-bsq7rGIhhGuwYIp_hnT1Cj9StjfI', NULL, '2022-10-20 02:07:24-04', NULL, 'e057a6e99fef4670839f974cdb58637a');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (155, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0NjM4NCwianRpIjoiZDlkZmVkNmY3ZGE2NGI0MWFkMzM1MzhhZjExMTM4ZDUiLCJ1c2VyX2lkIjoxfQ.AXl4hFnIiNHygp5OWHN1MKWLJnL4v4FO5K4aB-BE9Cc', NULL, '2022-10-20 02:13:04-04', NULL, 'd9dfed6f7da64b41ad33538af11138d5');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (156, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0NjY4NSwianRpIjoiY2QzZDFhNGQ5OGI3NGNiMzgwNGJkY2RkYjc2ZTM4ZjgiLCJ1c2VyX2lkIjoxfQ.jx25qxipnbcB-Q2nQL3V4fNxvHa1nWddbzhRAj1ltDc', NULL, '2022-10-20 02:18:05-04', NULL, 'cd3d1a4d98b74cb3804bdcddb76e38f8');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (157, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0NzExNSwianRpIjoiYmIzMmQ3MWEwMWNmNGFlM2FjNDA1MTJiMzFmNzllYmYiLCJ1c2VyX2lkIjoxfQ.XXjsVRJtZJV0yvQWzr1z944ODLVLx0P_d-vSLFf3uBI', NULL, '2022-10-20 02:25:15-04', NULL, 'bb32d71a01cf4ae3ac40512b31f79ebf');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (158, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0NzQxOSwianRpIjoiYzE3MDNlNzg1MDBhNDlmNmI3MTE2ZDI1MTEyYjYxYWEiLCJ1c2VyX2lkIjoxfQ.C3x6I7vy3BOeZfcSxU4bL0gRJOALKERUwCjNKzqX9MY', NULL, '2022-10-20 02:30:19-04', NULL, 'c1703e78500a49f6b7116d25112b61aa');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (159, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0ODI3NywianRpIjoiYzg5NTdiOGQyYmRiNGQ5MWFjYTljOTA3Yzk0YjFkMmUiLCJ1c2VyX2lkIjoxfQ.p7e5XM9JT9t3G4NrTj6Twuult9qhL1WXi9SSuMvWrww', NULL, '2022-10-20 02:44:37-04', NULL, 'c8957b8d2bdb4d91aca9c907c94b1d2e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (160, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0ODMyMCwianRpIjoiNjJmNDVhZGIyZmE4NDBjZjhiY2UxOGFmOTBiNjY5ZjAiLCJ1c2VyX2lkIjoxfQ.cV33AbgrYugOTQEfABcX9WI53aNCyN30Gu2-_CHOHnE', '2022-10-13 02:45:20.871518-04', '2022-10-20 02:45:20-04', 1, '62f45adb2fa840cf8bce18af90b669f0');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (161, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0ODczNywianRpIjoiY2QwMTMzNTI2ZjgxNDZjOTlkNDFhODIxNWM4NTk4MGUiLCJ1c2VyX2lkIjoxfQ.6Hl2b9VAPQ1OtwlH0vYnNsWjP5B6UW52xAdQo_Qg-hI', NULL, '2022-10-20 02:52:17-04', NULL, 'cd0133526f8146c99d41a8215c85980e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (162, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0OTEyNiwianRpIjoiZmExMDliNmI4MDdkNDk0ZTk5YzdmYzk4MzYyZWVhMTYiLCJ1c2VyX2lkIjoxfQ.qhdXyTJ-0zjX0NJgfAh--AZPSkt8aa9enhM9jV56djg', NULL, '2022-10-20 02:58:46-04', NULL, 'fa109b6b807d494e99c7fc98362eea16');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (163, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0OTUyMSwianRpIjoiNmUxYjFjZmRiMmJjNDZlYjljODc2NWRiZDI3Zjg3NDMiLCJ1c2VyX2lkIjoxfQ.WgSizDbc4Dc1jEIpL8_FOPT9fQCv18on20ISV4AEU3Y', '2022-10-13 03:05:21.538563-04', '2022-10-20 03:05:21-04', 1, '6e1b1cfdb2bc46eb9c8765dbd27f8743');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (164, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0OTQ4NCwianRpIjoiZTA2OWYyOGFkMmFjNDc4ZGI4MDRhNjFiMjVhNzQ5Y2MiLCJ1c2VyX2lkIjoxfQ.ozs6KcmJIzXlNknJ1Ce97xmyHzVRNnS7Hfg9cplj9Gk', NULL, '2022-10-20 03:04:44-04', NULL, 'e069f28ad2ac478db804a61b25a749cc');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (165, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0OTk0MCwianRpIjoiMmMzYmNjMDdkYzk0NDY3Nzk5NGJhOTYwMTQ3NTlkMzQiLCJ1c2VyX2lkIjoxfQ.gc4c1Ki-0DwAIACIDQJYh6iYwdjPdkoiD_ExKxCgLFM', '2022-10-13 03:12:20.586135-04', '2022-10-20 03:12:20-04', 1, '2c3bcc07dc944677994ba96014759d34');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (166, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI0OTgyNiwianRpIjoiODc1MWY1NDU2Njc5NDIyNTg5ZTE4NWNkM2EyMTE0YzQiLCJ1c2VyX2lkIjoxfQ.J6z8bM4AlvY7Wy4X-guMUR_I9Zj6zBO35bbfmd-uLgA', NULL, '2022-10-20 03:10:26-04', NULL, '8751f5456679422589e185cd3a2114c4');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (167, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1MDE3NSwianRpIjoiZWJjMWY1YWIzOGQ5NDY3NGFhOWQzODEzYmUzNmI3MjQiLCJ1c2VyX2lkIjoxfQ.D2eJSYz1H-K5O8UBhM9YBK-EvdVR-ALSAWIx5ef8ouQ', NULL, '2022-10-20 03:16:15-04', NULL, 'ebc1f5ab38d94674aa9d3813be36b724');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (168, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1MDgzNCwianRpIjoiNGMxMjNhY2I3YWNlNGEzOTg2NTZkMDFiNWY3YTg2OTEiLCJ1c2VyX2lkIjoxfQ.AoEq-M_Gt_dpJRZqA9rJ88JijlN2-emykWQy4jHpBh4', NULL, '2022-10-20 03:27:14-04', NULL, '4c123acb7ace4a398656d01b5f7a8691');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (169, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1MTQyMywianRpIjoiNTI5ODIyNWUzNWJmNGQxNjg3YmMxZDIwNDhkNjAxNzYiLCJ1c2VyX2lkIjoxfQ.K5Up9R6N1B6mO2szy_-NlOPNY5PcrPeqke57I0Hmscc', NULL, '2022-10-20 03:37:03-04', NULL, '5298225e35bf4d1687bc1d2048d60176');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (170, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1MTczNSwianRpIjoiMjU3M2QyZTAyYWEzNGI2NmJiYmJmZjdmNjY2NDRhNTMiLCJ1c2VyX2lkIjoxfQ.UBhROP3yDfncRye2aFfL6EJ-K_RWAK8fUBoxJj4ARc4', NULL, '2022-10-20 03:42:15-04', NULL, '2573d2e02aa34b66bbbbff7f66644a53');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (171, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1MjA2OCwianRpIjoiOGU0MWQzYmNkNTgwNDBlZDgzZGQ4MzRhZjdkNzgxMDIiLCJ1c2VyX2lkIjoxfQ.Xu9pzBtVgJdNuKPSjLewx4b5Po_NUJ-XjIqW9zT1BVw', NULL, '2022-10-20 03:47:48-04', NULL, '8e41d3bcd58040ed83dd834af7d78102');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (172, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1MjM3MiwianRpIjoiNDg1ZTBkODUwNjA2NDhiMTlkMzY2NzRhMDNhNGZkZWQiLCJ1c2VyX2lkIjoxfQ.j4RMJf67zM53ONIcEsWN7lN-WEgg30guvVvlVITdDXQ', NULL, '2022-10-20 03:52:52-04', NULL, '485e0d85060648b19d36674a03a4fded');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (173, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1MjY4MCwianRpIjoiNjU4YjA2ODA1MGJjNDBmOGE0ZmU5OTc1YTg4YTQ0ZDUiLCJ1c2VyX2lkIjoxfQ.5moOYxXV0Cl8xEQa60JzC7g7icOVisuMBYOcmix6VeM', NULL, '2022-10-20 03:58:00-04', NULL, '658b068050bc40f8a4fe9975a88a44d5');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (174, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1MzEwNywianRpIjoiYzliMzk1M2QxNjhmNGQxYmFlYzA2NThhZmFmNTEwNWYiLCJ1c2VyX2lkIjoxfQ.6UqlWEbtiuU4BXjsO9Z1ynUljU4X_uLmIPVs_TLoT2I', NULL, '2022-10-20 04:05:07-04', NULL, 'c9b3953d168f4d1baec0658afaf5105f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (175, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1MzQyNiwianRpIjoiNTA2NjAwOWFjZDFjNGNhNGEwMTY1Mzg0MzA3NWJkNmIiLCJ1c2VyX2lkIjoxfQ.mZcmIEJbEJgXxis8MnqDEPYB-mJdmBLbzHia-DXQCX4', NULL, '2022-10-20 04:10:26-04', NULL, '5066009acd1c4ca4a01653843075bd6b');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (176, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1NDI5NiwianRpIjoiYzExMmJiNmUwZmFlNGExYTgwMDc4YzlhMmE0ZDJkNDEiLCJ1c2VyX2lkIjoxfQ.rP4LgZ_2S6P0oplOg7Wb9GiBcanPzIfBwu6a80BfSxk', NULL, '2022-10-20 04:24:56-04', NULL, 'c112bb6e0fae4a1a80078c9a2a4d2d41');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (177, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1NDc0NCwianRpIjoiMTIzMzhlNmIxOTJmNDY1NWJiNWRlYzhkMzQyMDM4OTEiLCJ1c2VyX2lkIjoxfQ.8J1o6fUPvDg2tu8PUWXLpRtp63acb8RSxs30PW_tsXM', NULL, '2022-10-20 04:32:24-04', NULL, '12338e6b192f4655bb5dec8d34203891');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (178, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1NTIyMywianRpIjoiYzRlMDI1MTVhOTEzNDVhY2I3NTc4MTE0Y2Y1OWQ3OGYiLCJ1c2VyX2lkIjoxfQ.pOamq52GGCm9y0CdsesmaJHn42K2bUMSxHwfp0fOx6E', NULL, '2022-10-20 04:40:23-04', NULL, 'c4e02515a91345acb7578114cf59d78f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (179, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1NTU2MSwianRpIjoiZGM5MGZkNmFjYWY5NGIzMGJmZTczZjgyY2RlNWZjNTEiLCJ1c2VyX2lkIjoxfQ.dO0y-TK9AbacSQvKgKwaf7UWJOJ3cM_H6Wwwl8fZGwY', NULL, '2022-10-20 04:46:01-04', NULL, 'dc90fd6acaf94b30bfe73f82cde5fc51');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (180, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1NjE2OCwianRpIjoiMmQ2NzBkMGIyMWI3NDRiMjhiODUyMTExM2VkOTQwYjAiLCJ1c2VyX2lkIjoxfQ.6Td5B7ipXlT46IYwTwB74_lUZ2C-he5PVQxSnSMrCWE', NULL, '2022-10-20 04:56:08-04', NULL, '2d670d0b21b744b28b8521113ed940b0');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (181, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1NjQ5NCwianRpIjoiNmFiNzVlZWFiMDFkNDU3NWFmYzNkN2I5YTJkZWEzZDYiLCJ1c2VyX2lkIjoxfQ.0Z5tRHivjEkTgis5on6SetbtI2iLQ6pmXxIAoeH5riw', NULL, '2022-10-20 05:01:34-04', NULL, '6ab75eeab01d4575afc3d7b9a2dea3d6');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (182, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1NzIxNywianRpIjoiNjM4YzE4ZWYzODUyNDMxZDgxNWQyNmM2ZThlMzg0N2EiLCJ1c2VyX2lkIjoxfQ.nu_XsmCJd7dCL2iZh5r0BTEpvKwu5RRh4dEXIhCZm_o', NULL, '2022-10-20 05:13:37-04', NULL, '638c18ef3852431d815d26c6e8e3847a');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (183, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1NzYzMywianRpIjoiYzc4YmEwYmE4NTZkNDcwOWFiMjI1YjMwMDM5MDk5YzYiLCJ1c2VyX2lkIjoxfQ.QnAV-EscEcVEkT3zJnvBo-S5h_llF3hyK-Xq93K4SPA', NULL, '2022-10-20 05:20:33-04', NULL, 'c78ba0ba856d4709ab225b30039099c6');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (184, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1ODI0MCwianRpIjoiYWQ4MmUyZTVmZTg1NGZkYjhhMjMxNzAwZmFjNWE1N2QiLCJ1c2VyX2lkIjoxfQ.5JXYjUj6YdbZmqKrNK5a4vERjO0wQ-x0rB63PpKOvUw', NULL, '2022-10-20 05:30:40-04', NULL, 'ad82e2e5fe854fdb8a231700fac5a57d');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (185, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1ODg3MSwianRpIjoiOTdhZDA2MDM3Yzc3NDBkODhiMGRlOTdlYmI4NWRjODciLCJ1c2VyX2lkIjoxfQ.-UoiF9LE7pemLIzvw8Amgk5F6nAgXs87g2R8Mkc8Ee0', NULL, '2022-10-20 05:41:11-04', NULL, '97ad06037c7740d88b0de97ebb85dc87');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (186, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1OTE4MiwianRpIjoiMDY2MGIzMzU1NjJlNDcwODg5MGFmN2VmMTVhYzgxNzYiLCJ1c2VyX2lkIjoxfQ.z-NAruxaRdGTnhGe2lugIYG7lxIs4eDVSHrtSIuZj4g', NULL, '2022-10-20 05:46:22-04', NULL, '0660b335562e4708890af7ef15ac8176');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (187, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1OTU0MCwianRpIjoiYzhmYTMxZjkwZjExNDRlZmExMzkxODM5NmQwMDgzOGUiLCJ1c2VyX2lkIjoxfQ.nHdvyu4oqLQdF0k5Bez6nYiJAYV_zs63uUfXRuwzTq8', NULL, '2022-10-20 05:52:20-04', NULL, 'c8fa31f90f1144efa13918396d00838e');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (188, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1OTU0NCwianRpIjoiY2FkYjY2NTY5NTEzNDI1MTk3NzczNTYxOWNkOGMzNTkiLCJ1c2VyX2lkIjoxfQ.ZUK1JwxZHM_nD2sKK5Q-9FBb-iOa1sp9l09CueYgvZw', '2022-10-13 05:52:24.067498-04', '2022-10-20 05:52:24-04', 1, 'cadb665695134251977735619cd8c359');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (189, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI1OTg2NywianRpIjoiODAwOGQzNzUyYThmNDQwNWJlZGE5YTZjZDc2MTEyYzkiLCJ1c2VyX2lkIjoxfQ.N8k-Rjb4P44gklzC1FTHOFBBVIRNt3boVST4cLi4rvA', NULL, '2022-10-20 05:57:47-04', NULL, '8008d3752a8f4405beda9a6cd76112c9');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (190, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI2MDIwMiwianRpIjoiMGZmMDI3OWZiNGI1NGZiZTgwNjg3ZWIxN2M3YTA1NjgiLCJ1c2VyX2lkIjoxfQ.RpeAgQJs36Y2cJBr02aE5oHQL6n_v19kbMfbUL4Ppko', NULL, '2022-10-20 06:03:22-04', NULL, '0ff0279fb4b54fbe80687eb17c7a0568');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (191, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI2NTUwMiwianRpIjoiZTgxZWYzZmFiYjk5NGY0MmE3ZDhmMjUyYjA3ODhjY2MiLCJ1c2VyX2lkIjoxfQ.yG1JHx9CbScBLshA5yWku1VYOxDpJ7eS4TbFsxwkDZo', NULL, '2022-10-20 07:31:42-04', NULL, 'e81ef3fabb994f42a7d8f252b0788ccc');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (192, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI2NTg1NiwianRpIjoiYWViODQ3MjhlMjYxNDI3OTllYWY4NWIyZmJiZGJlMWYiLCJ1c2VyX2lkIjozfQ.7gBXoAJVoAJIHo7YXggRpd5ZzW8wmu7o1dB9zn-XcX4', '2022-10-13 07:37:36.914096-04', '2022-10-20 07:37:36-04', 3, 'aeb84728e26142799eaf85b2fbbdbe1f');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (193, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI2Njg0OCwianRpIjoiODEyOWJkYjY3ZmM3NGE1ZGI4ZjdlYzkzN2FiYTk0N2MiLCJ1c2VyX2lkIjozfQ.UpV64rnQyEbVhtkuOT3umVikitlHLTLmMH_RmxovmWs', NULL, '2022-10-20 07:54:08-04', NULL, '8129bdb67fc74a5db8f7ec937aba947c');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (194, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI2NzU0OCwianRpIjoiZDNiMDU2NGFmOWZkNDI4MWIzOTM4MzRiMTM3NTg5ODMiLCJ1c2VyX2lkIjozfQ.Mi-V9CUc61rVEWq4_odWderKN4LpG9Lo2OK8mrPNbu4', NULL, '2022-10-20 08:05:48-04', NULL, 'd3b0564af9fd4281b393834b13758983');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (195, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NjI2Nzk2OCwianRpIjoiZTI5M2M5MGRlMzEyNDM2YWJjMjI0MGRiMzI0ZmY2MGQiLCJ1c2VyX2lkIjozfQ.HNoICgMrjPQ0H26-OjyC6-vOshDBuLv9u_z8xBCHLfA', NULL, '2022-10-20 08:12:48-04', NULL, 'e293c90de312436abc2240db324ff60d');

-- ----------------------------
-- Table structure for users_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."users_user";
CREATE TABLE "public"."users_user" (
  "id" int8 NOT NULL DEFAULT nextval('users_user_id_seq'::regclass),
  "password" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "last_login" timestamptz(6),
  "is_superuser" bool NOT NULL,
  "username" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "first_name" varchar(150) COLLATE "pg_catalog"."default",
  "last_name" varchar(150) COLLATE "pg_catalog"."default",
  "avatar" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "is_staff" bool NOT NULL,
  "is_verified" bool NOT NULL,
  "is_active" bool NOT NULL
)
;

-- ----------------------------
-- Records of users_user
-- ----------------------------
INSERT INTO "public"."users_user" VALUES (1, 'pbkdf2_sha256$260000$rb6cHJXeH5YttCIXgJfNss$301ZbnSOXdBVfBGAny+UmdOYCdvboXYN+/1pggLqBHU=', '2022-10-11 15:04:13.228449-04', 't', 'Rachel Peters', 'darkbear0112@gmail.com', 'Rachel', 'Peters', 'avatars/photo_2021-12-16_12-54-40_lCtaA7R.jpg', '', '2022-10-10 08:24:16.97445-04', 't', 't', 't');
INSERT INTO "public"."users_user" VALUES (2, 'pbkdf2_sha256$260000$78fZIsnOPe1ikzaYQV7e0Z$Aw1h5nIzOpjB0BBcNUqHEWAk/wHb7hkZsjkxQmaeghM=', NULL, 'f', 'simba', 'simba@gmail.com', 'Simba', 'GOO', 'avatars/neft_1.PNG', 'HEHEE', '2022-10-10 20:19:31.492226-04', 't', 't', 't');
INSERT INTO "public"."users_user" VALUES (3, 'pbkdf2_sha256$260000$go8zXx6KMGV0urmueMCWjE$c3skDfSJ2Fe6n1gGqo7CvBUO0tCNwRIltocfh1QXwaI=', NULL, 'f', 'Egor', 'egormikhail0112@gmail.com', 'Egor', 'Mikhail', 'avatars/default.png', '', '2022-10-13 07:37:36.652715-04', 'f', 'f', 't');

-- ----------------------------
-- Table structure for users_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."users_user_groups";
CREATE TABLE "public"."users_user_groups" (
  "id" int8 NOT NULL DEFAULT nextval('users_user_groups_id_seq'::regclass),
  "user_id" int8 NOT NULL,
  "group_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for users_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."users_user_user_permissions";
CREATE TABLE "public"."users_user_user_permissions" (
  "id" int8 NOT NULL DEFAULT nextval('users_user_user_permissions_id_seq'::regclass),
  "user_id" int8 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq"
OWNED BY "public"."auth_group"."id";
SELECT setval('"public"."auth_group_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_permissions_id_seq"
OWNED BY "public"."auth_group_permissions"."id";
SELECT setval('"public"."auth_group_permissions_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_permission_id_seq"
OWNED BY "public"."auth_permission"."id";
SELECT setval('"public"."auth_permission_id_seq"', 49, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_admin_log_id_seq"
OWNED BY "public"."django_admin_log"."id";
SELECT setval('"public"."django_admin_log_id_seq"', 39, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_content_type_id_seq"
OWNED BY "public"."django_content_type"."id";
SELECT setval('"public"."django_content_type_id_seq"', 13, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_migrations_id_seq"
OWNED BY "public"."django_migrations"."id";
SELECT setval('"public"."django_migrations_id_seq"', 36, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_summernote_attachment_id_seq"
OWNED BY "public"."django_summernote_attachment"."id";
SELECT setval('"public"."django_summernote_attachment_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."posts_post_id_seq"
OWNED BY "public"."posts_post"."id";
SELECT setval('"public"."posts_post_id_seq"', 12, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."posts_post_tags_id_seq"
OWNED BY "public"."posts_post_tags"."id";
SELECT setval('"public"."posts_post_tags_id_seq"', 12, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."posts_tag_id_seq"
OWNED BY "public"."posts_tag"."id";
SELECT setval('"public"."posts_tag_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."token_blacklist_blacklistedtoken_id_seq"
OWNED BY "public"."token_blacklist_blacklistedtoken"."id";
SELECT setval('"public"."token_blacklist_blacklistedtoken_id_seq"', 193, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."token_blacklist_outstandingtoken_id_seq"
OWNED BY "public"."token_blacklist_outstandingtoken"."id";
SELECT setval('"public"."token_blacklist_outstandingtoken_id_seq"', 196, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_user_groups_id_seq"
OWNED BY "public"."users_user_groups"."id";
SELECT setval('"public"."users_user_groups_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_user_id_seq"
OWNED BY "public"."users_user"."id";
SELECT setval('"public"."users_user_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_user_user_permissions_id_seq"
OWNED BY "public"."users_user_user_permissions"."id";
SELECT setval('"public"."users_user_user_permissions_id_seq"', 2, false);

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_action_flag_check" CHECK (action_flag >= 0);

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING btree (
  "expire_date" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree (
  "session_key" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "public"."django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");

-- ----------------------------
-- Primary Key structure for table django_summernote_attachment
-- ----------------------------
ALTER TABLE "public"."django_summernote_attachment" ADD CONSTRAINT "django_summernote_attachment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table posts_post
-- ----------------------------
CREATE INDEX "posts_post_author_id_fe5487bf" ON "public"."posts_post" USING btree (
  "author_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "posts_post_slug_6e9097e5_like" ON "public"."posts_post" USING btree (
  "slug" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "posts_post_title_32726515_like" ON "public"."posts_post" USING btree (
  "title" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table posts_post
-- ----------------------------
ALTER TABLE "public"."posts_post" ADD CONSTRAINT "posts_post_title_key" UNIQUE ("title");
ALTER TABLE "public"."posts_post" ADD CONSTRAINT "posts_post_slug_key" UNIQUE ("slug");

-- ----------------------------
-- Primary Key structure for table posts_post
-- ----------------------------
ALTER TABLE "public"."posts_post" ADD CONSTRAINT "posts_post_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table posts_post_tags
-- ----------------------------
CREATE INDEX "posts_post_tags_post_id_1f164920" ON "public"."posts_post_tags" USING btree (
  "post_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "posts_post_tags_tag_id_0743d52e" ON "public"."posts_post_tags" USING btree (
  "tag_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table posts_post_tags
-- ----------------------------
ALTER TABLE "public"."posts_post_tags" ADD CONSTRAINT "posts_post_tags_post_id_tag_id_9b9d69ec_uniq" UNIQUE ("post_id", "tag_id");

-- ----------------------------
-- Primary Key structure for table posts_post_tags
-- ----------------------------
ALTER TABLE "public"."posts_post_tags" ADD CONSTRAINT "posts_post_tags_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table posts_tag
-- ----------------------------
CREATE INDEX "posts_tag_name_70364ab3_like" ON "public"."posts_tag" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table posts_tag
-- ----------------------------
ALTER TABLE "public"."posts_tag" ADD CONSTRAINT "posts_tag_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table posts_tag
-- ----------------------------
ALTER TABLE "public"."posts_tag" ADD CONSTRAINT "posts_tag_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table token_blacklist_blacklistedtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_blacklistedtoken" ADD CONSTRAINT "token_blacklist_blacklistedtoken_token_id_key" UNIQUE ("token_id");

-- ----------------------------
-- Primary Key structure for table token_blacklist_blacklistedtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_blacklistedtoken" ADD CONSTRAINT "token_blacklist_blacklistedtoken_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table token_blacklist_outstandingtoken
-- ----------------------------
CREATE INDEX "token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like" ON "public"."token_blacklist_outstandingtoken" USING btree (
  "jti" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "token_blacklist_outstandingtoken_user_id_83bc629a" ON "public"."token_blacklist_outstandingtoken" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table token_blacklist_outstandingtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_outstandingtoken" ADD CONSTRAINT "token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq" UNIQUE ("jti");

-- ----------------------------
-- Primary Key structure for table token_blacklist_outstandingtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_outstandingtoken" ADD CONSTRAINT "token_blacklist_outstandingtoken_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users_user
-- ----------------------------
CREATE INDEX "users_user_email_243f6e77_like" ON "public"."users_user" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "users_user_username_06e46fe6_like" ON "public"."users_user" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users_user
-- ----------------------------
ALTER TABLE "public"."users_user" ADD CONSTRAINT "users_user_username_key" UNIQUE ("username");
ALTER TABLE "public"."users_user" ADD CONSTRAINT "users_user_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users_user
-- ----------------------------
ALTER TABLE "public"."users_user" ADD CONSTRAINT "users_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users_user_groups
-- ----------------------------
CREATE INDEX "users_user_groups_group_id_9afc8d0e" ON "public"."users_user_groups" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "users_user_groups_user_id_5f6f5a90" ON "public"."users_user_groups" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users_user_groups
-- ----------------------------
ALTER TABLE "public"."users_user_groups" ADD CONSTRAINT "users_user_groups_user_id_group_id_b88eab82_uniq" UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table users_user_groups
-- ----------------------------
ALTER TABLE "public"."users_user_groups" ADD CONSTRAINT "users_user_groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users_user_user_permissions
-- ----------------------------
CREATE INDEX "users_user_user_permissions_permission_id_0b93982e" ON "public"."users_user_user_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "users_user_user_permissions_user_id_20aca447" ON "public"."users_user_user_permissions" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."users_user_user_permissions" ADD CONSTRAINT "users_user_user_permissions_user_id_permission_id_43338c45_uniq" UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table users_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."users_user_user_permissions" ADD CONSTRAINT "users_user_user_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table posts_post
-- ----------------------------
ALTER TABLE "public"."posts_post" ADD CONSTRAINT "posts_post_author_id_fe5487bf_fk_users_user_id" FOREIGN KEY ("author_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table posts_post_tags
-- ----------------------------
ALTER TABLE "public"."posts_post_tags" ADD CONSTRAINT "posts_post_tags_post_id_1f164920_fk_posts_post_id" FOREIGN KEY ("post_id") REFERENCES "public"."posts_post" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."posts_post_tags" ADD CONSTRAINT "posts_post_tags_tag_id_0743d52e_fk_posts_tag_id" FOREIGN KEY ("tag_id") REFERENCES "public"."posts_tag" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table token_blacklist_blacklistedtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_blacklistedtoken" ADD CONSTRAINT "token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk" FOREIGN KEY ("token_id") REFERENCES "public"."token_blacklist_outstandingtoken" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table token_blacklist_outstandingtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_outstandingtoken" ADD CONSTRAINT "token_blacklist_outs_user_id_83bc629a_fk_users_use" FOREIGN KEY ("user_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table users_user_groups
-- ----------------------------
ALTER TABLE "public"."users_user_groups" ADD CONSTRAINT "users_user_groups_group_id_9afc8d0e_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."users_user_groups" ADD CONSTRAINT "users_user_groups_user_id_5f6f5a90_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table users_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."users_user_user_permissions" ADD CONSTRAINT "users_user_user_perm_permission_id_0b93982e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."users_user_user_permissions" ADD CONSTRAINT "users_user_user_permissions_user_id_20aca447_fk_users_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."users_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
