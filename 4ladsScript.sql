CREATE TABLE players (
   first_name    VARCHAR(1000) NOT NULL,
   last_name     VARCHAR(1000) NOT NULL,
   position VARCHAR(1000) NOT NULL,
   country VARCHAR(1000) NOT NULL,
   squad_number INT NOT NULL,
   league_appearances INT,
   league_yellow_cards INT,
   league_red_cards INT,
   league_mins_played INT,
   league_shots_on_target INT,
   league_clean_sheets INT,
   league_fouls_conceded INT,
   league_passes INT,
   league_percentage_of_passes_successful INT,
   scottish_cup_appearances INT,
   scottish_cup_yellow_cards INT,
   scottish_cup_red_cards INT,
   scottish_cup_mins_played INT,
   scottish_cup_shots_on_target INT,
   scottish_cup_clean_sheets INT,
   scottish_cup_fouls_conceded INT,
   scottish_cup_passes INT,
   scottish_cup_percentage_of_passes_successful INT,
   league_cup_appearances INT,
   league_cup_yellow_cards INT,
   league_cup_red_cards INT,
   league_cup_mins_played INT,
   league_cup_shots_on_target INT,
   league_cup_clean_sheets INT,
   league_cup_fouls_conceded INT,
   league_cup_passes INT,
   league_cup_percentage_of_passes_successful INT,
   europe_appearances INT,
   europe_yellow_cards INT,
   europe_red_cards INT,
   europe_mins_played INT,
   europe_shots_on_target INT,
   europe_clean_sheets INT,
   europe_fouls_conceded INT,
   europe_passes INT,
   europe_percentage_of_passes_successful INT,
   date_of_birth DATE, 
   picture VARCHAR(200),          
   player_id SERIAL,
   PRIMARY KEY (player_id)
);

CREATE TABLE competitions (
   name VARCHAR(100),
   PRIMARY KEY (name)
);


CREATE TABLE fixtures (
    fixture_id SERIAL,
   opposition VARCHAR(1000) NOT NULL,
   date_of_match DATE NOT NULL,
   competition VARCHAR(100) NOT NULL REFERENCES competitions (name),
   home BOOLEAN NOT NULL,
   result VARCHAR(10),
   venue VARCHAR(100) NOT NULL,
   referee VARCHAR(100),
   line_up json,
   PRIMARY KEY (fixture_id)
);

INSERT INTO competitions (name) VALUES ('Scottish Premiership'); 
INSERT INTO competitions (name) VALUES ('Scottish Cup');
INSERT INTO competitions (name) VALUES ('Scottish League Cup');
INSERT INTO competitions (name) VALUES ('Europa League');   
