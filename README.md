Music Company Management System (DBMS)
Overview
This project is a robust Relational Database Management System (DBMS) designed to handle the core operations of a music label. It manages relationships between artists, albums, songs, producers, and managers. The system is built using PostgreSQL and features automated data integrity through triggers and complex server-side logic via stored procedures.

Technical Stack
Database: PostgreSQL

Language: PL/pgSQL (Stored Procedures, Functions, Triggers)

Front-end Integration: Java (Swing/JavaFX) via JDBC

Key Features & Database Logic
The system goes beyond simple data storage, incorporating advanced SQL features:

1. Automated Data Aggregation (Triggers)
Dynamic Duration Tracking: A trigger (trg_update_duration) automatically calculates and updates the total duration of an album whenever a song is inserted, updated, or deleted.

Track Counter: Automatically maintains a track_count for each album to optimize query performance and avoid expensive COUNT operations during runtime.

2. Data Integrity & Validation
Constraint Enforcement: Custom functions ensure that song durations are always positive and maintain referential integrity across the schema.

Change Logging: Includes a change_log mechanism to track modifications within the system.

3. Advanced Querying & Reporting
Custom Functions (SETOF): Implemented high-performance functions (e.g., load_artists(), load_albums()) that return table types, performing multi-table joins and aggregations to provide comprehensive reports on:

Artist statistics (total songs/albums per artist).

Producer and Manager workloads.

Formatted album data (converting seconds into MM:SS format).

4. CRUD Operations
The system utilizes Stored Procedures (add_song, update_song, delete_song) to encapsulate business logic, ensuring that database interactions are secure and consistent.

Database Schema (ERD Logic)
The database follows a normalized structure:

Artists: Linked to Managers and Producers.

Albums: Linked to Artists with aggregated metadata.

Songs: The core entity containing track details and genre classification.

Producers/Managers: Handling administrative and production data.

How to Run
Import the database_file.sql into your PostgreSQL instance.

The schema, triggers, and procedures will be created automatically.

Use the provided functions (e.g., SELECT * FROM load_songs();) to view processed data.
