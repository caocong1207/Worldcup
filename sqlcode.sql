psql --username=freecodecamp --dbname=postgres
create database worldcup;
\c worldcup
create table teams(
    team_id int primary key not null,
    name varchar(255) unique not null
); 
create table games(
    game_id int primary key not null,
    name varchar(255) unique not null,
    year int not null,
    round varchar(255) not null,
    winner_id int not null,
    opponent_id int not null,
    winner_goals int not null,
    opponent_goals int not null
);
alter table games add constraint fk_games_winner foreign key (winner_id) references teams(team_id);
alter table games add constraint fk_games_opponent foreign key (winner_id) references teams(team_id);