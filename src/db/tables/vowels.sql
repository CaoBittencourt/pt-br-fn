CREATE TABLE IF NOT EXISTS vowels (
    vowelId INTEGER PRIMARY KEY,
    uppercase TEXT NOT NULL,
    lowercase TEXT NOT NULL,
    vowel TEXT NOT NULL,
    letterId INTEGER NOT NULL,
    FOREIGN KEY (letterId) REFERENCES alphabet (letterId) ON DELETE CASCADE
);