SET IDENTITY_INSERT [dbo].[Course] ON
INSERT INTO [dbo].[Course] ([CourseID], [CourseName], [CourseDuration], [CoursePrice]) VALUES (1, N'C#', N'12 Months', CAST(120000.0000 AS Money))
INSERT INTO [dbo].[Course] ([CourseID], [CourseName], [CourseDuration], [CoursePrice]) VALUES (2, N'NT', N'12 Months', CAST(100000.0000 AS Money))
INSERT INTO [dbo].[Course] ([CourseID], [CourseName], [CourseDuration], [CoursePrice]) VALUES (3, N'Python', N'6 Months', CAST(50000.0000 AS Money))
SET IDENTITY_INSERT [dbo].[Course] OFF
