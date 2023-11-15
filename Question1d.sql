CREATE TABLE equipment(
    equipment_id VARCHAR(10) NOT NULL,
    equipment_type VARCHAR(100) NOT NULL,
    acquisition_year INT, 
	total_quantity INT NOT NULL,
	model_type VARCHAR(50) NOT NULL,
    PRIMARY KEY(equipment_id)	
);




