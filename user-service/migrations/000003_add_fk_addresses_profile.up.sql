-- 000003_add_fk_addresses_profile.up.sql
-- Enforce referential integrity between addresses and profiles.
-- ON DELETE CASCADE ensures that when a profile is hard-deleted all its
-- addresses are automatically removed, preventing orphaned rows.
ALTER TABLE addresses
    ADD CONSTRAINT fk_addresses_profile
    FOREIGN KEY (user_id) REFERENCES profiles(id)
    ON DELETE CASCADE;
