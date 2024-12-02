-- Unit definition

CREATE TABLE Unit
                 (Unit_id INTEGER PRIMARY KEY,
                 Unit_name VARCHAR(100) NOT NULL,
                 Owner_id INTEGER,
                 Service_provider_id INTEGER,
                 FOREIGN KEY (Owner_id) REFERENCES Owner_Table(Owner_id),
                 FOREIGN KEY (Service_provider_id) REFERENCES Service_provider_Table(service_provider_id)
                );