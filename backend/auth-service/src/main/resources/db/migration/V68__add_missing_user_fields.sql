-- V68: Add missing columns to users table required by user-service schema validation.
ALTER TABLE users ADD COLUMN IF NOT EXISTS bio TEXT;
ALTER TABLE users ADD COLUMN IF NOT EXISTS rating DOUBLE PRECISION DEFAULT 0.0;
ALTER TABLE users ADD COLUMN IF NOT EXISTS completed_jobs_count INTEGER DEFAULT 0;
