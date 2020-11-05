CREATE SCHEMA [adf] 
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [adf].[DatabaseServer]
(
	[DatabaseServerId] [int] IDENTITY(1,1) NOT NULL,
	[FriendlyDatabaseName] [nvarchar](255) NOT NULL,
	[DatabaseServerName] [nvarchar](255) NOT NULL,
	[DatabaseName] [nvarchar](255) NOT NULL,
	[ResourceGroup] [nvarchar](255) NULL,
	[SubscriptionId] [nvarchar](255) NULL,
	[IsSynapse] [bit] NULL,
	CONSTRAINT [PK_app__DatabaseServer__DatabaseServerId] PRIMARY KEY CLUSTERED 
(
	[DatabaseServerId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [adf].[DatabaseServer] ADD  DEFAULT ((0)) FOR [IsSynapse]
GO

