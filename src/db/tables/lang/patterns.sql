CREATE TABLE IF NOT EXISTS patterns (
    patternId INTEGER PRIMARY KEY,
    dialectId INTEGER NOT NULL,
    [from] TEXT NOT NULL,
    [to] TEXT NOT NULL,
    FOREIGN KEY (dialectId) REFERENCES dialects (dialectId) ON DELETE CASCADE
);