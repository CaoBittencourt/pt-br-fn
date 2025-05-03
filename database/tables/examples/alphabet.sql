CREATE TABLE IF NOT EXISTS alphabetExamples (
    exampleId INTEGER PRIMARY KEY,
    example TEXT NOT NULL,
    comment TEXT DEFAULT NULL,
    letterId INTEGER NOT NULL,
    dialectId INTEGER NOT NULL,
    FOREIGN KEY (letterId) REFERENCES alphabet (letterId) ON DELETE CASCADE,
    FOREIGN KEY (dialectId) REFERENCES dialects (dialectId) ON DELETE CASCADE
);