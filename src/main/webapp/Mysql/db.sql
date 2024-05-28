use storyonline;
CREATE TABLE Story (
   id INT PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(255) NOT NULL,
   content TEXT NOT NULL,
   author VARCHAR(100) NOT NULL,
   publish_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Story (title, content, author, publish_date) VALUES
     ('The Adventure Begins', 'Once upon a time...', 'John Doe', '2024-05-27 10:00:00'),
     ('Mystery at Midnight', 'In the dark alleys of the city...', 'Jane Smith', '2024-05-26 15:30:00'),
     ('Journey to the Unknown', 'Exploring uncharted territories...', 'Alice Johnson', '2024-05-25 08:45:00'),
     ('Secrets of the Past', 'Unraveling ancient mysteries...', 'Bob Williams', '2024-05-24 18:20:00'),
     ('The Quest for Treasure', 'Searching for hidden riches...', 'Emily Brown', '2024-05-23 12:10:00');
