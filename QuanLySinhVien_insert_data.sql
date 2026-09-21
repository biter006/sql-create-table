-- Bài tập INSERT INTO cho CSDL QuanLySinhVien
USE QuanLySinhVien;

-- 1. Thêm lớp học
INSERT INTO Class (ClassID, ClassName, StartDate, Status) VALUES
    (1, 'A1', '2008-12-20', 1),
    (2, 'A2', '2008-12-22', 1),
    (3, 'B3', CURRENT_DATE(), 0);

-- 2. Thêm học viên
INSERT INTO Student (StudentName, Address, Phone, Status, ClassID) VALUES
    ('Hung', 'Ha Noi', '0912113113', 1, 1),
    ('Hoa', 'Hai phong', NULL, 1, 1),
    ('Manh', 'HCM', '0123123123', 0, 2);

-- 3. Thêm môn học
INSERT INTO Subject (SubID, SubName, Credit, Status) VALUES
    (1, 'CF', 5, 1),
    (2, 'C', 6, 1),
    (3, 'HDJ', 5, 1),
    (4, 'RDBMS', 10, 1);

-- 4. Thêm điểm thi
INSERT INTO Mark (SubID, StudentID, Mark, ExamTimes) VALUES
    (1, 1, 8, 1),
    (1, 2, 10, 2),
    (2, 1, 12, 1);
