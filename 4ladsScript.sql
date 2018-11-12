CREATE TABLE players (
   first_name    VARCHAR(1000) NOT NULL,
   last_name     VARCHAR(1000) NOT NULL,
   position VARCHAR(1000) NOT NULL,
   country VARCHAR(1000) NOT NULL,
   squad_number INT NOT NULL,
   appearances INT,
   yellow_cards INT,
   red_cards INT,
   mins_played INT,
   shots_on_target INT,
   clean_sheets INT,
   fouls_conceded INT,
   passes INT,
   percentage_of_passes_successful INT,
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
