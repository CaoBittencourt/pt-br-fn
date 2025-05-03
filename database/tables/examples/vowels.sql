CREATE TABLE IF NOT EXISTS vowelsExamples (
    exapleId INTEGER PRIMARY KEY,
    example TEXT NOT NULL,
    vowelId INTEGER NOT NULL,
    comment TEXT DEFAULT NULL,
    FOREIGN KEY (vowelId) REFERENCES vowels (vowelId) ON DELETE CASCADE
);