USE [master]
GO
/****** Object:  Database [DapperDB]    Script Date: 08-01-2024 19:43:36 ******/
CREATE DATABASE [DapperDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DapperDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DapperDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DapperDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DapperDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DapperDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DapperDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DapperDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DapperDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DapperDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DapperDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DapperDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DapperDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DapperDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DapperDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DapperDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DapperDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DapperDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DapperDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DapperDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DapperDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DapperDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DapperDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DapperDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DapperDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DapperDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DapperDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DapperDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DapperDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DapperDB] SET RECOVERY FULL 
GO
ALTER DATABASE [DapperDB] SET  MULTI_USER 
GO
ALTER DATABASE [DapperDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DapperDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DapperDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DapperDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DapperDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DapperDB', N'ON'
GO
ALTER DATABASE [DapperDB] SET QUERY_STORE = OFF
GO
USE [DapperDB]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 08-01-2024 19:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EMPID] [int] IDENTITY(1,1) NOT NULL,
	[EMPNAME] [varchar](50) NULL,
	[EMP_DESIGNATION] [varchar](50) NULL,
	[EMP_SALARY] [int] NULL,
	[IsDeleted] [bit] NULL,
	[EMP_GENDER] [nvarchar](10) NULL,
	[EMP_EMAIL] [nvarchar](100) NULL,
	[EMP_AGE] [int] NULL,
	[EMP_SKILLS] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EMPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (13, N'komal', N'Devloper', 5500, 0, N'Female', N'komal@gmail.com', 25, N'HTML,CSS,JavaScript')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (15, N'xyz', N'tester', 200, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (16, N'Roshan', N'admin', 600, 0, N'Male', N'admin@gmail.com', 45, N'HTML,CSS,JavaScript')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (17, N'edc', N'567', 300, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (18, N'ijm', N'ghj', 500, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (19, N'kajal', N'Devloper', 5500, 0, N'Female', N'abc@gmail.com', 23, N'HTML,CSS,JavaScript')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (20, N'Siddhesh', N'manager', 234, 0, N'Male', N'sid@gmail.com', 34, N'C#,Java,Python,JavaScript')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (21, N'savi', N'hr', 3455, 0, N'Female', N'savi@gmail.com', 32, N'Java,Python')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (22, N'sahil', N'tester', 345, 0, N'Male', N'asd@gmail.com', 23, N'JavaScript,SQL')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (23, N'Nikhil', N'Tester', 678, 0, N'Male', N'nikhil@gmail.com', 24, N'Java,Python,JavaScript')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (24, N'siddharth', N'analyst', 5678, 0, N'Male', N'sid12@gmail.com', 35, N'Python,SQL')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (25, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (26, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (27, N'Mukesh', N'adminIT', 34, 0, N'Male', N'mukesh@gmail.com', 23, N'Java,SQL')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (28, N'Purnima', N'Devloper', 1500, 0, N'Female', N'purnima@gmail.com', 22, N'C#,Java,SQL')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (29, N'Prajakta', N'Finance', 50000, 0, N'Female', N'pn@gmail.com', 28, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (30, N'Sujit', N'Devloper', 3600, 0, N'Male', N'sumit@gmail.com', 25, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (31, N'Sumit', N'Tester', 3456, 0, N'Male', N'sumit@gmail.com', 24, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (32, N'Rohan', N'Manager', 6789, 0, N'Male', N'rohan@gmail.com', 40, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (33, N'Ankita', N'Tester', 3452, 0, N'Female', N'ankita@gmail.com', 20, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (34, N'Prathamesh', N'Accounts', 98765, 0, N'Male', N'patu@gmail.com', 24, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (35, N'Niranjan', N'Devloper', 34526, 0, N'Male', N'niru@gmail.com', 34, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (36, N'samarth', N'adminIT', 23456, 0, N'Male', N'sam@gmail.com', 23, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (37, N'swapnil', N'manager', 4567, 0, N'Male', N'swapnil@gmail.com', 34, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (38, N'jidnya', N'analyst', 3456, 0, N'Female', N'jid@gmail.com', 25, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (39, N'Dhanashree', N'Tester', 1234, 0, N'Female', N'dhnau@gmail.com', 20, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (40, N'sneha', N'analyst', 12346, 0, N'Female', N'sneha@gmail.com', 30, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (41, N'sail', N'analyst', 5678, 0, N'Male', N'sail@gmail.com', 23, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (42, N'fgj', N'dev', 123, 0, N'Male', N'abc@gmail.com', 23, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (43, N'fgj', N'dev', 123, 0, N'Male', N'abc@gmail.com', 23, NULL)
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (44, N'aswe', N'dev', 2345, 0, N'Male', N'abc@gmail.com', 56, N'Java,Python')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (45, N'fgj', N'dev', 1, 0, N'Male', N'abc@gmail.com', 23, N'C#,Python,SQL')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (46, N'komal', N'dev', 2345, 0, N'Male', N'abc@gmail.com', 23, N'C#,Python,JavaScript')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (47, N'purnima', N'dev', 2345, 0, N'Female', N'purnimajag@gmail.com', 45, N'C#,Java')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (48, N'aish', N'test', 2345, 0, N'Female', N'aish@gmail.com', 45, N'')
INSERT [dbo].[Employee] ([EMPID], [EMPNAME], [EMP_DESIGNATION], [EMP_SALARY], [IsDeleted], [EMP_GENDER], [EMP_EMAIL], [EMP_AGE], [EMP_SKILLS]) VALUES (49, N'samiksha', N'analyst', 2678, 0, N'Female', N'samiksha@gmail.com', 26, N'C#,Java,SQL')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
ALTER TABLE [dbo].[Employee] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  StoredProcedure [dbo].[EmployeeAddOrEdit]    Script Date: 08-01-2024 19:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EmployeeAddOrEdit]
 @EMPID int,
 @EMPNAME varchar(50),
 @EMP_DESIGNATION varchar(50),
 @EMP_SALARY int,
 @EMP_GENDER nvarchar(10),
 @EMP_EMAIL nvarchar(100),
 @EMP_AGE int,
 @EMP_SKILLS nvarchar(max)

 AS
	IF @EMPID=0
		INSERT INTO Employee(EMPNAME,EMP_DESIGNATION,EMP_SALARY,EMP_GENDER,EMP_EMAIL,EMP_AGE,EMP_SKILLS)
		VALUES(@EMPNAME,@EMP_DESIGNATION,@EMP_SALARY,@EMP_GENDER,@EMP_EMAIL,@EMP_AGE,@EMP_SKILLS)
	ELSE 
		UPDATE Employee
		SET
		EMPNAME=@EMPNAME,
		EMP_DESIGNATION=@EMP_DESIGNATION,
		EMP_SALARY=@EMP_SALARY,
		EMP_GENDER=@EMP_GENDER,
		EMP_EMAIL=@EMP_EMAIL,
		EMP_AGE=@EMP_AGE,
		EMP_SKILLS=@EMP_SKILLS
		WHERE EMPID= @EMPID;
GO
/****** Object:  StoredProcedure [dbo].[EmployeeDeleteByID]    Script Date: 08-01-2024 19:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EmployeeDeleteByID]
@EMPID int
AS
		UPDATE Employee
		SET IsDeleted = 1
		WHERE EMPID=@EMPID;




GO
/****** Object:  StoredProcedure [dbo].[EmployeeViewAll]    Script Date: 08-01-2024 19:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EmployeeViewAll]
AS 
	SELECT *
	FROM  Employee
	WHERE IsDeleted = 0; 

GO
/****** Object:  StoredProcedure [dbo].[EmployeeViewByID]    Script Date: 08-01-2024 19:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EmployeeViewByID]
@EMPID int 
AS
	SELECT *
	FROM Employee
	WHERE EMPID=@EMPID


GO
/****** Object:  StoredProcedure [dbo].[GetAllDeletedEmployees]    Script Date: 08-01-2024 19:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllDeletedEmployees]
AS
BEGIN
    SELECT *
    FROM Employee
    WHERE IsDeleted = 1;
END;
GO
/****** Object:  StoredProcedure [dbo].[RestoreEmployee]    Script Date: 08-01-2024 19:43:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RestoreEmployee]
    @EMPID int
AS
BEGIN
    UPDATE Employee
    SET IsDeleted = 0
    WHERE EMPID = @EMPID;
END;
GO
USE [master]
GO
ALTER DATABASE [DapperDB] SET  READ_WRITE 
GO
