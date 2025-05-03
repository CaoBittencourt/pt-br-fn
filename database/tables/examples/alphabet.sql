CREATE TABLE IF NOT EXISTS alphabetExamples (
    exapleId INTEGER PRIMARY KEY,
    example TEXT NOT NULL,
    letterId INTEGER NOT NULL,
    comment TEXT DEFAULT NULL,
    FOREIGN KEY (letterId) REFERENCES alphabet (letterId) ON DELETE CASCADE
);