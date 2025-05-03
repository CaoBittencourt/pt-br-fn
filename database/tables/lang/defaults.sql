CREATE TABLE IF NOT EXISTS vowelsDefaults (
    vowelId INTEGER NOT NULL,
    dialectId INTEGER NOT NULL,
    defaultSound TEXT NOT NULL,
    comment TEXT DEFAULT NULL,
    PRIMARY KEY (vowelId, dialectId),
    FOREIGN KEY (dialectId) REFERENCES dialects (dialectId) ON DELETE CASCADE,
    FOREIGN KEY (vowelId) REFERENCES vowels (vowelId) ON DELETE CASCADE
);
