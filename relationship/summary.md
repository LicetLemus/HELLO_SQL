# Summary of Relationships in Tables

In relational databases, relationships define how tables are connected to each other. These relationships are essential for organizing and retrieving data efficiently. The main types of relationships are:

## 1. One-to-One (1:1)
- Each record in Table A is linked to exactly one record in Table B, and vice versa.
- Example: A user table and a user profile table.

![One-to-One Relationship](/images/one_one.png "Diagram of a One-to-One Relationship")

## 2. One-to-Many (1:N)
- A record in Table A can be associated with multiple records in Table B, but each record in Table B is linked to only one record in Table A.
- Example: A customer table and an orders table.

![One-to-Many Relationship](/images/one_n.png "Diagram of a One-to-Many Relationship")

## 3. Many-to-Many (M:N)
- Records in Table A can be associated with multiple records in Table B, and vice versa.
- Typically implemented using a junction table.
- Example: A students table and a courses table with an enrollment table as the junction.

![Many-to-Many Relationship](/images/m_n_1.png "Diagram of a Many-to-Many Relationship")
![Many-to-Many Relationship](/images/m_n_2.png "Diagram of a Many-to-Many Relationship")

## 4. Self-Referencing
- A table has a relationship with itself.
- Example: An employees table where each employee has a manager who is also an employee.

![Self-Referencing Relationship](/images/self.png "Diagram of a Self-Referencing Relationship")

### Keys in Relationships
- **Primary Key (PK):** Uniquely identifies a record in a table.
- **Foreign Key (FK):** A field in one table that refers to the primary key in another table.

### Importance of Relationships
- Ensure data integrity.
- Reduce redundancy.
- Enable complex queries across multiple tables.


