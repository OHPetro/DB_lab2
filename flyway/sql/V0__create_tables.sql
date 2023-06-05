CREATE TABLE locations (
  location_id SERIAL PRIMARY KEY,
  name_of_building TEXT UNIQUE,
  regname TEXT,
  areaname TEXT,
  tername TEXT
);


CREATE TABLE eo (
  eo_id SERIAL PRIMARY KEY,
  eoname text unique,
  eotypename text,
  eoparent text,
  location_id  int,
  FOREIGN KEY (location_id) REFERENCES Locations(location_id)
);


CREATE TABLE Students (
  outid text PRIMARY KEY,
  birth int,
  sextypename text,
  regname text,
  areaname  text,
  tername  text,
  regtypename  text,
  tertypename  text,
  classprofilename  text,
  classlangname  text,
  eo_id  int,
  FOREIGN KEY (eo_id) REFERENCES eo(eo_id)
);


CREATE TABLE Marks (
  outid  text,
  ukrteststatus text,	
  ukrball100 text,
  ukrball12 text,
  ukrball text,
  ukradaptscale text,
 histteststatus text,	
  histball100 text,
  histball12 text,
  histball text,
 mathteststatus text,	
  mathball100 text,
  mathball12 text,
  mathball text,
 physteststatus text,	
  physball100 text,
  physball12 text,
  physball text,
 chemteststatus text,	
  chemball100 text,
  chemball12 text,
  chemball text,
 bioteststatus text,	
  bioball100 text,
  bioball12 text,
  bioball text,
 geoteststatus text,	
  geoball100 text,
  geoball12 text,
  geoball text,
 engteststatus text,	
  engball100 text,
  engball12 text,
  engball text,
 frateststatus text,	
  fraball100 text,
  fraball12 text,
  fraball text,
 deuteststatus text,	
  deuball100 text,
  deuball12 text,
  deuball text,
 spateststatus text,	
  spaball100 text,
  spaball12 text,
  spaball text,
  FOREIGN KEY (outid) REFERENCES Students(outid)
);



CREATE TABLE zno_locations (
  outid  text ,
  test_name text,
  test_lang text,
  location_id int,
  FOREIGN KEY (outid) REFERENCES Students(outid),
  FOREIGN KEY (location_id) REFERENCES Locations(location_id)
);

