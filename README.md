# Nafsy

This is a personal rails project that i'm developing because i don't have a great memory, so i've decided to build a "Knowledgebase" style application (you can think of it as simillar to wikipedia) for me personally to store any information and be able to search through it at a later date.

e.g. Inserting information regarding friends, events, car maintenance logs, journals, etc...., And then being able to access that information quickly later in the future for reference.

This is also an ideal space for me to try out tools and technologies i haven't used before, such as:

- Webpack in rails 6

- Graph databases through Neo4j (for discovering relations in the knowledge base)

- Hotwire (test how friendly or easy it is to make a monolithic rails web app without using a frontend framework)

- Tailwind css

---

## Roadmap

- [ ] Calendar module, displays documents and time-stamped data points for easy reference by date
- [ ] Optical Character Recognition (OCR) on document images for easy text searches
- [ ] Create module for documents (for saving documents such as bills and contracts, time stamped, image copies, etc...)
- [ ] Enumerate or categorize data points
- [ ] Write unit tests
- [x] Many-to-Many association of data points
- [x] Rich text content for data points
- [x] CRUD Operations for data points in the knowledge base
- [x] Connect Neo4J with rails

---

This project is dockerized, and should not require any specific library on the host machine.

The ideal environment for this is to be self-hosted for any user who wishes to use the system, and as such their information is not accessible by any other entity and will not experience enough load to warrant consideration regarding scaling.