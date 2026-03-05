-- 000003_add_fk_addresses_profile.down.sql
ALTER TABLE addresses DROP CONSTRAINT IF EXISTS fk_addresses_profile;
