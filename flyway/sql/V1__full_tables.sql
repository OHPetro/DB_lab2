



INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT ukrptname, ukrptregname, ukrptareaname, ukrpttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;


INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT histptname, histptregname, histptareaname, histpttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;


INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT eoname, eoregname, eoareaname, eotername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;


INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT mathptname, mathptregname, mathptareaname, mathpttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;

INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT physptname, physptregname, physptareaname, physpttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;

INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT chemptname, chemptregname, chemptareaname, chempttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;



INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT bioptname, bioptregname, bioptareaname, biopttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;


INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT geoptname, geoptregname, geoptareaname, geopttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;


INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT engptname, engptregname, engptareaname, engpttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;


INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT fraptname, fraptregname, fraptareaname, frapttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;


INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT deuptname, deuptregname, deuptareaname, deupttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;


INSERT INTO Locations (name_of_building, regname, areaname, tername)
SELECT spaptname, spaptregname, spaptareaname, spapttername
FROM Opendata2020
ON CONFLICT (name_of_building) DO NOTHING;










INSERT INTO eo (eoname,eotypename,eoparent,location_id)
SELECT eoname,eotypename,eoparent ,(SELECT location_id FROM Locations WHERE testtt2.eoname =name_of_building)
FROM Opendata2020
ON CONFLICT (eoname) DO NOTHING;







INSERT INTO Students (outid,birth,sextypename,regname,areaname,tername,regtypename,tertypename,classprofilename,classlangname,eo_id)
SELECT outid,birth,sextypename,regname,areaname,tername,regtypename,tertypename,classprofilename,classlangname,(SELECT eo_id FROM eo WHERE testtt2.eoname = eoname)
FROM Opendata2020;








INSERT INTO Marks (outid, ukrteststatus, ukrball100, ukrball12, ukrball, ukradaptscale, histteststatus, histball100, histball12, histball, mathteststatus, mathball100, mathball12, mathball, physteststatus, physball100, physball12, physball, chemteststatus, chemball100, chemball12, chemball, bioteststatus, bioball100, bioball12, bioball, geoteststatus, geoball100, geoball12, geoball, engteststatus, engball100, engball12, engball, frateststatus, fraball100, fraball12, fraball, deuteststatus, deuball100, deuball12, deuball, spateststatus, spaball100, spaball12, spaball)
SELECT outid, ukrteststatus, ukrball100, ukrball12, ukrball, ukradaptscale, histteststatus, histball100, histball12, histball, mathteststatus, mathball100, mathball12, mathball, physteststatus, physball100, physball12, physball, chemteststatus, chemball100, chemball12, chemball, bioteststatus, bioball100, bioball12, bioball, geoteststatus, geoball100, geoball12, geoball, engteststatus, engball100, engball12, engball, frateststatus, fraball100, fraball12, fraball, deuteststatus, deuball100, deuball12, deuball, spateststatus, spaball100, spaball12, spaball
FROM Opendata2020;











INSERT INTO zno_locations (outid,test_name,location_id)
SELECT outid, ukrtest,(SELECT location_id FROM Locations WHERE testtt2.ukrptname = name_of_building)
FROM Opendata2020;

INSERT INTO zno_locations (outid,test_name,test_lang,location_id)
SELECT outid, mathtest,mathlang,(SELECT location_id FROM Locations WHERE testtt2.mathptname = name_of_building)
FROM Opendata2020;

INSERT INTO zno_locations (outid,test_name,test_lang,location_id)
SELECT outid, histtest,histlang,(SELECT location_id FROM Locations WHERE testtt2.histptname = name_of_building)
FROM Opendata2020;

INSERT INTO zno_locations (outid,test_name,test_lang,location_id)
SELECT outid, phystest,physlang,(SELECT location_id FROM Locations WHERE testtt2.physptname = name_of_building)
FROM Opendata2020;

INSERT INTO zno_locations (outid,test_name,test_lang,location_id)
SELECT outid, chemtest,chemlang,(SELECT location_id FROM Locations WHERE testtt2.chemptname = name_of_building)
FROM Opendata2020;

INSERT INTO zno_locations (outid,test_name,test_lang,location_id)
SELECT outid, biotest,biolang,(SELECT location_id FROM Locations WHERE testtt2.bioptname = name_of_building)
FROM Opendata2020;

INSERT INTO zno_locations (outid,test_name,test_lang,location_id)
SELECT outid, geotest,geolang,(SELECT location_id FROM Locations WHERE testtt2.geoptname = name_of_building)
FROM Opendata2020;

INSERT INTO zno_locations (outid,test_name,location_id)
SELECT outid, engtest,(SELECT location_id FROM Locations WHERE testtt2.engptname = name_of_building)
FROM Opendata2020;


INSERT INTO zno_locations (outid,test_name,location_id)
SELECT outid, fratest,(SELECT location_id FROM Locations WHERE testtt2.fraptname = name_of_building)
FROM Opendata2020;

INSERT INTO zno_locations (outid,test_name,location_id)
SELECT outid, deutest,(SELECT location_id FROM Locations WHERE testtt2.deuptname = name_of_building)
FROM Opendata2020;

INSERT INTO zno_locations (outid,test_name,location_id)
SELECT outid, spatest,(SELECT location_id FROM Locations WHERE testtt2.spaptname = name_of_building)
FROM Opendata2020;








