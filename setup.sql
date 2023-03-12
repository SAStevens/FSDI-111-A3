-- Creat status table
CREATE TABLE status (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(128)
);


-- Create task table
CREATE TABLE task (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    summary VARCHAR(256),
    description TEXT,
    status_id INTEGER,
    active BOOLEAN DEFAULT 1,
    FOREIGN KEY(status_id) REFERENCES status(id)
);

-- Populate status table:
INSERT INTO status ( name ) VALUES ("to do");
INSERT INTO status ( name ) VALUES ("in progress");
INSERT INTO status ( name ) VALUES ("done");

-- Add dummy data to task:
INSERT INTO task(
    summary,
    description, 
    status_id
)   VALUES  (
    "Do the laundry",
    "Put clothes in the washing machine",
    1
);

INSERT INTO task(
    summary,
    description, 
    status_id
)   VALUES  (
    "Buy groceries",
    "Put the groceries away",
    1
);

INSERT INTO task(
    summary,
    description, 
    status_id
)   VALUES  (
    "Walk the dog",
    "Take fido for a flea bath",
    1
);
