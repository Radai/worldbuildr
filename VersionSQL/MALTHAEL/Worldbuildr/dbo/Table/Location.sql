/****** Object:  Table [dbo].[Location]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Location](
	[Id] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Location_Type] FOREIGN KEY([Type_Id])
REFERENCES [dbo].[Location_Type] ([Location_Type_Id])
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Location_Type]
