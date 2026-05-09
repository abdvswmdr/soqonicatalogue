-- One-time cleanup: fix duplicate tags and wrong sock_tag assignments on Azure MySQL.
-- Run this once against Azure MySQL Flexible Server, then run the full dump.sql.
--
-- Safe to run even if already clean — all operations are idempotent.

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE product_images;
TRUNCATE TABLE sock_tag;
TRUNCATE TABLE tag;

SET FOREIGN_KEY_CHECKS = 1;

-- Ensure idempotency constraints exist (safe to run even if already present)
ALTER TABLE tag ADD UNIQUE KEY IF NOT EXISTS uq_tag_name (name);
ALTER TABLE product_images ADD UNIQUE KEY IF NOT EXISTS uq_product_image (sock_id, sort_order);

-- After running this, apply only the INSERT lines from dump.sql:
--   grep "INSERT IGNORE INTO" dump.sql | mysql ... socksdb
