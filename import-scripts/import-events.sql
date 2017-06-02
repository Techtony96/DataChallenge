DROP TABLE IF EXISTS Events;

CREATE TABLE Events
(
    eventTime TIMESTAMP,
    userId int,
    eventType VARCHAR(255)
);

LOAD DATA LOCAL INFILE 'DeveloperInteractionLogs/AllEvents.csv'
INTO TABLE Events
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
--    ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES -- Skip header
(eventTime, userId, eventType);
SHOW warnings;
