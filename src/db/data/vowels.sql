-- a
INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
SELECT
    uppercase,
    lowercase,
    letter AS vowel,
    letterId
FROM
    alphabet
WHERE
    letterId = 1;

INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
VALUES
    ('Á', 'á', 'A Agudo', 1),
    ('À', 'à', 'A Grave', 1),
    ('Ã', 'ã', 'A Nasal', 1),
    ('Ä', 'ä', 'A Duplo', 1);

-- e
INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
SELECT
    uppercase,
    lowercase,
    letter AS vowel,
    letterId
FROM
    alphabet
WHERE
    letterId = 5;

INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
VALUES
    ('É', 'é', 'E Agudo', 5),
    ('È', 'è', 'E Grave', 5),
    ('Ë', 'ë', 'E Duplo', 5);

-- i
INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
SELECT
    uppercase,
    lowercase,
    letter AS vowel,
    letterId
FROM
    alphabet
WHERE
    letterId = 9;

INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
VALUES
    ('Í', 'í', 'I Agudo', 9),
    ('Ĩ', 'ĩ', 'I Nasal', 9),
    ('Ï', 'ï', 'I Duplo', 9),
    ('Î', 'î', 'I Agudo-Grave', 9);

-- o
INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
SELECT
    uppercase,
    lowercase,
    letter AS vowel,
    letterId
FROM
    alphabet
WHERE
    letterId = 14;

INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
VALUES
    ('Ó', 'ó', 'O Agudo', 14),
    ('Ò', 'ò', 'O Grave', 14),
    ('Ö', 'ö', 'O Duplo', 14);

-- u
INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
SELECT
    uppercase,
    lowercase,
    letter AS vowel,
    letterId
FROM
    alphabet
WHERE
    letterId = 20;

INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
VALUES
    ('Ú', 'ú', 'U Agudo', 20),
    ('Ũ', 'ũ', 'U Nasal', 20),
    ('Ü', 'ü', 'U Duplo', 20),
    ('Û', 'û', 'U Agudo-Grave', 20);