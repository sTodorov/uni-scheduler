
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CourseLectures]    Script Date: 11/2/2015 12:00:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseLectures](
	[CourseId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
	[Time] [datetime] NOT NULL,
	[Room] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CourseLectures] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 11/2/2015 12:00:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[MiddleName] [nvarchar](255) NOT NULL,
	[LastName] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CourseLectures]  WITH CHECK ADD  CONSTRAINT [FK_CourseLectures_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[CourseLectures] CHECK CONSTRAINT [FK_CourseLectures_Course]
GO
ALTER TABLE [dbo].[CourseLectures]  WITH CHECK ADD  CONSTRAINT [FK_CourseLectures_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[CourseLectures] CHECK CONSTRAINT [FK_CourseLectures_Teacher]
GO



Insert into Course (Name) values ('IT')
Insert into Course (Name) values ('Math')
Insert into Course (Name) values ('Economics')

GO

insert into Teacher(FirstName, MiddleName, LastName, Phone)
values ('Svetoslav','Mihailov',	'Todorov', '0889364696')

insert into Teacher(FirstName, MiddleName, LastName, Phone)
values ('Petar','Petkanov',	'Petrov', '0889364696')



GO 



