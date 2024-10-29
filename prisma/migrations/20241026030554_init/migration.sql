-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Semester" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Name" TEXT NOT NULL,
    "Course" TEXT NOT NULL,
    "African_American" INTEGER NOT NULL,
    "Hispanic" INTEGER NOT NULL,
    "International" INTEGER NOT NULL,
    "Two_or_More" INTEGER NOT NULL,
    "Other" INTEGER NOT NULL,
    "Unknown" INTEGER NOT NULL,
    "White" INTEGER NOT NULL,
    "Male" INTEGER NOT NULL,
    "Female" INTEGER NOT NULL,
    "Total" INTEGER NOT NULL
);
INSERT INTO "new_Semester" ("African_American", "Course", "Female", "Hispanic", "Id", "International", "Male", "Name", "Other", "Total", "Two_or_More", "Unknown", "White") SELECT "African_American", "Course", "Female", "Hispanic", "Id", "International", "Male", "Name", "Other", "Total", "Two_or_More", "Unknown", "White" FROM "Semester";
DROP TABLE "Semester";
ALTER TABLE "new_Semester" RENAME TO "Semester";
CREATE UNIQUE INDEX "Semester_Name_key" ON "Semester"("Name");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
