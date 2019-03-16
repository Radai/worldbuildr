/****** Object:  Table [dbo].[Character]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Character](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Class] [int] NULL,
	[Race] [int] NOT NULL,
	[Type_Id] [int] NOT NULL,
	[STR] [int] NULL,
	[DEX] [int] NULL,
	[CON] [int] NULL,
	[INT] [int] NULL,
	[WIS] [int] NULL,
	[CHA] [int] NULL,
	[Location_Id] [int] NULL,
 CONSTRAINT [PK_Character] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Character]  WITH CHECK ADD  CONSTRAINT [FK_Character_Character_Type] FOREIGN KEY([Type_Id])
REFERENCES [dbo].[Character_Type] ([Id])
ALTER TABLE [dbo].[Character] CHECK CONSTRAINT [FK_Character_Character_Type]
ALTER TABLE [dbo].[Character]  WITH CHECK ADD  CONSTRAINT [FK_Character_Location] FOREIGN KEY([Location_Id])
REFERENCES [dbo].[Location] ([Id])
ALTER TABLE [dbo].[Character] CHECK CONSTRAINT [FK_Character_Location]
ALTER TABLE [dbo].[Character]  WITH CHECK ADD  CONSTRAINT [FK_Character_Race] FOREIGN KEY([Race])
REFERENCES [dbo].[Race] ([Id])
ALTER TABLE [dbo].[Character] CHECK CONSTRAINT [FK_Character_Race]
