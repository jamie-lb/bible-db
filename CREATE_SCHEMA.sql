create table testaments(
    id serial primary key,
    description varchar
);

insert into testaments(description) values('Old Testament');
insert into testaments(description) values('New Testament');

create table books (
    id serial primary key,
    title varchar,
    testament_id int not null references testaments(id)
);

insert into books(title, testament_id) values('Genesis', 1);
insert into books(title, testament_id) values('Exodus', 1);
insert into books(title, testament_id) values('Leviticus', 1);
insert into books(title, testament_id) values('Numbers', 1);
insert into books(title, testament_id) values('Deuteronomy', 1);
insert into books(title, testament_id) values('Joshua', 1);
insert into books(title, testament_id) values('Judges', 1);
insert into books(title, testament_id) values('Ruth', 1);
insert into books(title, testament_id) values('1 Samuel', 1);
insert into books(title, testament_id) values('2 Samuel', 1);
insert into books(title, testament_id) values('1 Kings', 1);
insert into books(title, testament_id) values('2 Kings', 1);
insert into books(title, testament_id) values('1 Chronicles', 1);
insert into books(title, testament_id) values('2 Chronicles', 1);
insert into books(title, testament_id) values('Ezra', 1);
insert into books(title, testament_id) values('Nehemiah', 1);
insert into books(title, testament_id) values('Esther', 1);
insert into books(title, testament_id) values('Job', 1);
insert into books(title, testament_id) values('Psalm', 1);
insert into books(title, testament_id) values('Proverbs', 1);
insert into books(title, testament_id) values('Ecclesiastes', 1);
insert into books(title, testament_id) values('Song of Solomon', 1);
insert into books(title, testament_id) values('Isaiah', 1);
insert into books(title, testament_id) values('Jeremiah', 1);
insert into books(title, testament_id) values('Lamentations', 1);
insert into books(title, testament_id) values('Ezekiel', 1);
insert into books(title, testament_id) values('Daniel', 1);
insert into books(title, testament_id) values('Hosea', 1);
insert into books(title, testament_id) values('Joel', 1);
insert into books(title, testament_id) values('Amos', 1);
insert into books(title, testament_id) values('Obadiah', 1);
insert into books(title, testament_id) values('Jonah', 1);
insert into books(title, testament_id) values('Micah', 1);
insert into books(title, testament_id) values('Nahum', 1);
insert into books(title, testament_id) values('Habakkuk', 1);
insert into books(title, testament_id) values('Zephaniah', 1);
insert into books(title, testament_id) values('Haggai', 1);
insert into books(title, testament_id) values('Zechariah', 1);
insert into books(title, testament_id) values('Malachi', 1);
insert into books(title, testament_id) values('Matthew', 2);
insert into books(title, testament_id) values('Mark', 2);
insert into books(title, testament_id) values('Luke', 2);
insert into books(title, testament_id) values('John', 2);
insert into books(title, testament_id) values('Acts', 2);
insert into books(title, testament_id) values('Romans', 2);
insert into books(title, testament_id) values('1 Corinthians', 2);
insert into books(title, testament_id) values('2 Corinthians', 2);
insert into books(title, testament_id) values('Galatians', 2);
insert into books(title, testament_id) values('Ephesians', 2);
insert into books(title, testament_id) values('Philippians', 2);
insert into books(title, testament_id) values('Colossians', 2);
insert into books(title, testament_id) values('1 Thessalonians', 2);
insert into books(title, testament_id) values('2 Thessalonians', 2);
insert into books(title, testament_id) values('1 Timothy', 2);
insert into books(title, testament_id) values('2 Timothy', 2);
insert into books(title, testament_id) values('Titus', 2);
insert into books(title, testament_id) values('Philemon', 2);
insert into books(title, testament_id) values('Hebrews', 2);
insert into books(title, testament_id) values('James', 2);
insert into books(title, testament_id) values('1 Peter', 2);
insert into books(title, testament_id) values('2 Peter', 2);
insert into books(title, testament_id) values('1 John', 2);
insert into books(title, testament_id) values('2 John', 2);
insert into books(title, testament_id) values('3 John', 2);
insert into books(title, testament_id) values('Jude', 2);
insert into books(title, testament_id) values('Revelation', 2);

create table verses (
    id serial primary key,
    verse_text varchar not null,
    book_id int not null references books(id),
    chapter_number int not null,
    verse_number int not null
);
