/****** Object:  Table [dbo].[Events]    Script Date: 18/10/2023 11:37:00 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[eventId] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](250) NOT NULL,
	[imgBanner] [nvarchar](250) NOT NULL,
	[registrationStartDate] [datetime] NOT NULL,
	[registrationEndDate] [datetime] NOT NULL,
	[eventStartDate] [datetime] NOT NULL,
	[eventEndDate] [datetime] NOT NULL,
	[downloadLink] [nvarchar](250) NOT NULL,
	[registrationLink] [nvarchar](250) NOT NULL,
	[venue] [nvarchar](250) NOT NULL,
	[location] [nvarchar](250) NOT NULL,
	[week] [nvarchar](250) NOT NULL,
	[dateAdded] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Events] ADD  CONSTRAINT [DF_Events_dateAdded]  DEFAULT (getdate()) FOR [dateAdded]
GO
