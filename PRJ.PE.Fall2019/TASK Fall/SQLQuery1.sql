/****** Object:  Table [dbo].[Account]    Script Date: 2/27/2022 9:33:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[accountid] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[accountid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Account_Group]    Script Date: 10/6/2019 12:09:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account_Group](
	[groupid] [int] NOT NULL,
	[accountid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Account_Group] PRIMARY KEY CLUSTERED 
(
	[groupid] ASC,
	[accountid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Author]    Script Date: 10/6/2019 12:09:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Author](
	[authorid] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[authorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book]    Script Date: 10/6/2019 12:09:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[isbn] [varchar](150) NOT NULL,
	[title] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[isbn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book_Author]    Script Date: 10/6/2019 12:09:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book_Author](
	[bookid] [varchar](150) NOT NULL,
	[authorid] [int] NOT NULL,
 CONSTRAINT [PK_Book_Author] PRIMARY KEY CLUSTERED 
(
	[bookid] ASC,
	[authorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/6/2019 12:09:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/6/2019 12:09:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[did] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Group]    Script Date: 10/6/2019 12:09:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Group](
	[groupid] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[groupid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/6/2019 12:09:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[did] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Author] ([authorid], [name]) VALUES (1, N'Andrew Ng
')
INSERT [dbo].[Author] ([authorid], [name]) VALUES (2, N'Yann Lecun')
INSERT [dbo].[Author] ([authorid], [name]) VALUES (3, N'Yoshua Bengio')
INSERT [dbo].[Author] ([authorid], [name]) VALUES (4, N'Ian Goodfellow')
INSERT [dbo].[Author] ([authorid], [name]) VALUES (5, N'Francois Chollet')
INSERT [dbo].[Department] ([id], [name]) VALUES (1, N'Information System')
INSERT [dbo].[Department] ([id], [name]) VALUES (2, N'Computer Science')
INSERT [dbo].[Department] ([id], [name]) VALUES (3, N'Accounting')
INSERT [dbo].[Employee] ([id], [name], [dob], [gender], [did]) VALUES (1, N'Mr A', CAST(0x25140B00 AS Date), 1, 1)
INSERT [dbo].[Employee] ([id], [name], [dob], [gender], [did]) VALUES (2, N'Mr B', CAST(0x2C0D0B00 AS Date), 1, 2)
INSERT [dbo].[Employee] ([id], [name], [dob], [gender], [did]) VALUES (3, N'Ms C', CAST(0x83090B00 AS Date), 1, 2)
INSERT [dbo].[Group] ([groupid], [name]) VALUES (1, N'admin')
INSERT [dbo].[Group] ([groupid], [name]) VALUES (2, N'mod')
INSERT [dbo].[Group] ([groupid], [name]) VALUES (3, N'reviewer')
INSERT [dbo].[Group] ([groupid], [name]) VALUES (4, N'author')
INSERT [dbo].[Group] ([groupid], [name]) VALUES (5, N'visitor')
INSERT [dbo].[Student] ([id], [name], [dob], [gender], [did]) VALUES (1, N'Mr A', CAST(0x25140B00 AS Date), 1, 1)
INSERT [dbo].[Student] ([id], [name], [dob], [gender], [did]) VALUES (2, N'Mr B', CAST(0x2C0D0B00 AS Date), 1, 2)
INSERT [dbo].[Student] ([id], [name], [dob], [gender], [did]) VALUES (3, N'Ms C', CAST(0x83090B00 AS Date), 1, 2)
ALTER TABLE [dbo].[Account_Group]  WITH CHECK ADD  CONSTRAINT [FK_Account_Group_Account] FOREIGN KEY([accountid])
REFERENCES [dbo].[Account] ([accountid])
GO
ALTER TABLE [dbo].[Account_Group] CHECK CONSTRAINT [FK_Account_Group_Account]
GO
ALTER TABLE [dbo].[Account_Group]  WITH CHECK ADD  CONSTRAINT [FK_Account_Group_Group] FOREIGN KEY([groupid])
REFERENCES [dbo].[Group] ([groupid])
GO
ALTER TABLE [dbo].[Account_Group] CHECK CONSTRAINT [FK_Account_Group_Group]
GO
ALTER TABLE [dbo].[Book_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_Author] FOREIGN KEY([authorid])
REFERENCES [dbo].[Author] ([authorid])
GO
ALTER TABLE [dbo].[Book_Author] CHECK CONSTRAINT [FK_Book_Author_Author]
GO
ALTER TABLE [dbo].[Book_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_Book] FOREIGN KEY([bookid])
REFERENCES [dbo].[Book] ([isbn])
GO
ALTER TABLE [dbo].[Book_Author] CHECK CONSTRAINT [FK_Book_Author_Book]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([did])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([did])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO

select * from Account
select * from Account_Group
select * from Author
select * from Account_Group
select * from Book
select * from Book_Author
select * from Department
select * from Employee
select * from [Group]
select * from Student