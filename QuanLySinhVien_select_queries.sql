-- Bài thực hành truy vấn dữ liệu CSDL Quản lý sinh viên
USE QuanLySinhVien;

-- 1. Hiển thị danh sách tất cả học viên
SELECT *
FROM Student;

-- 2. Hiển thị học viên đang theo học
SELECT *
FROM Student
WHERE Status = TRUE;

-- 3. Hiển thị môn học có số tín chỉ nhỏ hơn 10
SELECT *
FROM Subject
WHERE Credit < 10;

-- 4. Hiển thị học viên thuộc lớp A1
SELECT S.StudentID, S.StudentName, C.ClassName
FROM Student AS S
JOIN Class AS C ON S.ClassID = C.ClassID
WHERE C.ClassName = 'A1';

-- 5. Hiển thị điểm môn CF của các học viên
SELECT S.StudentID, S.StudentName, Sub.SubName, M.Mark
FROM Student AS S
JOIN Mark AS M ON S.StudentID = M.StudentID
JOIN Subject AS Sub ON M.SubID = Sub.SubID
WHERE Sub.SubName = 'CF';
