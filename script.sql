USE [Books]
GO
/****** Object:  Table [dbo].[Electronnye knigi]    Script Date: 15.06.2023 9:12:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Electronnye knigi](
	[ID книги] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Electronnye knigi] PRIMARY KEY CLUSTERED 
(
	[ID книги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kniga1]    Script Date: 15.06.2023 9:12:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kniga1](
	[ID книги] [int] NOT NULL,
	[Автор] [nvarchar](max) NULL,
	[Наименование] [nvarchar](max) NULL,
	[Издатель] [nvarchar](max) NULL,
	[Количество страниц] [int] NULL,
	[Тип обложки] [nvarchar](50) NULL,
	[Масса] [float] NULL,
 CONSTRAINT [PK_Kniga1] PRIMARY KEY CLUSTERED 
(
	[ID книги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pokupatel]    Script Date: 15.06.2023 9:12:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pokupatel](
	[ID покупателя] [int] NOT NULL,
	[Фамилия] [nvarchar](max) NULL,
	[Имя] [nvarchar](max) NULL,
	[Адрес] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pokupatel] PRIMARY KEY CLUSTERED 
(
	[ID покупателя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soderzhanie zakaza]    Script Date: 15.06.2023 9:12:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soderzhanie zakaza](
	[[ID заказа] [int] NOT NULL,
	[[ID книги] [int] NULL,
	[Количество книг в заказе] [int] NULL,
 CONSTRAINT [PK_Soderzhanie zakaza] PRIMARY KEY CLUSTERED 
(
	[[ID заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakaz]    Script Date: 15.06.2023 9:12:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakaz](
	[ID заказа] [int] NOT NULL,
	[ID покупателя] [int] NULL,
	[Дата и время формирования заказа] [datetime] NULL,
	[Дата и время оплаты заказа] [datetime] NULL,
	[Дата и время доставки] [datetime] NULL,
 CONSTRAINT [PK_Zakaz] PRIMARY KEY CLUSTERED 
(
	[ID заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
