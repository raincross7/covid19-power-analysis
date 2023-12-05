CREATE TABLE analysis_data(
	local_id INT NOT NULL,
	`year`   TEXT NOT NULL,
	home     DECIMAL(10,6) NOT NULL,
	office   DECIMAL(10,6) NOT NULL,
	industry DECIMAL(10,6) NOT NULL,

	CONSTRAINT `FK_analysis_loc` FOREIGN KEY (`local_id`) REFERENCES `loc` (`local_id`)
);

CREATE TABLE crisis_data(
	local_id  INT NOT NULL,
	`year`    TEXT NOT NULL,
	home      DECIMAL(10,6) NOT NULL,
	office    DECIMAL(10,6) NOT NULL,
	industry  DECIMAL(10,6) NOT NULL,
	min_value TEXT NOT NULL,

	CONSTRAINT `FK_crisis_loc` FOREIGN KEY (`local_id`) REFERENCES `loc` (`local_id`)
);