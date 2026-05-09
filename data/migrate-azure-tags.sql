-- One-time cleanup: fix duplicate tags and wrong sock_tag assignments on Azure MySQL.
-- Run this once against Azure MySQL Flexible Server, then run the full dump.sql.
--
-- Safe to run even if already clean — all operations are idempotent.

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE sock_tag;
TRUNCATE TABLE tag;

SET FOREIGN_KEY_CHECKS = 1;

-- After running this, apply the full dump.sql which now uses:
--   INSERT IGNORE INTO tag  (safe with UNIQUE constraint)
--   INSERT IGNORE INTO sock_tag ... SELECT tag_id FROM tag WHERE name = '...'
