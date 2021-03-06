USE [master]
GO
/****** Object:  Database [BlogDB]    Script Date: 02/07/2021 12:19:54 SA ******/
CREATE DATABASE PE_PRJ_21SumB1
GO
USE PE_PRJ_21SumB1
GO
/****** Object:  Table [dbo].[Account]    Script Date: 02/07/2021 12:19:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 02/07/2021 12:19:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[CategoryDescription] [varchar](500) NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 02/07/2021 12:19:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[EntryID] [int] NOT NULL,
	[CommentContent] [text] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Entries]    Script Date: 02/07/2021 12:19:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entries](
	[EntryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[EntryContent] [text] NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Entries] PRIMARY KEY CLUSTERED 
(
	[EntryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Account] ([username], [password]) VALUES (N'user1', N'123456')
GO
INSERT [dbo].[Account] ([username], [password]) VALUES (N'user2', N'654321')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (2, N'Awards', NULL, CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (4, N'Childhood Traumas', NULL, CAST(N'2012-02-14 00:00:00.000' AS DateTime), CAST(N'2012-02-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (5, N'Family', NULL, CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (6, N'Internet Big Five', NULL, CAST(N'2012-02-03 00:00:00.000' AS DateTime), CAST(N'2012-02-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (7, N'RoundUps', NULL, CAST(N'2012-02-04 00:00:00.000' AS DateTime), CAST(N'2012-02-04 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (9, N'UnCategories', NULL, CAST(N'2011-10-13 00:00:00.000' AS DateTime), CAST(N'2011-10-13 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (10, N'Manifesto', NULL, CAST(N'2011-09-07 00:00:00.000' AS DateTime), CAST(N'2011-09-07 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (14, N'TV Cooks', NULL, CAST(N'2011-12-12 00:00:00.000' AS DateTime), CAST(N'2011-12-12 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (15, N'What a tool!', NULL, CAST(N'2011-12-21 00:00:00.000' AS DateTime), CAST(N'2011-12-21 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (16, N'BAEXPAT', NULL, CAST(N'2011-02-14 00:00:00.000' AS DateTime), CAST(N'2011-02-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (17, N'Adventure', NULL, CAST(N'2008-12-31 00:00:00.000' AS DateTime), CAST(N'2008-12-31 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (19, N'Favorite Photos', NULL, CAST(N'2009-01-03 00:00:00.000' AS DateTime), CAST(N'2009-01-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (20, N'Health', NULL, CAST(N'2010-08-05 00:00:00.000' AS DateTime), CAST(N'2010-08-05 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (21, N'Travel', NULL, CAST(N'2010-07-15 00:00:00.000' AS DateTime), CAST(N'2010-09-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (22, N'Africa', NULL, CAST(N'2011-08-03 00:00:00.000' AS DateTime), CAST(N'2011-08-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription], [DateCreated], [DateModified]) VALUES (23, N'OnlyOneCate', NULL, CAST(N'2011-11-06 00:00:00.000' AS DateTime), CAST(N'2011-11-06 00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (2, 2, N'My God! I disagree, you have been a good girl! Look at all that love you’ve gotten in the past number of weeks! Well deserved to be sure! Congratulations and thank you for the wonderful adulation you bestowed upon me 4 times!! (and its MY birthday today, so I guess this was your gift – I am assuming that means the Lamborghini is not in the mail??!) Thanks again and kudos to you for writing exactly what we all love to read! x', CAST(N'2012-01-02 00:00:00.000' AS DateTime), CAST(N'2012-01-02 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (3, 2, N'Happy Birthday, Karyn! Thanks for your nice comments. And for catching up with this one — I was just about to leave a comment on your blog about the awards.', CAST(N'2012-01-03 00:00:00.000' AS DateTime), CAST(N'2012-01-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (5, 2, N'Good idea. I will simply stroke it a bit and see what COMES of it.', CAST(N'2012-01-04 00:00:00.000' AS DateTime), CAST(N'2012-01-04 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (6, 3, N'Thanks for the first-thing-in-the-morning smile! Love the part about Ben0Hur and the blind spots. LOL!', CAST(N'2012-01-04 00:00:00.000' AS DateTime), CAST(N'2012-01-04 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (8, 3, N'Great post! I don’t trust them either. The gizmos won’t pay the fines or court judgements. In my opinion, drivers are distracted enough without having more bells and whistles distracting them.', CAST(N'2012-02-04 00:00:00.000' AS DateTime), CAST(N'2012-02-04 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (9, 4, N'I was gonna vote for you keeping it the same anyways! Happy Birthday Elyse, and many many more! Do something special because you are worth it. Maybe get a tat that says “fiftyfourandahalf” lol', CAST(N'2012-02-14 00:00:00.000' AS DateTime), CAST(N'2012-02-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (10, 4, N'Have a happy blessed Birthday Elyse. I LOVE the name and it is great you are keeping it!', CAST(N'2012-02-14 00:00:00.000' AS DateTime), CAST(N'2012-02-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (11, 4, N'Wow…….so many comments. It is fitting then that I have nominated you for the versatile blogger award', CAST(N'2012-02-14 00:00:00.000' AS DateTime), CAST(N'2012-02-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (12, 5, N'Me too, Sandy, me too. I can’t believe that there are folks even thinking of going back there. And it is being written as a women’s issue — no, it’s not JUST a women’s issue. Oy.', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (13, 7, N'Congratulations. You do bring on the smiles. Thank you', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (14, 7, N'Elyse! I’m honoured! AND surprised! Thank you!!!!! XXOO', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (15, 7, N'Congratulations on your nomination, too – I hope you win it, you laughter provoker, you!!!!!!', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (16, 7, N'Congrats to you too, Lisa. And with this type of award, you’re a shoe-in to win. That’s cause you just get it. The downside is there is no red carpet or pretty dress.', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (17, 7, N'Nothing says “Curing Cancer” like a gun.', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (18, 7, N'Well, in my experience it’s not the people who legally carry firearms that you have to worry about….just sayin’', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (19, 10, N'Awesome Post. I add this Blog to my bookmarks.', CAST(N'2012-02-16 00:00:00.000' AS DateTime), CAST(N'2012-02-16 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (20, 13, N'Google can  monetize a free voice search by targeting ads in other environments.  As long as voice search doesn''t supplant web browsing on pages with ad words and browser-based email reading, it''s still contributing (perhaps significantly, based on the fact that I find them still hitting me with car rental ads weeks after I''ve booked a trip).', CAST(N'2012-02-14 00:00:00.000' AS DateTime), CAST(N'2012-02-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (21, 13, N'Yes, CPA is the ticket imagined with the original version of Siri. If you also buy into the assistant thing then there are many other powerful models that emerge as it becomes a more trusted part of your life. If it really takes off you can make the case that traditional advertising is ripe for major disruption as ads go from reactive to proactive. Will be interesting to watch unfold.', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (23, 14, N'You, ma’am, are hilarious. I’m so happy you popped up on FP today!', CAST(N'2011-09-07 00:00:00.000' AS DateTime), CAST(N'2011-09-07 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (24, 14, N'I love this Wendy!!! I have a recipe or 2 I need you to find Grammies Baked Beans and also Creamed Peas!!', CAST(N'2011-10-11 00:00:00.000' AS DateTime), CAST(N'2011-10-11 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (25, 15, N'“I think this is secretly ironic.”', CAST(N'2012-12-12 00:00:00.000' AS DateTime), CAST(N'2012-12-12 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (26, 15, N'Never assume hidden depth. In any case, her secret’s safe with me.', CAST(N'2012-12-12 00:00:00.000' AS DateTime), CAST(N'2012-12-12 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (27, 22, N'Nice! I might just do that journal thing this week, and expand it to a couple of other arenas, too, like, “what did I read this week that I’ll pass on to other people?” and use that as a gauge to better determine what I should write and how best to write it.', CAST(N'2011-06-03 00:00:00.000' AS DateTime), CAST(N'2011-06-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (28, 22, N'Reblogged this on Around the world wedding Blog and commented:', CAST(N'2011-06-03 00:00:00.000' AS DateTime), CAST(N'2011-06-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (29, 22, N'Looking forward to How I Make Money, Part 2? Great article and fits inline with my thinking and goals!', CAST(N'2011-06-03 00:00:00.000' AS DateTime), CAST(N'2011-06-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (31, 22, N'Terrific post! And right along the lines of hoe I think. Looking forward to your next post.', CAST(N'2011-06-03 00:00:00.000' AS DateTime), CAST(N'2011-06-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (33, 22, N'This is a great post my man! I’m an avid gym-goer myself, was a 21 yr old business owner, and noticed the rising demand of kettlebells like yourself. Impressive to say the least. I’m glad you could confirm the idea circling around the back of my mind. Can you share more as to how you set-up the business, the exact costs, and perhaps advice for those who have little capital (but a whole lot of ingenuity)?', CAST(N'2011-07-07 00:00:00.000' AS DateTime), CAST(N'2011-07-07 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (34, 23, N'I will like blog post you write! I will relate much to. Also will move to US 20 years, also will be very confused, allso I only will learn to speak in future tense! Not my fault, I will be born this way!', CAST(N'2011-08-03 00:00:00.000' AS DateTime), CAST(N'2011-08-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Comments] ([CommentID], [EntryID], [CommentContent], [DateCreated], [DateModified]) VALUES (35, 28, N'Love it! For some reason, every castle I’ve ever visited has been medieval and somewhat boring, or crumbling ruins. I’d love to go to Neuschwanstein, or one of the palaces along the Loire River in France. I’ve toured Chatsworth in England, which although very beautiful, is only home of the Duke and Duchess, so I’m pretty sure that puts it out of the running for castle-dom.', CAST(N'2012-02-02 00:00:00.000' AS DateTime), CAST(N'2012-02-02 00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Entries] ON 

GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (2, 2, N'The Envelope Please, Part II', N'There’s a reason I got crap presents for Christmas this year.  I’ve been a bad girl.  All throughout the month of December, I failed to pass on awards that I received.', CAST(N'2012-01-02 00:00:00.000' AS DateTime), CAST(N'2012-01-02 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (3, 2, N'Smarter than me', N'Lori over at Sunny Side Up posted a piece this morning about parallel parking.  She can’t do it.  Me, I can do it pretty well; I just can’t spell it without spell check.', CAST(N'2011-09-02 00:00:00.000' AS DateTime), CAST(N'2011-09-02 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (4, 4, N'People My Age', N'Well, it’s my birthday.  And I have a problem.', CAST(N'2012-02-14 00:00:00.000' AS DateTime), CAST(N'2012-02-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (5, 5, N'Adjust Your Dial!', N'It’s spooky.  I keep expecting to have to adjust the vertical hold on my TV.  Or to hear the test pattern when I turn it on really early in the morning (you know, before the farm report).  And I’m surprised that the picture is in living color.', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (6, 5, N'Hey Doc?', N'Medical care in today’s America is really no more than a Ponzi scheme.  Just ask Rick Perry.', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (7, 5, N'In the Pink', N'Sometimes, I find it nearly impossible to shine, and so I just can’t help myself.  At those time I feel the need to do something a little odd, a little nutty and a lot stupid.', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (8, 7, N'LAST WEEK''S SIGNAL', N'I fell out of the habit, but here are the Signals from last week. If you want to get my daily roundup of stories worth paying attention to, get the RSS here, or sign up in email at the top right of the page here.', CAST(N'2012-02-10 00:00:00.000' AS DateTime), CAST(N'2012-02-10 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (10, 7, N'THE SWAN SONG OF MICH MATTHEWS, OUTGOING CHIEF OF MARKETING AT MICROSOFT', N'After a 22-year career helming communications and later all of central marketing for Microsoft – she counts her budgets with a “b”, folks – Mich Matthews, who I admit I’ve grown fond of, is leaving Microsoft later this summer.', CAST(N'2012-02-15 00:00:00.000' AS DateTime), CAST(N'2012-02-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (11, 6, N'SAN FRANCISCO IN THE SPRING: COME TO SIGNAL', N'Over at the FM blog, I just posted the draft agenda for the first of five conferences I’ll be chairing as part of my day job at Federated Media. Signal San Francisco is a one-day event (March 21) focused on the theme of  integrating digital marketing across large platforms (what I’ve called “dependent web” properties) and the Independent Web. The two are deeply connected, as I’ve written here. As we explore that “interdependency,” we’ll also be talking about some of the most heated topics in media today: the role of mobile, the rise of brand-driven content, the impact of real-time bidded exchanges, and more.', CAST(N'2012-02-05 00:00:00.000' AS DateTime), CAST(N'2012-02-05 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (13, 6, N'THINKING OUT LOUD ABOUT VOICE SEARCH: WHAT’S THE BUSINESS MODEL?', N'I don’t have Siri yet – I’m still using my “old” iPhone 4. But I do have my hands on a new (unboxed) Nexus, which has Google Voice Actions on it, and I’m sure at some point I’ll get a iPhone 4GS. So this post isn’t written from experience as much as it’s pure speculation, or as I like to call it, Thinking Out Loud.', CAST(N'2012-02-13 00:00:00.000' AS DateTime), CAST(N'2012-02-13 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (14, 10, N'I am a kitchen slattern.', N'I stick my finger in the vinaigrette to check the taste, add more vinegar, then stick the same finger in again. Sometimes I use a spoon, but not usually. You know you do it too. So what? I haven’t had cooties since the third grade and don’t expect to get them again anytime soon.', CAST(N'2011-09-07 00:00:00.000' AS DateTime), CAST(N'2011-09-07 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (15, 14, N'Stop! Stop! No really, please make it stop. I’m begging you.', N'Recently a friend said to me, in a purely constructive way, “Gee, Kitchen Slattern, I think maybe you were a little rough on Nadia G.” As you may recall I described this TV cook as the unholy spawn of an unnatural union between Pee Wee Herman and Snookie, and I’ll admit it’s pretty unvarnished as criticism goes. Upon further consideration, I might more correctly have said she’s like the unholy spawn of an unnatural union between Pee Wee Herman and Snookie with oven mitts. In any case, I took the suggestion in the spirit it was intended – entirely constructive as I said – and had another look at Nadia G., and let me tell you, once my ears stopped bleeding and my appetite returned, I concluded that not only had I been right in the first place, but I don’t think my initial evaluation went far enough, as it did nothing to prevent the creation and marketing of Nadia G’s Christmas video. Honestly, I’ve had acid flashbacks that were more coherent, better choreographed and far less unpleasant than watching this. In hindsight, I do wish I hadn’t shot out the TV, but we all have our Elvis moments, and once you see this video, you’ll know why.', CAST(N'2012-12-12 00:00:00.000' AS DateTime), CAST(N'2012-12-12 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (16, 14, N'Start your 2012 Right! Rachel vs Guy: Celebrity Cook-Off', N'Ah New Year’s Day, that wonderful celebration of new beginnings, hangover ministrations, formal apologies, stomach pumps and bail hearings. Following as it does on the heels of what my family fondly calls amateur night, January first is steeped in homespun tradition, most of which centers around stepping over the moaning carcasses of relatives, friends and complete strangers strewn around the living room and desperately trying to warm themselves at the flat screen. But it’s also about disconsolately sipping Alka Seltzer between trips to the powder room and coping with the mortification and shame that accompany each flashback of the night before.', CAST(N'2012-12-31 00:00:00.000' AS DateTime), CAST(N'2012-12-31 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (17, 15, N'Progressive International Pastry Mat', N'Whether you''re baking a pie, bread from scratch or simply rolling out refrigerated cookie dough, this pastry mat is ideal. The mat has printed round dimensions from 5"-16" to help guide you when rolling out dough. Recipes and dimensions in inches and centimeters are printed on the mat''s edge. When not in use, simply roll up this flexible mat for compact and easy storage.', CAST(N'2011-12-21 00:00:00.000' AS DateTime), CAST(N'2011-12-21 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (18, 15, N'Eggs: The perfect food unit', N'I love eggs as much as I hate green peppers, which is to say quite a lot. Really, can you think of any other food that is perfect for breakfast, lunch or dinner, stays fresh indefinitely and costs so little? Not even the mighty brownie, though a perfect meal at an time of the day or night, can last more than a week, even in the fridge. On the other hand, if I’m being frank, and I do try to be, brownies never last more than about an hour in my house anyway, so freshness is really not an issue. The egg, however, lends itself to infinite uses and when properly prepared is both tasty and nutritious, so let’s talk eggs.', CAST(N'2011-12-30 00:00:00.000' AS DateTime), CAST(N'2011-12-30 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (19, 15, N'In praise of the bread machine', N'Let me tell you bread machines were the hottest things since, well sliced bread, in the early 90s if memory serves. These days you don’t hear much about them, really, what with the ascendance of convection ovens (two sets of cooking times, are you kidding?), restaurant grade appliances (in the home?! I don’t need the unreasonable expectations created by having six burners), and the George Foreman grill (get real, I live in New York City. There’s barely room for the coffee maker in my kitchen, and that’s critical). But you never hear about the lowly bread machine anymore. It’s fallen out of fashion, and I don’t know why. Maybe it’s because we’re in a period where labor-intensive is more chic than labor-saving, and that’s just messed up.', CAST(N'2011-12-31 00:00:00.000' AS DateTime), CAST(N'2011-12-31 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (20, 15, N'Here come the holidays! Time to dust off your punch bowl.', N'For those of us who don’t have working fireplaces, the punch bowl is the friendly center of the holiday party. Here happy – and happier and happier – guests cluster while sipping festively colored punch from cute little cups, discussing the events of the day and generally getting acquainted before they eventually, and inevitably, hijack the iPod to play I Want Your Sex on an endless loop while groping their new found friends. Nothing spells party success like guests dancing on the table, vomiting into the rubber plant or warbling along with George Michael into the half-peeled cucumber ends they fished out of the garbage can. And for that, there’s nothing like a quart or so of inhibition-busting rocket fuel in the form of fruit-flavored strong drink freely ladled from a large bowl.', CAST(N'2012-02-03 00:00:00.000' AS DateTime), CAST(N'2012-02-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (21, 16, N'Running errands in Buenos Aires', N'In my last post, I mentioned that I need a blender because buying groceries has been a disaster.', CAST(N'2011-04-03 00:00:00.000' AS DateTime), CAST(N'2011-04-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (22, 16, N'How I Make Money, Part I: Top 3 Myths That Stop Would-Be Entrepreneurs', N'“So, are you here to work or to study?”', CAST(N'2011-06-03 00:00:00.000' AS DateTime), CAST(N'2011-06-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (23, 16, N'10 Easy Things You Can Do To Improve Your Life Today', N'Changing or improving your life doesn’t have to be a long, frustrating, drawn-out process. I’m always in search of the smallest changes that yield the biggest returns, and below is my collection of quick tips that can make your life easier, more fulfilling, or just less of a pain in the ass.', CAST(N'2011-07-09 00:00:00.000' AS DateTime), CAST(N'2011-07-09 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (24, 16, N'Buying a blender in Argentina (or, how I learned the word ‘regalo’)', N'“Americans who travel abroad for the first time are often shocked to discover that, despite all the progress that has been made in the last 30 years, many foreign people still speak in foreign languages.”', CAST(N'2011-08-03 00:00:00.000' AS DateTime), CAST(N'2011-08-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (26, 20, N'Do-Re-Meat Sticks', N'I am completely irrational when it comes to my health. I often think my illnesses are more serious than they actually are, and call my dad asking for the signs of a heart attack on a regular basis. Most of my family and friends listen to me stress about my latest ailment, humor me, and then change the subject.', CAST(N'2010-12-04 00:00:00.000' AS DateTime), CAST(N'2010-12-04 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (27, 21, N'Three Unexpected Vacation Delights', N'Jess and I are planners. Major, strategize for months planners. We love to create itineraries, manage our schedule and budgets to a T, and make lists of things to buy for our trips. We wholeheartedly feel that the planning stage is half the fun. Doolin was not on our radar when we traveled to Ireland in 2008. We – my sister Dawn and good friend Laura – had planned to stay in Killarney for a few days. But when we arrived on the cusp of the offseason, the night after the local soccer team suffered a loss in the championship game, Killarney was deadsville. After one night, we were definitely thinking about a jailbreak.', CAST(N'2011-02-03 00:00:00.000' AS DateTime), CAST(N'2011-02-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Entries] ([EntryID], [CategoryID], [Title], [EntryContent], [DateCreated], [DateModified]) VALUES (28, 21, N'Romantic Culzean Castle', N'In honor of Valentine’s Day, I’d like to share the first in what will hopefully become an ongoing series of photo essays about castles. After all, what’s more romantic than a castle? Whether it’s a crumbling stone ruin or a perfectly preserved structure straight out of Cinderella, a castle evokes fantasies of faraway places, long-ago times, and—let’s be honest—that handsome prince.', CAST(N'2011-04-05 00:00:00.000' AS DateTime), CAST(N'2011-04-05 00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Entries] OFF
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Entries] FOREIGN KEY([EntryID])
REFERENCES [dbo].[Entries] ([EntryID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Entries]
GO
ALTER TABLE [dbo].[Entries]  WITH CHECK ADD  CONSTRAINT [FK_Entries_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Entries] CHECK CONSTRAINT [FK_Entries_Categories]
GO
USE [master]
GO
ALTER DATABASE [BlogDB] SET  READ_WRITE 
GO
