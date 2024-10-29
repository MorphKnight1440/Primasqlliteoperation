-- CreateTable
CREATE TABLE "Semester" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Name" TEXT NOT NULL,
    "Course" INTEGER NOT NULL,
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

-- CreateIndex
CREATE UNIQUE INDEX "Semester_Name_key" ON "Semester"("Name");
