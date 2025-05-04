-- aeiou
CREATE TABLE IF NOT EXISTS _vowels (
    letterId INTEGER NOT NULL,
    FOREIGN KEY (letterId) REFERENCES alphabet (letterId) ON DELETE CASCADE
);

-- -- all vowel sounds
-- CREATE TABLE IF NOT EXISTS vowels (
--     vowelId INTEGER PRIMARY KEY,
--     uppercase TEXT NOT NULL,
--     lowercase TEXT NOT NULL,
--     vowel TEXT NOT NULL,
--     letterId INTEGER NOT NULL,
--     FOREIGN KEY (letterId) REFERENCES _vowels (letterId) ON DELETE CASCADE
-- );