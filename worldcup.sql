psql --username=freecodecamp --dbname=postgres
create database worldcup;
\c worldcup
create table teams(
    team_id int primary key not null,
    name varchar(50) unique not null
); 
create table games(
    game_id int primary key not null,
    name varchar(50) unique not null,
    year int not null,
    round varchar(50) not null,
    winner_id int not null,
    foreign key(winner_id) references teams(team_id),
    opponent_id int not null,
    foreign key(opponent_id) references teams(team_id),
    winner_goals int not null,
    opponent_goals int not null
);