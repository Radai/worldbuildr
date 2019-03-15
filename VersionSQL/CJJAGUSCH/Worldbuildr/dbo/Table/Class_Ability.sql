/****** Object:  Table [dbo].[Class_Ability]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Class_Ability](
	[Class_Ability_Id] [int] NOT NULL,
	[Class_Id] [int] NOT NULL,
	[Ability_Id] [int] NOT NULL,
 CONSTRAINT [PK_Class_Ability] PRIMARY KEY CLUSTERED 
(
	[Class_Ability_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Class_Ability]  WITH CHECK ADD  CONSTRAINT [FK_Class_Ability_Ability] FOREIGN KEY([Class_Ability_Id])
REFERENCES [dbo].[Ability] ([Id])
ALTER TABLE [dbo].[Class_Ability] CHECK CONSTRAINT [FK_Class_Ability_Ability]
ALTER TABLE [dbo].[Class_Ability]  WITH CHECK ADD  CONSTRAINT [FK_Class_Ability_Class] FOREIGN KEY([Class_Ability_Id])
REFERENCES [dbo].[Class] ([Id])
ALTER TABLE [dbo].[Class_Ability] CHECK CONSTRAINT [FK_Class_Ability_Class]
