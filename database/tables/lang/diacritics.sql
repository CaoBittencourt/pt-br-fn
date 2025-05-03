CREATE TABLE IF NOT EXISTS diacritics (
    diacriticId INTEGER PRIMARY KEY,
    mark TEXT NOT NULL,
    diacritic TEXT NOT NULL,
    effect TEXT DEFAULT NULL
);