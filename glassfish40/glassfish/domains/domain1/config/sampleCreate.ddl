CREATE TABLE user (id INTEGER NOT NULL, name VARCHAR(255), login VARCHAR(255), PRIMARY KEY (id))
CREATE TABLE event (id INTEGER NOT NULL, description VARCHAR(255), event_date DATETIME, name VARCHAR(255), PRIMARY KEY (id))
CREATE TABLE registration (id INTEGER NOT NULL, user_id INTEGER, PRIMARY KEY (id))
CREATE TABLE event_registration (Event_id INTEGER NOT NULL, registrations_id INTEGER NOT NULL, PRIMARY KEY (Event_id, registrations_id))
ALTER TABLE registration ADD CONSTRAINT FK_registration_user_id FOREIGN KEY (user_id) REFERENCES user (id)
ALTER TABLE event_registration ADD CONSTRAINT FK_event_registration_Event_id FOREIGN KEY (Event_id) REFERENCES event (id)
ALTER TABLE event_registration ADD CONSTRAINT FK_event_registration_registrations_id FOREIGN KEY (registrations_id) REFERENCES registration (id)
CREATE TABLE SEQUENCE (SEQ_NAME VARCHAR(50) NOT NULL, SEQ_COUNT DECIMAL(38), PRIMARY KEY (SEQ_NAME))
INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('SEQ_GEN', 0)
