CREATE TABLE IF NOT EXISTS vowelsExamples (
    exampleId INTEGER PRIMARY KEY,
    example TEXT NOT NULL,
    comment TEXT DEFAULT NULL,
    vowelId INTEGER NOT NULL,
    dialectId INTEGER NOT NULL,
    FOREIGN KEY (vowelId) REFERENCES vowels (vowelId) ON DELETE CASCADE,
    FOREIGN KEY (dialectId) REFERENCES dialects (dialectId) ON DELETE CASCADE
);