/* Создание таблицы */
CREATE TABLE IF NOT EXISTS `Auth`
(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `login` VARCHAR(255) NOT NULL,
    `ip` CHAR(15), /*or int(4) UNSIGNET NOT NULL*/
    `event_type` VARCHAR(16),
    `event_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/* Запросы */
-- select all IPs used for login on a specific date
SELECT `ip` FROM `Auth` WHERE DATE(`event_time`) = '2022-03-18' ORDER BY `event_time` DESC LIMIT 0,1000;

-- select all IPs used for login of a specific username
SELECT `ip` FROM `Auth` WHERE `login` = 'ipm' ORDER BY `event_time` DESC LIMIT 0,1000;

-- select all IPs that were used for more than 3 different usernames
SELECT `ip` FROM `Auth` WHERE `login` IN ('ipm', 'dev', 'player') ORDER BY `event_time` DESC LIMIT 0,1000;
