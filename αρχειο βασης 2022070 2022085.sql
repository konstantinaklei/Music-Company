select * from songs;
select * from albums;
select * from artists;
select *  from producer;
select * from manager;
select * from change_log;



INSERT INTO artists (artist_name)
VALUES 
    ('SZA'),
    ('Vacations'),
    ('Tory Lanez'),
    ('Jack Harlow'),
    ('Travis Scott'),
    ('Chase Atlantic'),
    ('Arctic Monkeys'),
    ('Billie Eilish'),
    ('Kanye West'),
    ('The Neighbourhood'),
    ('Drake'),
    ('Aaron May'),
    ('Ariana Grande'),
    ('The Weeknd');

INSERT INTO producer (producer_id,producer_name, company_name)
VALUES 
    (4,'Carter Lang', 'Top Dawg Entertainment'),      -- SZA
    (5,'Campbell Burns', 'Human Sounds Records'),     -- Vacations
    (6,'Play Picasso', 'One Umbrella'),               -- Tory Lanez
    (7,'JetsonMade', 'Generation Now'),               -- Jack Harlow
    (8,'WondaGurl', 'Cactus Jack Records'),           -- Travis Scott
    (9,'Clinton Cave', 'Fearless Records'),           -- Chase Atlantic
    (10,'James Ford', 'Domino Recording'),             -- Arctic Monkeys
    (11,'FINNEAS', 'Darkroom Interscope'),             -- Billie Eilish
    (12,'Mike Dean', 'GOOD Music'),                    -- Kanye West
    (13,'Justyn Pilbrow', 'Columbia Records'),         -- The Neighbourhood
    (14,'Noah 40 Shebib', 'OVO Sound'),                -- Drake
    (15,'Hargo', 'Move Intention'),                    -- Aaron May
    (16,'Max Martin', 'Republic Records'),             -- Ariana Grande
    (17,'Illangelo', 'XO Records');                    -- The Weeknd


INSERT INTO manager (manager_name, phone_number, email)
VALUES 
    ('Terrence Henderson', '555-0101', 'punch@tde.com'),          -- SZA
    ('Sarah Jenkins',      '555-0102', 'sarah@mgmt.com'),         -- Vacations
    ('David Miller',       '555-0103', 'david.m@oneumbrella.com'),-- Tory Lanez
    ('Chris Thomas',       '555-0104', 'chris@generation.com'),   -- Jack Harlow
    ('David Stromberg',    '555-0105', 'david@cactusjack.com'),   -- Travis Scott
    ('Emily White',        '555-0106', 'emily@fearless.com'),     -- Chase Atlantic
    ('Ian McAndrew',       '555-0107', 'ian@wildlife.com'),       -- Arctic Monkeys
    ('Danny Rukasin',      '555-0108', 'danny@bestfriends.com'),  -- Billie Eilish
    ('John Monopoly',      '555-0109', 'john@goodmusic.com'),     -- Kanye West
    ('Michael Brown',      '555-0110', 'mike@columbia.com'),      -- The Neighbourhood
    ('Adel Nur',           '555-0111', 'future@ovo.com'),         -- Drake
    ('Jessica Davis',      '555-0112', 'jess@moveintent.com'),    -- Aaron May
    ('Scooter Braun',      '555-0113', 'scooter@sbprojects.com'), -- Ariana Grande
    ('Wassim Slaiby',      '555-0114', 'sal@xo.com');             -- The Weeknd

select * from artists;
select * from manager;

INSERT INTO albums (album_name, artist_id, genre)
VALUES 

    ('Ctrl', (SELECT artist_id FROM artists WHERE artist_name = 'SZA'), 'R&B'),
    

    ('SOS',  (SELECT artist_id FROM artists WHERE artist_name = 'SZA'), 'R&B/Pop'),

	('My Dear Melancholy' , (SELECT artist_id FROM artists WHERE artist_name = 'The Weeknd'), 'R&B'),

	('Come Home The Kids Miss You', (SELECT artist_id FROM artists WHERE artist_name = 'Jack Harlow'), 'Hip Hop'),
	('No Place Like Home', (SELECT artist_id FROM artists WHERE artist_name = 'Vacations'), 'Indie Pop'),

	('Rodeo', (SELECT artist_id FROM artists WHERE artist_name = 'Travis Scott'), 'Hip Hop'),

	('Birds in the Trap Sing McKnight', (SELECT artist_id FROM artists WHERE artist_name = 'Travis Scott'), 'Hip Hop'),
	
	('Lost in Heaven', (SELECT artist_id FROM artists WHERE artist_name = 'Chase Atlantic'), 'Alternative R&B'),

	('AM', (SELECT artist_id FROM artists WHERE artist_name = 'Arctic Monkeys'), 'Indie Rock'),

	('dont smile at me', (SELECT artist_id FROM artists WHERE artist_name = 'Billie Eilish'), 'Electropop'),

	('WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?', (SELECT artist_id FROM artists WHERE artist_name = 'Billie Eilish'), 'Electropop'),
	
	('I Love You.', (SELECT artist_id FROM artists WHERE artist_name = 'The Neighbourhood'), 'Alternative Rock'),

	('Honestly, Nevermind', (SELECT artist_id FROM artists WHERE artist_name = 'Drake'), 'Dance'),

	('CHASE', (SELECT artist_id FROM artists WHERE artist_name = 'Aaron May'), 'Hip Hop'),

	('thank u, next', (SELECT artist_id FROM artists WHERE artist_name = 'Ariana Grande'), 'Pop'),

	('Alone at Prom', (SELECT artist_id FROM artists WHERE artist_name = 'Tory Lanez'), 'Synth-pop');

select * from albums;

-- SZA: Ctrl & SOS
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('Supermodel', 181, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('Love Galore', 275, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('Doves in the Wind', 266, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('Drew Barrymore', 231, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('Prom', 196, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('The Weekend', 272, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('Go Gina', 161, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('Garden (Say It Like Dat)', 208, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('Broken Clocks', 231, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('Anything', 149, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('Normal Girl', 253, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('20 Something', 198, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='Ctrl'), 'R&B'),
('SOS', 117, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Kill Bill', 153, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Seek & Destroy', 203, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Low', 181, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Love Language', 183, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Blind', 150, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Used', 146, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Snooze', 201, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Notice Me', 160, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Gone Girl', 244, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Ghost in the Machine', 218, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('F2F', 185, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Nobody Gets Me', 180, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Conceited', 151, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Special', 174, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Too Late', 164, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Far', 180, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Shirt', 181, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Open Arms', 239, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('I Hate U', 173, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Good Days', 278, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop'),
('Forgiveless', 141, (SELECT artist_id FROM artists WHERE artist_name='SZA'), (SELECT album_id FROM albums WHERE album_name='SOS'), 'R&B/Pop');

-- The Weeknd
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('Call Out My Name', 228, (SELECT artist_id FROM artists WHERE artist_name='The Weeknd'), (SELECT album_id FROM albums WHERE album_name LIKE 'My Dear Melancholy%'), 'R&B'),
('Try Me', 221, (SELECT artist_id FROM artists WHERE artist_name='The Weeknd'), (SELECT album_id FROM albums WHERE album_name LIKE 'My Dear Melancholy%'), 'R&B'),
('Wasted Times', 220, (SELECT artist_id FROM artists WHERE artist_name='The Weeknd'), (SELECT album_id FROM albums WHERE album_name LIKE 'My Dear Melancholy%'), 'R&B'),
('I Was Never There', 241, (SELECT artist_id FROM artists WHERE artist_name='The Weeknd'), (SELECT album_id FROM albums WHERE album_name LIKE 'My Dear Melancholy%'), 'R&B'),
('Hurt You', 230, (SELECT artist_id FROM artists WHERE artist_name='The Weeknd'), (SELECT album_id FROM albums WHERE album_name LIKE 'My Dear Melancholy%'), 'R&B'),
('Privilege', 170, (SELECT artist_id FROM artists WHERE artist_name='The Weeknd'), (SELECT album_id FROM albums WHERE album_name LIKE 'My Dear Melancholy%'), 'R&B');

-- Jack Harlow
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('Talk Of The Town', 82, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Young Harleezy', 224, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Id Do Anything To Make You Smile', 193, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('First Class', 173, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Dua Lipa', 135, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Side Piece', 234, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Movie Star', 142, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Lil Secret', 129, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('I Got A Shot', 138, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Churchill Downs', 309, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Like A Blade Of Grass', 126, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Parent Trap', 189, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Poison', 222, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('Nail Tech', 205, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop'),
('State Fair', 194, (SELECT artist_id FROM artists WHERE artist_name='Jack Harlow'), (SELECT album_id FROM albums WHERE album_name='Come Home The Kids Miss You'), 'Hip Hop');

-- Vacations
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('Next Exit', 201, (SELECT artist_id FROM artists WHERE artist_name='Vacations'), (SELECT album_id FROM albums WHERE album_name='No Place Like Home'), 'Indie Pop'),
('Slow Motion', 214, (SELECT artist_id FROM artists WHERE artist_name='Vacations'), (SELECT album_id FROM albums WHERE album_name='No Place Like Home'), 'Indie Pop'),
('No Place Like Home', 205, (SELECT artist_id FROM artists WHERE artist_name='Vacations'), (SELECT album_id FROM albums WHERE album_name='No Place Like Home'), 'Indie Pop'),
('Over You', 146, (SELECT artist_id FROM artists WHERE artist_name='Vacations'), (SELECT album_id FROM albums WHERE album_name='No Place Like Home'), 'Indie Pop'),
('Midwest', 248, (SELECT artist_id FROM artists WHERE artist_name='Vacations'), (SELECT album_id FROM albums WHERE album_name='No Place Like Home'), 'Indie Pop'),
('Arizona', 120, (SELECT artist_id FROM artists WHERE artist_name='Vacations'), (SELECT album_id FROM albums WHERE album_name='No Place Like Home'), 'Indie Pop'),
('Close Quarters', 220, (SELECT artist_id FROM artists WHERE artist_name='Vacations'), (SELECT album_id FROM albums WHERE album_name='No Place Like Home'), 'Indie Pop'),
('Off-Season', 184, (SELECT artist_id FROM artists WHERE artist_name='Vacations'), (SELECT album_id FROM albums WHERE album_name='No Place Like Home'), 'Indie Pop'),
('Terms & Conditions', 244, (SELECT artist_id FROM artists WHERE artist_name='Vacations'), (SELECT album_id FROM albums WHERE album_name='No Place Like Home'), 'Indie Pop'),
('Lost in Translation', 176, (SELECT artist_id FROM artists WHERE artist_name='Vacations'), (SELECT album_id FROM albums WHERE album_name='No Place Like Home'), 'Indie Pop');

-- Travis Scott: Rodeo & Birds
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('Pornography', 231, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('Oh My Dis Side', 351, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('3500', 461, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('Wasted', 235, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('90210', 339, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('Pray 4 Love', 310, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('Nightcrawler', 236, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('Piss on Your Grave', 166, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('Antidote', 262, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('Impossible', 242, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('Maria Im Drunk', 349, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('Flying High', 208, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('I Can Tell', 235, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('Apple Pie', 219, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Rodeo'), 'Hip Hop'),
('The Ends', 201, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Way Back', 272, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Coordinate', 226, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Through The Late Night', 286, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Beibs In The Trap', 213, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('SDP Interlude', 191, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Sweet Sweet', 222, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Outside', 176, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Goosebumps', 243, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('First Take', 313, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Pick Up The Phone', 252, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Lose', 200, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Guidance', 207, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop'),
('Wonderful', 216, (SELECT artist_id FROM artists WHERE artist_name='Travis Scott'), (SELECT album_id FROM albums WHERE album_name='Birds in the Trap Sing McKnight'), 'Hip Hop');

-- Chase Atlantic
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('FAVELA', 224, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('DIE FOR ME', 206, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('RICOCHET', 197, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('YOU', 213, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('DEMON TIME', 168, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('NIGHT CALLS', 88, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('DISCONNECTED', 250, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('HOURS LOST', 229, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('MESS ME UP', 208, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('AMY', 198, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('DOUBT IT', 208, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('MAMACITA', 202, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B'),
('DONT LAUGH', 245, (SELECT artist_id FROM artists WHERE artist_name='Chase Atlantic'), (SELECT album_id FROM albums WHERE album_name='Lost in Heaven'), 'Alternative R&B');

-- Arctic Monkeys
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('Do I Wanna Know?', 272, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('R U Mine?', 201, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('One For The Road', 206, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('Arabella', 207, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('I Want It All', 184, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('No.1 Party Anthem', 243, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('Mad Sounds', 215, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('Fireside', 181, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('Whyd You Only Call Me When Youre High?', 161, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('Snap Out Of It', 193, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('Knee Socks', 257, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock'),
('I Wanna Be Yours', 184, (SELECT artist_id FROM artists WHERE artist_name='Arctic Monkeys'), (SELECT album_id FROM albums WHERE album_name='AM'), 'Indie Rock');

-- Billie Eilish: dont smile at me & WWAFAWDWG
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('Copycat', 194, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name='dont smile at me'), 'Electropop'),
('idontwannabeyouanymore', 203, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name='dont smile at me'), 'Electropop'),
('my boy', 170, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name='dont smile at me'), 'Electropop'),
('watch', 177, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name='dont smile at me'), 'Electropop'),
('party favor', 204, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name='dont smile at me'), 'Electropop'),
('bellyache', 179, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name='dont smile at me'), 'Electropop'),
('ocean eyes', 200, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name='dont smile at me'), 'Electropop'),
('hostage', 229, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name='dont smile at me'), 'Electropop'),
('!!!!!!!', 13, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('bad guy', 194, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('xanny', 243, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('you should see me in a crown', 180, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('all the good girls go to hell', 168, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('wish you were gay', 221, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('when the partys over', 196, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('8', 173, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('my strange addiction', 179, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('bury a friend', 193, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('ilomilo', 156, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('listen before i go', 242, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('i love you', 291, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop'),
('goodbye', 119, (SELECT artist_id FROM artists WHERE artist_name='Billie Eilish'), (SELECT album_id FROM albums WHERE album_name LIKE 'WHEN WE ALL FALL ASLEEP%'), 'Electropop');

-- The Neighbourhood
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('How', 314, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock'),
('Afraid', 251, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock'),
('Everybodys Watching Me (Uh Oh)', 236, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock'),
('Sweater Weather', 240, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock'),
('Let It Go', 197, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock'),
('Alleyways', 267, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock'),
('W.D.Y.W.F.M?', 252, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock'),
('Flawless', 246, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock'),
('Female Robbery', 209, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock'),
('Staying Up', 268, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock'),
('Float', 261, (SELECT artist_id FROM artists WHERE artist_name='The Neighbourhood'), (SELECT album_id FROM albums WHERE album_name='I Love You.'), 'Alternative Rock');

-- Drake
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('Intro', 36, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Falling Back', 266, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Texts Go Green', 308, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Currents', 157, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('A Keeper', 173, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Calling My Name', 129, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Sticky', 243, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Massive', 336, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Flights Booked', 254, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Overdrive', 202, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Downhill', 250, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Tie That Binds', 336, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Liability', 237, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance'),
('Jimmy Cooks', 218, (SELECT artist_id FROM artists WHERE artist_name='Drake'), (SELECT album_id FROM albums WHERE album_name='Honestly, Nevermind'), 'Dance');

-- Aaron May
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('Make It', 77, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop'),
('Dreams', 162, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop'),
('In Love', 232, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop'),
('Let Go', 176, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop'),
('Cream', 113, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop'),
('Focus (Interlude)', 112, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop'),
('Understood', 184, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop'),
('Im Good Luv, Enjoy', 134, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop'),
('One For Me', 177, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop'),
('Closed Hands', 179, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop'),
('Chase', 67, (SELECT artist_id FROM artists WHERE artist_name='Aaron May'), (SELECT album_id FROM albums WHERE album_name='CHASE'), 'Hip Hop');

-- Ariana Grande
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('imagine', 212, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('needy', 171, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('NASA', 182, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('bloodline', 216, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('fake smile', 208, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('bad idea', 267, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('make up', 140, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('ghostin', 271, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('in my head', 222, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('7 rings', 178, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('thank u, next', 207, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop'),
('break up with your girlfriend, im bored', 190, (SELECT artist_id FROM artists WHERE artist_name='Ariana Grande'), (SELECT album_id FROM albums WHERE album_name='thank u, next'), 'Pop');

-- Tory Lanez
INSERT INTO songs (song_name, duration, artist_id, album_id, genre) VALUES 
('Enchanted Waterfall', 191, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop'),
('Pink Dolphin Sunset', 212, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop'),
('Midnights Interlude', 115, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop'),
('The Color Violet', 226, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop'),
('Lavender Sunflower', 151, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop'),
('Ballad Of A Badman', 254, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop'),
('Lady Of Namek', 193, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop'),
('Plutos Last Comet', 211, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop'),
('87 Stingray', 141, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop'),
('Hurt From Mercury', 203, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop'),
('Last Kiss Of Nebulon', 258, (SELECT artist_id FROM artists WHERE artist_name='Tory Lanez'), (SELECT album_id FROM albums WHERE album_name='Alone at Prom'), 'Synth-pop');

select * from songs;

-- ξεκιναω τα εναυσματα
ALTER TABLE albums 
ADD total_duration INT DEFAULT 0;

UPDATE albums
SET total_duration = (
    SELECT COALESCE(SUM(duration), 0)
    FROM songs
    WHERE songs.album_id = albums.album_id
);
SELECT * FROM albums;


CREATE OR REPLACE FUNCTION update_album_duration_func() 
RETURNS TRIGGER AS $$
BEGIN
  
    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
        UPDATE albums 
        SET total_duration = (SELECT COALESCE(SUM(duration), 0) FROM songs WHERE album_id = NEW.album_id)
        WHERE album_id = NEW.album_id;
    END IF;

   
    IF (TG_OP = 'DELETE' OR (TG_OP = 'UPDATE' AND OLD.album_id IS DISTINCT FROM NEW.album_id)) THEN
        UPDATE albums 
        SET total_duration = (SELECT COALESCE(SUM(duration), 0) FROM songs WHERE album_id = OLD.album_id)
        WHERE album_id = OLD.album_id;
    END IF;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_duration
AFTER INSERT OR UPDATE OR DELETE ON songs
FOR EACH ROW
EXECUTE FUNCTION update_album_duration_func();

SELECT * FROM albums;
--υπολοιπες διαδικασιες



CREATE OR REPLACE FUNCTION add_genre_to_track(p_track_id INT, p_genre_name VARCHAR)
RETURNS VOID AS $$
DECLARE
    v_genre_id INT;
BEGIN
   
    SELECT genre_id INTO v_genre_id FROM genres WHERE name = p_genre_name;
    
    IF v_genre_id IS NULL THEN
        INSERT INTO genres(name) VALUES (p_genre_name) RETURNING genre_id INTO v_genre_id;
    END IF;

 
    INSERT INTO track_genres(track_id, genre_id)
    VALUES (p_track_id, v_genre_id)
    ON CONFLICT DO NOTHING;
END;
$$ LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION validate_track_duration()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.duration_seconds <= 0 THEN
        RAISE EXCEPTION 'Η διάρκεια του τραγουδιού πρέπει να είναι μεγαλύτερη από 0 δευτερόλεπτα.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_duration_trigger
BEFORE INSERT OR UPDATE ON tracks
FOR EACH ROW EXECUTE FUNCTION validate_track_duration();

ALTER TABLE albums ADD COLUMN track_count INT DEFAULT 0;

CREATE OR REPLACE FUNCTION update_track_count()
RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
       
        UPDATE albums SET track_count = track_count + 1 WHERE album_id = NEW.album_id;
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        
        UPDATE albums SET track_count = track_count - 1 WHERE album_id = OLD.album_id;
        RETURN OLD;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER track_counter_trigger
AFTER INSERT OR DELETE ON tracks
FOR EACH ROW EXECUTE FUNCTION update_track_count();
-- ξεκιναω τια διαδικασιες για add delete update
--ADD
CREATE OR REPLACE PROCEDURE add_song(
    p_song_name VARCHAR, 
    p_duration INT, 
    p_artist_id INT, 
    p_album_id INT, 
    p_genre VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO songs (song_name, duration, artist_id, album_id, genre) 
    VALUES (p_song_name, p_duration, p_artist_id, p_album_id, p_genre);
END;
$$;

--UPDATE
CREATE OR REPLACE PROCEDURE update_song(
    p_track_id INT,
    p_song_name VARCHAR, 
    p_duration INT, 
    p_artist_id INT, 
    p_album_id INT, 
    p_genre VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE songs 
    SET song_name = p_song_name, 
        duration = p_duration, 
        artist_id = p_artist_id, 
        album_id = p_album_id, 
        genre = p_genre
    WHERE track_id = p_track_id;
END;
$$;

--DELETE
CREATE OR REPLACE PROCEDURE delete_song(p_track_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM songs WHERE track_id = p_track_id;
END;
$$;


--διαδικασιες για τα αλμπουμ
CREATE OR REPLACE PROCEDURE add_album(
    p_album_name VARCHAR,
    p_artist_id INT,
    p_genre VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO albums (album_name, artist_id, genre)
    VALUES (p_album_name, p_artist_id, p_genre);
END;
$$;

CREATE OR REPLACE PROCEDURE delete_album(p_album_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    
    DELETE FROM albums WHERE album_id = p_album_id;
END;
$$;

CREATE OR REPLACE PROCEDURE delete_album(p_album_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    
    DELETE FROM albums WHERE album_id = p_album_id;
END;
$$;



--LOAD
CREATE OR REPLACE FUNCTION load_artists()
RETURNS TABLE (
    artist_name TEXT,
    number_of_songs INT,
    number_of_albums INT,
    producer_name TEXT,
    manager_name TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT a.artist_name,
           COUNT(DISTINCT s.track_id)::INT,
           COUNT(DISTINCT al.album_id)::INT,
           p.producer_name,
           m.manager_name
    FROM artists a
    LEFT JOIN songs s ON s.artist_id = a.artist_id
    LEFT JOIN albums al ON al.artist_id = a.artist_id
    LEFT JOIN producer p ON p.producer_id = a.producer_id
    LEFT JOIN manager m ON m.manager_id = a.manager_id
    GROUP BY a.artist_name, p.producer_name, m.manager_name
    ORDER BY a.artist_name;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION load_songs()
RETURNS TABLE (
    track_id INT,
    song_name TEXT,
    duration INT,
    artist_name TEXT,
    album_name TEXT,
    genre TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT s.track_id,
           s.song_name,
           s.duration,
           ar.artist_name,
           al.album_name,
           s.genre
    FROM songs s
    LEFT JOIN artists ar ON ar.artist_id = s.artist_id
    LEFT JOIN albums al ON al.album_id = s.album_id
    ORDER BY s.song_name;
END;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION load_albums()
RETURNS TABLE (
    album_id INT,
    album_name TEXT,
    song_number INT,
    formatted_total_duration TEXT,
    genre TEXT,
    artist_name TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT al.album_id,
           al.album_name,
           al.track_count,
           COALESCE(
               TO_CHAR(al.total_duration * INTERVAL '1 second', 'FM MI:SS'),
               '0:00'
           ),
           al.genre,
           ar.artist_name
    FROM albums al
    LEFT JOIN artists ar ON ar.artist_id = al.artist_id
    ORDER BY al.album_name;
END;
$$ LANGUAGE plpgsql;

--LOAD producers
CREATE OR REPLACE FUNCTION load_producers()
RETURNS TABLE (
    producer_name TEXT,
    company_name TEXT,
    song_number INT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT p.producer_name,
           p.company_name,
           COUNT(s.track_id)::INT
    FROM producer p
    LEFT JOIN artists a ON a.producer_id = p.producer_id
    LEFT JOIN songs s ON s.artist_id = a.artist_id
    GROUP BY p.producer_name, p.company_name
    ORDER BY p.producer_name;
END;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION load_managers()
RETURNS TABLE (
    manager_name TEXT,
    phone_number TEXT,
    email TEXT,
    number_of_artists INT,
    number_of_producers INT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT m.manager_name,
           m.phone_number,
           m.email,
           COUNT(DISTINCT a.artist_id)::INT,
           COUNT(DISTINCT a.producer_id)::INT
    FROM manager m
    LEFT JOIN artists a ON a.manager_id = m.manager_id
    GROUP BY m.manager_name, m.phone_number, m.email
    ORDER BY m.manager_name;
END;
$$ LANGUAGE plpgsql;

--***************
CREATE OR REPLACE FUNCTION load_songs()
RETURNS TABLE (
    track_id INT,
    song_name TEXT,
    duration INT,
    artist_name TEXT,
    album_name TEXT,
    genre TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        s.track_id,
        s.song_name::TEXT,
        s.duration,
        ar.artist_name::TEXT,
        al.album_name::TEXT,
        s.genre::TEXT
    FROM songs s
    LEFT JOIN artists ar ON ar.artist_id = s.artist_id
    LEFT JOIN albums al ON al.album_id = s.album_id
    ORDER BY s.song_name;
END;
$$ LANGUAGE plpgsql;

-------
CREATE OR REPLACE FUNCTION load_artists()
RETURNS TABLE (
    artist_name TEXT,
    number_of_songs INT,
    number_of_albums INT,
    producer_name TEXT,
    manager_name TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        a.artist_name::TEXT,
        COUNT(DISTINCT s.track_id)::INT,
        COUNT(DISTINCT al.album_id)::INT,
        p.producer_name::TEXT,
        m.manager_name::TEXT
    FROM artists a
    LEFT JOIN songs s ON s.artist_id = a.artist_id
    LEFT JOIN albums al ON al.artist_id = a.artist_id
    LEFT JOIN producer p ON p.producer_id = a.producer_id
    LEFT JOIN manager m ON m.manager_id = a.manager_id
    GROUP BY a.artist_name, p.producer_name, m.manager_name
    ORDER BY a.artist_name;
END;
$$ LANGUAGE plpgsql;
------
CREATE OR REPLACE FUNCTION load_albums()
RETURNS TABLE (
    album_id INT,
    album_name TEXT,
    song_number INT,
    formatted_total_duration TEXT,
    genre TEXT,
    artist_name TEXT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        al.album_id,
        al.album_name::TEXT,
        al.track_count,
        COALESCE(
            TO_CHAR(al.total_duration * INTERVAL '1 second', 'FM MI:SS'),
            '0:00'
        )::TEXT,
        al.genre::TEXT,
        ar.artist_name::TEXT
    FROM albums al
    LEFT JOIN artists ar ON ar.artist_id = al.artist_id
    ORDER BY al.album_name;
END;
$$ LANGUAGE plpgsql;
--********
CREATE OR REPLACE FUNCTION load_producers()
RETURNS TABLE (
    producer_name TEXT,
    company_name TEXT,
    song_number INT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.producer_name::TEXT,
        p.company_name::TEXT,
        COUNT(s.track_id)::INT
    FROM producer p
    LEFT JOIN artists a ON a.producer_id = p.producer_id
    LEFT JOIN songs s ON s.artist_id = a.artist_id
    GROUP BY p.producer_name, p.company_name
    ORDER BY p.producer_name;
END;
$$ LANGUAGE plpgsql;
-----
CREATE OR REPLACE FUNCTION load_managers()
RETURNS TABLE (
    manager_name TEXT,
    phone_number TEXT,
    email TEXT,
    number_of_artists INT,
    number_of_producers INT
)
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        m.manager_name::TEXT,
        m.phone_number::TEXT,
        m.email::TEXT,
        COUNT(DISTINCT a.artist_id)::INT,
        COUNT(DISTINCT a.producer_id)::INT
    FROM manager m
    LEFT JOIN artists a ON a.manager_id = m.manager_id
    GROUP BY m.manager_name, m.phone_number, m.email
    ORDER BY m.manager_name;
END;
$$ LANGUAGE plpgsql;
--***********************************
