# SQL Practice Problems Repository

Welcome to the **SQL Fundamental Practice Problems** repository! This project contains a set of 30 fundamental CRUD exercises and more future SQL sets of Problems for PostgreSQL as i study SQL and PostgreSQL more! complete with problem statements and comprehensive solutions.

---

## Folder Structure

```
sql-practice-problems/
├── README.md                                      # This file
├── 30 Fundamental CRUD problems/                   # All SQL problems and related scripts for the initial 30 exercises
│   ├── 1. List All Employees.txt                  # Problem 1: text description to list all employees
│   ├── 2. Shows Name Only.txt                     # Problem 2: text description to show name only
│   ├── 3. Employees in Sales Department.txt       # Problem 3: text description to list sales employees
│   ├── ...                                        # Problems 4 through 30: text files with problem descriptions
│   ├── Experimental Table and Data for 30 CRUD Problems.sql
│   │                                               # SQL script to create sample tables and insert data for all 30 problems
│   └── Solutions.sql                               # A combined SQL file containing solutions for Problems 1–30
├── Your-Next-Problem-Set/                          # Placeholder for a future set of exercises
│   ├── 1. <Next Problem 1>.txt                    # Future problem set text files (rename accordingly)
│   ├── 2. <Next Problem 2>.txt                    # ...
│   ├── Experimental Table and Data for Next Problem Set.sql
│   │                                               # SQL script to create sample tables and insert data for the new set
│   └── Solutions.sql                               # Combined SQL file containing solutions for the new set
└── .gitignore                                      # Git ignore rules (e.g., `*.log`, `*.tmp`)
```

### Description of Key Files and Folders

* **`30 Fundamental CRUD problems/`**: Contains everything related to the first 30 exercises:

  * **`1. List All Employees.txt`**, **`2. Shows Name Only.txt`**, **`3. Employees in Sales Department.txt`**, etc.: Each file contains the textual description of one CRUD problem, prefixed with the problem number for ordering.
  * **`Experimental Table and Data for 30 CRUD Problems.sql`**: A DDL/DML script that creates all necessary tables and populates them with sample data used by the 30 CRUD exercises. Run this script first to set up your environment before testing any solutions.
  * **`Solutions.sql`**: Contains the SQL queries that solve each of the 30 problems in sequence. Each solution is clearly commented or labeled to match the corresponding problem number.

* **`Future-Problem-Set/`**: A placeholder directory structure for any future sets of SQL exercises beyond the initial 30. When i complete the 30 CRUD problems and wish to add another set:

  * Create a new folder (e.g., `Future-Problem-Set/` or a more descriptive name such as `31-advanced-joins/`).
  * Inside that folder, include:

    * Text files for each new problem (e.g., `1. <Next Problem Title>.txt`, `2. <Next Problem Title>.txt`, etc.).
    * `Experimental Table and Data for Next Problem Set.sql`: SQL script to create any necessary tables and insert sample data specific to the new set.
    * `Solutions.sql`: A single file containing all solutions for the new set, with clearly labeled queries matching the problem numbers.

* **`.gitignore`**: Specifies patterns for Git to ignore (such as local configuration files, temporary files, or editor-specific files).

---

## Getting Started

Follow these instructions to set up the environment and run the SQL scripts on your local machine.

### Prerequisites

* **PostgreSQL** (version 10 or higher recommended).
* **pgAdmin 4** (or any SQL client) to execute queries.
* **Git** installed on your system.
* (Optional) A code editor like Visual Studio Code, Sublime Text, or Atom.

### Cloning the Repository

1. Open a terminal or command prompt.
2. Navigate to the directory where you want to store this project. For example:

   ```bash
   cd ~/Documents/GitHub
   ```
3. Clone the repository:

   ```bash
   git clone https://github.com/<your-username>/sql-practice-problems.git
   ```
4. Change into the project directory:

   ```bash
   cd sql-practice-problems
   ```

### Setting Up Tables and Data for the Initial 30 Problems

1. Open **pgAdmin 4** (or your preferred SQL client) and connect to your PostgreSQL database.
2. Open the Query Tool and load the `Experimental Table and Data for 30 CRUD Problems.sql` file:

   * **File → Open**
   * Navigate to `30 Fundamental CRUD problems/Experimental Table and Data for 30 CRUD Problems.sql`
   * Click **Open**.
3. Execute the script (click the **Execute/Play** button or press F5) to create all sample tables and insert data needed for the first 30 exercises.

### Running the Solutions for the Initial 30 Problems

1. Once tables and data are in place, load `Solutions.sql`:

   * In the Query Tool: **File → Open**
   * Navigate to `30 Fundamental CRUD problems/Solutions.sql`.
2. Execute the appropriate portion of the script for the problem you want to test. Each solution in `Solutions.sql` is labeled with its corresponding problem number and description.
3. Verify that the output matches the expected result described in each problem text file (e.g., `1. List All Employees.txt`).

> **Tip:** You can also run individual queries from `Solutions.sql` manually by selecting just that section and executing it. This helps isolate a single problem’s logic.

---

## Adding a New Set of Problems (Beyond the Initial 30)

After completing the initial 30 CRUD problems, you may want to add another set of fundamental exercises. Follow these guidelines:

1. **Create a new folder** at the same level as `30 Fundamental CRUD problems/`. For example:

   ```bash
   mkdir "Your-Next-Problem-Set"
   ```

   Replace `Your-Next-Problem-Set` with a meaningful name, such as `31-advanced-joins` or `Fundamental-Subqueries`.

2. **Inside the new folder**, add the following:

   * **Problem description files**: For each new exercise, create a text file named with the problem number and title, e.g., `1. <Problem Title>.txt`, `2. <Problem Title>.txt`, etc. Copy or write the full description of each exercise in its corresponding text file.
   * **`Experimental Table and Data for Next Problem Set.sql`**: Write SQL statements to create all necessary tables and insert sample data that the new exercises will use. This ensures reproducibility and makes it easy to test solutions.
   * **`Solutions.sql`**: Combine all solution queries for the new problem set in a single file. Clearly comment each section to indicate which problem number and description it solves.

3. **Stage and commit** your new files in Git:

   ```bash
   git add "Your-Next-Problem-Set/1. <Problem Title>.txt" \
           "Your-Next-Problem-Set/Experimental Table and Data for Next Problem Set.sql" \
           "Your-Next-Problem-Set/Solutions.sql"
   git commit -m "Add next problem set: <Brief Description>"
   ```

4. **Push** your branch or changes to GitHub and optionally open a Pull Request if collaborating.

5. **Update this README** (Table of Contents or “Adding a New Set of Problems” section) to reference your new folder and its contents.

These steps will maintain a consistent structure across multiple sets of exercises, making it easy to expand your repository over time.

---

## Contribution Guidelines

Feel free to contribute improvements or additional exercises. To maintain consistency:

1. **Fork** this repository (if contributing to a public repo).
2. **Create a new branch** for your changes:

   ```bash
   git checkout -b add-problem-31-update-scripts
   ```
3. **Add or update files** in the `30 Fundamental CRUD problems/` folder or create a new problem set folder as described above.
4. **Stage and commit** your changes:

   ```bash
   git add "30 Fundamental CRUD problems/YourNewFile.txt" \
           "30 Fundamental CRUD problems/Solutions.sql"
   git commit -m "Add Problem 31: <Brief Description>"
   ```
5. **Push** your branch:

   ```bash
   git push origin add-problem-31-update-scripts
   ```
6. **Open a Pull Request** on GitHub. Provide a description of your changes, indicate the new problem number or set, and request a review.

Once approved, merge your changes into the `main` branch, and your contribution will appear on GitHub.

---

## License

This repository is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute these scripts for educational purposes.

---

> *Happy querying and learning!*
