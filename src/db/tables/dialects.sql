CREATE TABLE IF NOT EXISTS dialects (
    dialectId INTEGER PRIMARY KEY,
    iso TEXT NOT NULL CHECK (iso like '__-__'),
    dialect TEXT NOT NULL
);