ALTER TABLE registration DROP FOREIGN KEY FK_registration_user_id
ALTER TABLE event_registration DROP FOREIGN KEY FK_event_registration_Event_id
ALTER TABLE event_registration DROP FOREIGN KEY FK_event_registration_registrations_id
DROP TABLE user
DROP TABLE event
DROP TABLE registration
DROP TABLE event_registration
DELETE FROM SEQUENCE WHERE SEQ_NAME = 'SEQ_GEN'
