USE [duoyonghuban_shijiebei]
GO
/****** Object:  User [yubomcom]    Script Date: 02/27/2015 18:13:34 ******/
CREATE USER [yubomcom] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[wx_yyyUsersTemp]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_yyyUsersTemp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[openid] [varchar](100) NULL,
	[times] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_yyyUsersTemp_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyUsersTemp', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyUsersTemp', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyUsersTemp', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyUsersTemp', @level2type=N'COLUMN',@level2name=N'times'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyUsersTemp', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摇一摇用户抽奖临时表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyUsersTemp'
GO
/****** Object:  Table [dbo].[wx_yyyAwardUser]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_yyyAwardUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[uName] [varchar](50) NULL,
	[uTel] [varchar](500) NULL,
	[openid] [varchar](100) NULL,
	[jxName] [varchar](50) NULL,
	[jxIndex] [varchar](4000) NULL,
	[jpName] [varchar](200) NULL,
	[createDate] [datetime] NULL,
	[hasLingQu] [bit] NULL,
	[sn] [varchar](100) NULL,
 CONSTRAINT [PK_wx_yyyAwardUser_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'uName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'uTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'jxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖项序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'jxIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'jpName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中奖时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已经领取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'hasLingQu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sn码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摇一摇中奖用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardUser'
GO
/****** Object:  Table [dbo].[wx_yyyAwardItem]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_yyyAwardItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[jxName] [varchar](50) NULL,
	[jpName] [varchar](200) NULL,
	[jpNum] [int] NULL,
	[jpRealNum] [int] NULL,
	[sort_id] [int] NULL,
	[createDate] [datetime] NULL,
	[jiaodu_min] [float] NULL,
	[jiaodu_max] [float] NULL,
 CONSTRAINT [PK_wx_yyyAwardItem_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刮刮卡活动表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖项名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem', @level2type=N'COLUMN',@level2name=N'jxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem', @level2type=N'COLUMN',@level2name=N'jpName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品显示数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem', @level2type=N'COLUMN',@level2name=N'jpNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品真实数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem', @level2type=N'COLUMN',@level2name=N'jpRealNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度的最小值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem', @level2type=N'COLUMN',@level2name=N'jiaodu_min'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度的最大值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem', @level2type=N'COLUMN',@level2name=N'jiaodu_max'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摇一摇奖品列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyAwardItem'
GO
/****** Object:  Table [dbo].[wx_yyyActionInfo]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_yyyActionInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[actName] [varchar](100) NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[brief] [varchar](500) NULL,
	[contractInfo] [varchar](200) NULL,
	[actContent] [varchar](1000) NULL,
	[cfcjhf] [varchar](100) NULL,
	[endNotice] [varchar](200) NULL,
	[endContent] [varchar](500) NULL,
	[personNum] [int] NULL,
	[personMaxTimes] [int] NULL,
	[dayMaxTimes] [int] NULL,
	[openXyj] [varchar](4000) NULL,
	[createDate] [datetime] NULL,
	[beginPic] [varchar](500) NULL,
	[endPic] [varchar](500) NULL,
	[aStatus] [int] NULL,
	[djPwd] [varchar](50) NULL,
 CONSTRAINT [PK_wx_yyyActionInfo_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'actName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'brief'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'contractInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'actContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重复抽奖回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'cfcjhf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束公告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'endNotice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'endContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预计抽奖人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'personNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每人最多允许抽奖总次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'personMaxTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每天最多抽奖次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'dayMaxTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幸运奖内容（若不填写，则不开启幸运奖）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'openXyj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动开始的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'beginPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'endPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'aStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑奖密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo', @level2type=N'COLUMN',@level2name=N'djPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摇一摇活动表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yyyActionInfo'
GO
/****** Object:  Table [dbo].[wx_yy_result]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_yy_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[formId] [int] NULL,
	[openid] [varchar](100) NULL,
	[cName] [varchar](100) NULL,
	[cId] [int] NULL,
	[userResult] [varchar](2000) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_yy_result_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_result', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预约表单主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_result', @level2type=N'COLUMN',@level2name=N'formId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_result', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_result', @level2type=N'COLUMN',@level2name=N'cName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_result', @level2type=N'COLUMN',@level2name=N'cId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户提交的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_result', @level2type=N'COLUMN',@level2name=N'userResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_result', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预约用户提交的表单结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_result'
GO
/****** Object:  Table [dbo].[wx_yy_control]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_yy_control](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[formId] [int] NULL,
	[cName] [varchar](50) NULL,
	[cType] [varchar](4000) NULL,
	[minLength] [int] NULL,
	[maxLength] [int] NULL,
	[defaultValue] [varchar](2000) NULL,
	[isBiTian] [bit] NULL,
	[seq] [int] NULL,
	[createDate] [datetime] NULL,
	[remark] [varchar](800) NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](500) NULL,
	[isSys] [bit] NULL,
	[sysControlerType] [varchar](100) NULL,
 CONSTRAINT [PK_wx_yy_control_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'formId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'cName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件类型（显示类型0输入框1下拉框2单选框3复选择）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'cType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'minLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'maxLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'defaultValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'必填项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'isBiTian'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为系统内置字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'isSys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内置字段的类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control', @level2type=N'COLUMN',@level2name=N'sysControlerType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预约的表单字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_control'
GO
/****** Object:  Table [dbo].[wx_yy_base]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_yy_base](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[title] [varchar](200) NULL,
	[addr] [varchar](700) NULL,
	[phone] [varchar](50) NULL,
	[kfName] [varchar](50) NULL,
	[content] [varchar](1000) NULL,
	[picUrl] [varchar](1000) NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[remark] [varchar](2000) NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](500) NULL,
	[extStr2] [varchar](800) NULL,
	[createDate] [datetime] NULL,
	[seq] [int] NULL,
	[needSMS] [bit] NULL,
 CONSTRAINT [PK_wx_yy_base_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客服电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客服名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'kfName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头部图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'picUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展整数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'需要手机短信提醒' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base', @level2type=N'COLUMN',@level2name=N'needSMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线预约设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_yy_base'
GO
/****** Object:  Table [dbo].[wx_xt_zhufu]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_xt_zhufu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bId] [int] NULL,
	[openid] [varchar](200) NULL,
	[uName] [varchar](100) NULL,
	[phone] [varchar](100) NULL,
	[message] [varchar](500) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_xt_zhufu_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_zhufu', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'喜帖基本表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_zhufu', @level2type=N'COLUMN',@level2name=N'bId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_zhufu', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_zhufu', @level2type=N'COLUMN',@level2name=N'uName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_zhufu', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_zhufu', @level2type=N'COLUMN',@level2name=N'message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_zhufu', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'喜帖祝福信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_zhufu'
GO
/****** Object:  Table [dbo].[wx_xt_user]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_xt_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bId] [int] NULL,
	[openid] [varchar](200) NULL,
	[uName] [varchar](100) NULL,
	[phone] [varchar](100) NULL,
	[pNum] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_xt_user_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_user', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'喜帖基本表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_user', @level2type=N'COLUMN',@level2name=N'bId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_user', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_user', @level2type=N'COLUMN',@level2name=N'uName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_user', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赴宴人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_user', @level2type=N'COLUMN',@level2name=N'pNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_user', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'喜帖报名人信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_user'
GO
/****** Object:  Table [dbo].[wx_xt_photo]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_xt_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bId] [int] NULL,
	[pName] [varchar](200) NULL,
	[pUrl] [varchar](1000) NULL,
	[remark] [varchar](1000) NULL,
	[seq] [int] NULL,
 CONSTRAINT [PK_wx_xt_photo_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_photo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基本表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_photo', @level2type=N'COLUMN',@level2name=N'bId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_photo', @level2type=N'COLUMN',@level2name=N'pName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_photo', @level2type=N'COLUMN',@level2name=N'pUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_photo', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_photo', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'喜帖相册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_photo'
GO
/****** Object:  Table [dbo].[wx_xt_base]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_xt_base](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[wxTitle] [varchar](40) NULL,
	[keywords] [varchar](100) NULL,
	[fengmian] [varchar](1000) NULL,
	[donghua] [varchar](1000) NULL,
	[donghuaSlt] [varchar](1000) NULL,
	[manName] [varchar](50) NULL,
	[felmanName] [varchar](50) NULL,
	[nameSeq] [int] NULL,
	[tel] [varchar](40) NULL,
	[statedate] [datetime] NULL,
	[addr] [varchar](500) NULL,
	[lngX] [float] NULL,
	[latY] [float] NULL,
	[video] [varchar](1000) NULL,
	[video2] [varchar](1000) NULL,
	[music] [varchar](1000) NULL,
	[word] [varchar](500) NULL,
	[sqrurl] [varchar](1000) NULL,
	[copyrite] [varchar](200) NULL,
	[createDate] [datetime] NULL,
	[templateId] [int] NULL,
	[templateName] [varchar](300) NULL,
	[pwd] [varchar](100) NULL,
	[extStr] [varchar](1000) NULL,
	[extStr2] [varchar](4000) NULL,
	[extInt] [int] NULL,
 CONSTRAINT [PK_wx_xt_base_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'喜帖标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'wxTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'封面url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'fengmian'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动画url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'donghua'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动画缩略图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'donghuaSlt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新郎名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'manName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新娘名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'felmanName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名排序：1新郎在前，2新娘在前' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'nameSeq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚宴时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'statedate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宴席地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'x轴坐标（经度）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'lngX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'y轴左边（纬度）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'latY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'喜帖视频url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'video'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'video2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'音乐url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'music'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'想要给朋友说的话：' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'word'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二维码地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'sqrurl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版权' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'copyrite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版表Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'templateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'templateName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'喜帖基本信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_xt_base'
GO
/****** Object:  Table [dbo].[wx_wsite_setting]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_wsite_setting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wId] [int] NULL,
	[wName] [varchar](500) NULL,
	[companyName] [varchar](500) NULL,
	[bgMusic] [varchar](800) NULL,
	[bgPic] [varchar](800) NULL,
	[bgDongHuaId] [int] NULL,
	[wCopyright] [varchar](500) NULL,
	[wBrief] [varchar](500) NULL,
	[remark] [varchar](2000) NULL,
	[phone] [varchar](200) NULL,
	[addr] [varchar](1000) NULL,
	[addrUrl] [varchar](1000) NULL,
	[email] [varchar](200) NULL,
	[seo_title] [varchar](500) NULL,
	[seo_keywords] [varchar](500) NULL,
	[seo_desc] [varchar](1000) NULL,
	[createDate] [datetime] NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](500) NULL,
	[extStr2] [varchar](800) NULL,
 CONSTRAINT [PK_wx_wsite_setting_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'wId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'wName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'companyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景音乐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'bgMusic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'bgPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景动画' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'bgDongHuaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站版权信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'wCopyright'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微网站简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'wBrief'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'addrUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'seo标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'seo关键词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'seo描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'seo_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微网站设置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_setting'
GO
/****** Object:  Table [dbo].[wx_wsite_modulebase]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_wsite_modulebase](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mName] [varchar](1000) NULL,
	[mCode] [varchar](100) NULL,
	[mValueInt] [int] NULL,
	[mValue] [varchar](2000) NULL,
	[mType] [varchar](100) NULL,
	[mTypeName] [varchar](150) NULL,
	[picUrl] [nvarchar](1000) NULL,
	[remark] [varchar](1000) NULL,
	[seq] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_wsite_modulebase_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'mName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'mCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'mValueInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'mValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'mType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'mTypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'效果图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'picUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微网站组件基本表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_wsite_modulebase'
GO
/****** Object:  Table [dbo].[wx_wifi]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_wifi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NOT NULL,
	[appkey] [varchar](100) NULL,
	[secret] [varchar](100) NULL,
	[merchantId] [varchar](100) NULL,
	[extStr] [varchar](500) NULL,
	[extSt2] [varchar](500) NULL,
	[extStr3] [varchar](500) NULL,
	[remark] [varchar](1000) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_wifi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wx_vote_result]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_vote_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[baseid] [int] NULL,
	[itemid] [int] NULL,
	[openId] [varchar](200) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_vote_result_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_result', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票基本表Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_result', @level2type=N'COLUMN',@level2name=N'baseid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项表id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_result', @level2type=N'COLUMN',@level2name=N'itemid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_result', @level2type=N'COLUMN',@level2name=N'openId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_result', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微投票结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_result'
GO
/****** Object:  Table [dbo].[wx_vote_item]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_vote_item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](500) NULL,
	[sort_id] [int] NULL,
	[pic_url] [varchar](500) NULL,
	[pic_jump] [varchar](500) NULL,
	[sid] [int] NULL,
	[createDate] [datetime] NULL,
	[baseid] [int] NULL,
	[tpTimes] [int] NULL,
 CONSTRAINT [PK_wx_vote_item_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_item', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_item', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_item', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片外链地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_item', @level2type=N'COLUMN',@level2name=N'pic_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片跳转地址以http://开头' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_item', @level2type=N'COLUMN',@level2name=N'pic_jump'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_item', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基本表主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_item', @level2type=N'COLUMN',@level2name=N'baseid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_item', @level2type=N'COLUMN',@level2name=N'tpTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微投票选项表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_item'
GO
/****** Object:  Table [dbo].[wx_vote_base]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_vote_base](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[title] [varchar](4000) NULL,
	[votepic] [varchar](800) NULL,
	[picdisplay] [bit] NULL,
	[votecontent] [varchar](1500) NULL,
	[isRadio] [bit] NULL,
	[beginTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[resultShowtype] [int] NULL,
	[actUrl] [varchar](800) NULL,
	[voteType] [int] NULL,
	[sort_id] [int] NULL,
	[creatDate] [datetime] NULL,
 CONSTRAINT [PK_wx_vote_base_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'votepic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'picdisplay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'votecontent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否单选' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'isRadio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'beginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'endTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'resultShowtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票后参加的活动' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'actUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'voteType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base', @level2type=N'COLUMN',@level2name=N'creatDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微投票基本表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_vote_base'
GO
/****** Object:  Table [dbo].[wx_userweixin]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_userweixin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uId] [int] NULL,
	[wxName] [varchar](200) NULL,
	[wxId] [varchar](100) NULL,
	[yixinId] [varchar](100) NULL,
	[weixinCode] [varchar](100) NULL,
	[wxPwd] [varchar](200) NULL,
	[headerpic] [varchar](1000) NULL,
	[apiurl] [varchar](1000) NULL,
	[wxToken] [varchar](300) NULL,
	[wxProvince] [varchar](200) NULL,
	[wxCity] [varchar](200) NULL,
	[AppId] [varchar](200) NULL,
	[AppSecret] [varchar](200) NULL,
	[Access_Token] [varchar](200) NULL,
	[openIdStr] [text] NULL,
	[createDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[wenziMaxNum] [int] NULL,
	[tuwenMaxNum] [int] NULL,
	[yuyinMaxNum] [int] NULL,
	[wenziDefineNum] [int] NULL,
	[tuwenDefineNum] [int] NULL,
	[yuyinDefineNum] [int] NULL,
	[requestTTNum] [int] NULL,
	[requestUsedNum] [int] NULL,
	[smsTTNum] [int] NULL,
	[smsUsedNum] [int] NULL,
	[isDelete] [bit] NULL,
	[deleteDate] [datetime] NULL,
	[wxType] [int] NULL,
	[remark] [text] NULL,
	[seq] [int] NULL,
	[extStr] [varchar](1000) NULL,
	[extStr2] [varchar](1500) NULL,
	[extStr3] [varchar](1000) NULL,
	[extInt] [int] NULL,
	[extInt2] [int] NULL,
 CONSTRAINT [PK_wx_userweixin_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户表主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'uId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众帐号名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'wxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众号原始id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'wxId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'易信原始id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'yixinId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'weixinCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信公众平台密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'wxPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像地址（url）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'headerpic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'apiurl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TOKEN值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'wxToken'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'wxProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'wxCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务号的AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'AppId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务号的AppSecret' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'AppSecret'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关注用户openid字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'openIdStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文本上限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'wenziMaxNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图文上限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'tuwenMaxNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语音上限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'yuyinMaxNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文本定义条数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'wenziDefineNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图文定义条数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'tuwenDefineNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语音定义条数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'yuyinDefineNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总请求数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'requestTTNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已经使用的请求数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'requestUsedNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信总条数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'smsTTNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已经使用的短信条数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'smsUsedNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'isDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'deleteDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信公众帐号类型（订阅号，服务号）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'wxType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'extStr3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin', @level2type=N'COLUMN',@level2name=N'extInt2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户的微信基本表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_userweixin'
GO
/****** Object:  Table [dbo].[wx_Userinfo]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_Userinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NOT NULL,
	[gid] [varchar](100) NULL,
	[openid] [varchar](100) NOT NULL,
	[subscribe] [int] NOT NULL,
	[nickname] [nvarchar](50) NULL,
	[sex] [int] NULL,
	[language] [varchar](50) NULL,
	[city] [nvarchar](20) NULL,
	[province] [nvarchar](20) NULL,
	[country] [nvarchar](50) NULL,
	[headimgul] [varchar](500) NULL,
	[subscribe_time] [datetime] NULL,
	[unsubscribe_time] [datetime] NULL,
	[remark] [nvarchar](500) NULL,
	[userid] [int] NULL,
	[groupid] [int] NULL,
	[groupname] [nvarchar](100) NULL,
	[extInt] [int] NULL,
	[extStr1] [nvarchar](100) NULL,
	[extStr2] [nvarchar](100) NULL,
	[extStr3] [nvarchar](100) NULL,
 CONSTRAINT [PK_wx_userinfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值为0时，代表此用户没有关注该公众号，拉取不到其余信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_Userinfo', @level2type=N'COLUMN',@level2name=N'subscribe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值为1时是男性，值为2时是女性，值为0时是未知 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_Userinfo', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'r' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_Userinfo', @level2type=N'COLUMN',@level2name=N'extStr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'r' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_Userinfo', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'r' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_Userinfo', @level2type=N'COLUMN',@level2name=N'extStr3'
GO
/****** Object:  Table [dbo].[wx_UserGroup]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_UserGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[groupname] [nvarchar](100) NULL,
	[classname] [nvarchar](50) NULL,
	[gid] [varchar](100) NULL,
	[exStr] [nvarchar](100) NULL,
 CONSTRAINT [PK_wx_UserGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公众号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_UserGroup', @level2type=N'COLUMN',@level2name=N'gid'
GO
/****** Object:  Table [dbo].[wx_ucard_users_consumeinfo]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_users_consumeinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sId] [int] NULL,
	[uid] [int] NULL,
	[moduleType] [varchar](80) NULL,
	[moduleTypeId] [int] NULL,
	[moduleActionName] [varchar](200) NULL,
	[moduleActionId] [int] NULL,
	[cScoreType] [int] NULL,
	[score] [int] NULL,
	[cMoneyType] [int] NULL,
	[consumeMoney] [float] NULL,
	[cContent] [varchar](800) NULL,
	[remark] [varchar](300) NULL,
	[addTime] [datetime] NULL,
	[sort_id] [int] NULL,
	[sn] [varchar](50) NULL,
	[operName] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
 CONSTRAINT [PK_wx_ucard_nfo_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'店铺id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'sId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'moduleType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块类型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'moduleTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块的活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'moduleActionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模版的活动id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'moduleActionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分类型（1加，2减）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'cScoreType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额类型（1加，2减）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'cMoneyType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'consumeMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'cContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'addTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'operName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo', @level2type=N'COLUMN',@level2name=N'pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员积分明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users_consumeinfo'
GO
/****** Object:  Table [dbo].[wx_ucard_users]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[sid] [int] NULL,
	[openid] [varchar](100) NULL,
	[cardNo] [varchar](50) NULL,
	[pwd] [varchar](100) NULL,
	[degreeId] [int] NULL,
	[sex] [int] NULL,
	[birthday] [datetime] NULL,
	[wxName] [varchar](100) NULL,
	[realName] [varchar](50) NULL,
	[age] [int] NULL,
	[qq] [varchar](20) NULL,
	[regTime] [datetime] NULL,
	[regIp] [varchar](20) NULL,
	[telphone] [varchar](50) NULL,
	[mobile] [varchar](20) NULL,
	[email] [varchar](100) NULL,
	[addr] [varchar](300) NULL,
	[endDate] [datetime] NULL,
	[ttScore] [int] NULL,
	[qdScore] [int] NULL,
	[consumeScore] [int] NULL,
	[consumeMoney] [float] NULL,
 CONSTRAINT [PK_wx_ucard_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'店铺id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'sid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'cardNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'degreeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'wxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'realName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'age'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'regTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'regIp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期截至时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'ttScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签到积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'qdScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'consumeScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users', @level2type=N'COLUMN',@level2name=N'consumeMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_users'
GO
/****** Object:  Table [dbo].[wx_ucard_usercard]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wx_ucard_usercard](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[sid] [int] NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_wx_ucard_usercard_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_usercard', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_usercard', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'店铺id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_usercard', @level2type=N'COLUMN',@level2name=N'sid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领取时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_usercard', @level2type=N'COLUMN',@level2name=N'addDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员领取卡信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_usercard'
GO
/****** Object:  Table [dbo].[wx_ucard_udegree]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_udegree](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[degreeNum] [int] NULL,
	[callName] [varchar](30) NULL,
	[score_min] [int] NULL,
	[score_max] [int] NULL,
	[createDate] [datetime] NULL,
	[sId] [int] NULL,
 CONSTRAINT [PK_wx_ucard_udegree_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_udegree', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_udegree', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_udegree', @level2type=N'COLUMN',@level2name=N'degreeNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'称呼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_udegree', @level2type=N'COLUMN',@level2name=N'callName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分下限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_udegree', @level2type=N'COLUMN',@level2name=N'score_min'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分上限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_udegree', @level2type=N'COLUMN',@level2name=N'score_max'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_udegree', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_udegree'
GO
/****** Object:  Table [dbo].[wx_ucard_ticket]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_ticket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sId] [int] NULL,
	[wid] [int] NULL,
	[tName] [varchar](100) NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[typeId] [int] NULL,
	[usedContent] [varchar](1500) NULL,
	[usedTimes] [int] NULL,
	[userDegree] [varchar](500) NULL,
	[userType] [int] NULL,
	[consumeMoney] [int] NULL,
	[dyMoney] [int] NULL,
	[createDate] [datetime] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_wx_ucard_ticket_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优惠券名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'tName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型id(1打折优惠券,2现金抵用券)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'typeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'usedContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每个用户可以获得的张数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'usedTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用的人群等级（id用逗号隔开）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'userDegree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人群类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'userType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'consumeMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抵用金额（元）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket', @level2type=N'COLUMN',@level2name=N'dyMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优惠券' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_ticket'
GO
/****** Object:  Table [dbo].[wx_ucard_sys]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_sys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[tradeTel] [varchar](50) NULL,
	[tradeContent] [varchar](1500) NULL,
	[cardType] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_ucard_sys_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_sys', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_sys', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招商电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_sys', @level2type=N'COLUMN',@level2name=N'tradeTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招商说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_sys', @level2type=N'COLUMN',@level2name=N'tradeContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版面选择(1会员卡商家很少,2会员卡商家很多)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_sys', @level2type=N'COLUMN',@level2name=N'cardType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_sys', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_sys'
GO
/****** Object:  Table [dbo].[wx_ucard_store_fendian]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_store_fendian](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sId] [int] NULL,
	[area] [varchar](80) NULL,
	[addr] [varchar](300) NULL,
	[xPoint] [float] NULL,
	[yPoint] [float] NULL,
	[tel] [varchar](30) NULL,
	[sort_id] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_ucard_ian_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store_fendian', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'店铺id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store_fendian', @level2type=N'COLUMN',@level2name=N'sId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store_fendian', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store_fendian', @level2type=N'COLUMN',@level2name=N'addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'x坐标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store_fendian', @level2type=N'COLUMN',@level2name=N'xPoint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'y坐标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store_fendian', @level2type=N'COLUMN',@level2name=N'yPoint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store_fendian', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store_fendian', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store_fendian', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分店' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store_fendian'
GO
/****** Object:  Table [dbo].[wx_ucard_store]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_store](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[storeName] [varchar](200) NULL,
	[logo] [varchar](800) NULL,
	[storeCatagory] [varchar](50) NULL,
	[cardBrief] [varchar](48) NULL,
	[consumePwd] [varchar](30) NULL,
	[tel] [varchar](40) NULL,
	[addr] [varchar](200) NULL,
	[xPoint] [float] NULL,
	[yPoint] [float] NULL,
	[createDate] [datetime] NULL,
	[sort_id] [int] NULL,
	[isRecommend] [bit] NULL,
	[hfPic] [varchar](700) NULL,
 CONSTRAINT [PK_wx_ucard_store_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'店铺名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'storeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'logo图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'店铺分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'storeCatagory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'cardBrief'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'consumePwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'x坐标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'xPoint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'y坐标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'yPoint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'isRecommend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词回复的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store', @level2type=N'COLUMN',@level2name=N'hfPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡店铺信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_store'
GO
/****** Object:  Table [dbo].[wx_ucard_score]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_score](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[userdContent] [varchar](1500) NULL,
	[scoreRegular] [varchar](1500) NULL,
	[qiandaoScore] [int] NULL,
	[qiandao6Score] [int] NULL,
	[consumeMoney] [int] NULL,
	[consumeMoneyScore] [int] NULL,
	[sId] [int] NULL,
 CONSTRAINT [PK_wx_ucard_score_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_score', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_score', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡使用说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_score', @level2type=N'COLUMN',@level2name=N'userdContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分规则说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_score', @level2type=N'COLUMN',@level2name=N'scoreRegular'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签到得分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_score', @level2type=N'COLUMN',@level2name=N'qiandaoScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连续6天签到奖励' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_score', @level2type=N'COLUMN',@level2name=N'qiandao6Score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费多少金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_score', @level2type=N'COLUMN',@level2name=N'consumeMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费金额奖励的积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_score', @level2type=N'COLUMN',@level2name=N'consumeMoneyScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分策略' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_score'
GO
/****** Object:  Table [dbo].[wx_ucard_privileges]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_privileges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[pName] [varchar](100) NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[usedContent] [varchar](1500) NULL,
	[userDegree] [varchar](500) NULL,
	[sId] [int] NULL,
	[createDate] [datetime] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_wx_ucard_privileges_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_privileges', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_privileges', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特权名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_privileges', @level2type=N'COLUMN',@level2name=N'pName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_privileges', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_privileges', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_privileges', @level2type=N'COLUMN',@level2name=N'usedContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用的人群等级（id用逗号隔开）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_privileges', @level2type=N'COLUMN',@level2name=N'userDegree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特权' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_privileges'
GO
/****** Object:  Table [dbo].[wx_ucard_notice]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_notice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[nName] [varchar](100) NULL,
	[nContent] [varchar](1500) NULL,
	[userDegree] [varchar](500) NULL,
	[createDate] [datetime] NULL,
	[sId] [int] NULL,
 CONSTRAINT [PK_wx_ucard_notice_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_notice', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_notice', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_notice', @level2type=N'COLUMN',@level2name=N'nName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_notice', @level2type=N'COLUMN',@level2name=N'nContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知的人的等级（id使用逗号隔开）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_notice', @level2type=N'COLUMN',@level2name=N'userDegree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_notice', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_notice'
GO
/****** Object:  Table [dbo].[wx_ucard_gift]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_gift](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[gName] [varchar](100) NULL,
	[score] [int] NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[useContent] [varchar](1500) NULL,
	[createDate] [datetime] NULL,
	[sId] [int] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_wx_ucard_gift_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_gift', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_gift', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_gift', @level2type=N'COLUMN',@level2name=N'gName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'需要的积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_gift', @level2type=N'COLUMN',@level2name=N'score'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_gift', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_gift', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_gift', @level2type=N'COLUMN',@level2name=N'useContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_gift', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'礼品券' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_gift'
GO
/****** Object:  Table [dbo].[wx_ucard_cardinfo]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_cardinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[cardName] [varchar](100) NULL,
	[cardNameColor] [varchar](20) NULL,
	[logo] [varchar](800) NULL,
	[isLogoShow] [bit] NULL,
	[bgTypeId] [int] NULL,
	[bgTypeUrl] [varchar](300) NULL,
	[bgUrl] [varchar](800) NULL,
	[cardNoColor] [varchar](20) NULL,
	[indexTip] [varchar](40) NULL,
	[noticePic] [varchar](500) NULL,
	[privilegesPic] [varchar](500) NULL,
	[qiandaoPic] [varchar](500) NULL,
	[shopingPic] [varchar](500) NULL,
	[perinfoPic] [varchar](500) NULL,
	[instructionsPic] [varchar](500) NULL,
	[contactusPic] [varchar](500) NULL,
	[createDate] [datetime] NULL,
	[sId] [int] NULL,
 CONSTRAINT [PK_wx_ucard_cardinfo_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡的名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'cardName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡名称的颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'cardNameColor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡的图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'logo是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'isLogoShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡的背景类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'bgTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景图片选择的url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'bgTypeUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自己设计背景' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'bgUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡号颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'cardNoColor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'首页提示文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'indexTip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知页面的banner图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'noticePic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特权页面的banner图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'privilegesPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签到页面的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'qiandaoPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费记录banner图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'shopingPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人资料banner图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'perinfoPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员卡说明banner图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'instructionsPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系我们banner图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'contactusPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卡面设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_cardinfo'
GO
/****** Object:  Table [dbo].[wx_ucard_adver]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ucard_adver](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[adverName] [varchar](50) NULL,
	[picUrl] [varchar](800) NULL,
	[linkUrl] [varchar](200) NULL,
	[isShow] [bit] NULL,
	[sort_id] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_ucard_adver_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_adver', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_adver', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_adver', @level2type=N'COLUMN',@level2name=N'adverName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_adver', @level2type=N'COLUMN',@level2name=N'picUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_adver', @level2type=N'COLUMN',@level2name=N'linkUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否展示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_adver', @level2type=N'COLUMN',@level2name=N'isShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_adver', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_adver', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ucard_adver'
GO
/****** Object:  Table [dbo].[wx_templates_wcode]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_templates_wcode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[tid] [int] NULL,
	[remark] [varchar](2000) NULL,
	[createDate] [datetime] NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](500) NULL,
	[extStr2] [varchar](800) NULL,
	[listTid] [int] NULL,
	[detailTid] [int] NULL,
	[channelTid] [int] NULL,
	[bmenuTid] [int] NULL,
	[topcolorTypeId] [int] NULL,
	[topcolorTypeName] [varchar](100) NULL,
	[topcolorHtml] [text] NULL,
 CONSTRAINT [PK_wx_templates_wcode_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列表页模版Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'listTid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细页面模版Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'detailTid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道页面模版Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'channelTid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'底部菜单模版Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'bmenuTid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶部颜色类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'topcolorTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶部颜色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'topcolorTypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶部颜色html' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode', @level2type=N'COLUMN',@level2name=N'topcolorHtml'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号的模版表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates_wcode'
GO
/****** Object:  Table [dbo].[wx_templates]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_templates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tName] [varchar](100) NULL,
	[author] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[version] [varchar](50) NULL,
	[forWxVersion] [varchar](50) NULL,
	[typeName] [varchar](100) NULL,
	[typeId] [int] NULL,
	[aboutPic] [varchar](800) NULL,
	[tFileName] [varchar](50) NULL,
	[degreeName] [varchar](100) NULL,
	[degreId] [int] NULL,
	[remark] [varchar](1000) NULL,
 CONSTRAINT [PK_wx_templates_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'tName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'forWxVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'typeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'typeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版的效果图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'aboutPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版的物理文件夹名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'tFileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版适用级别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'degreeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版适用级别Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'degreId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微网站模版表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_templates'
GO
/****** Object:  Table [dbo].[wx_sysConfig]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_sysConfig](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sysCode] [varchar](50) NULL,
	[sysName] [varchar](100) NULL,
	[sysValue] [varchar](500) NULL,
	[sysTypeId] [int] NULL,
	[sysTypeName] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[parentId] [int] NULL,
	[remark] [varchar](500) NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_wx_sysConfig_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig', @level2type=N'COLUMN',@level2name=N'sysCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig', @level2type=N'COLUMN',@level2name=N'sysName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig', @level2type=N'COLUMN',@level2name=N'sysValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig', @level2type=N'COLUMN',@level2name=N'sysTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig', @level2type=N'COLUMN',@level2name=N'sysTypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级配置Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig', @level2type=N'COLUMN',@level2name=N'parentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信相关系统级配置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sysConfig'
GO
/****** Object:  Table [dbo].[wx_sttAwardUser]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_sttAwardUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[uName] [varchar](50) NULL,
	[uTel] [varchar](500) NULL,
	[openid] [varchar](100) NULL,
	[jxName] [varchar](50) NULL,
	[jpName] [varchar](200) NULL,
	[createDate] [datetime] NULL,
	[hasLingQu] [bit] NULL,
	[sn] [varchar](100) NULL,
 CONSTRAINT [PK_wx_sttAwardUser_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser', @level2type=N'COLUMN',@level2name=N'uName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser', @level2type=N'COLUMN',@level2name=N'uTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser', @level2type=N'COLUMN',@level2name=N'jxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser', @level2type=N'COLUMN',@level2name=N'jpName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中奖时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已经领取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser', @level2type=N'COLUMN',@level2name=N'hasLingQu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sn码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优惠券简单版中奖用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardUser'
GO
/****** Object:  Table [dbo].[wx_sttAwardItem]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_sttAwardItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[jxName] [varchar](100) NULL,
	[jpName] [varchar](200) NULL,
	[jpNum] [int] NULL,
	[jpRealNum] [int] NULL,
	[sort_id] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_sttAwardItem_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardItem', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优惠券活动表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardItem', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖项名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardItem', @level2type=N'COLUMN',@level2name=N'jxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardItem', @level2type=N'COLUMN',@level2name=N'jpName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品显示数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardItem', @level2type=N'COLUMN',@level2name=N'jpNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品真实数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardItem', @level2type=N'COLUMN',@level2name=N'jpRealNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardItem', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardItem', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优惠券奖品列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sttAwardItem'
GO
/****** Object:  Table [dbo].[wx_sTicket]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_sTicket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[actionName] [varchar](100) NULL,
	[succTip] [varchar](500) NULL,
	[brief] [varchar](500) NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[aContent] [varchar](2000) NULL,
	[usedRemark] [varchar](500) NULL,
	[telphone] [varchar](30) NULL,
	[wUrl] [varchar](1000) NULL,
	[seq] [int] NULL,
	[remark] [varchar](4000) NULL,
	[createDate] [datetime] NULL,
	[endNotice] [varchar](100) NULL,
	[endContent] [varchar](500) NULL,
	[bannerPic] [varchar](800) NULL,
	[beginPic] [varchar](800) NULL,
	[endPic] [varchar](800) NULL,
	[pwd] [varchar](20) NULL,
 CONSTRAINT [PK_wx_sTicket_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'actionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成功抢到券说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'succTip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'brief'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'aContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换券使用说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'usedRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'wUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束通知' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'endNotice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'endContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头部图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'bannerPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动开始的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'beginPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'endPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑奖密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket', @level2type=N'COLUMN',@level2name=N'pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优惠券（简单版）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sTicket'
GO
/****** Object:  Table [dbo].[wx_sq_piclist]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wx_sq_piclist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aid] [int] NULL,
	[openid] [varchar](100) NULL,
	[picUrl] [varchar](800) NULL,
	[createDate] [datetime] NULL,
	[hasShenghe] [bit] NULL,
 CONSTRAINT [PK_wx_sq_piclist_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_piclist', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上墙活动表id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_piclist', @level2type=N'COLUMN',@level2name=N'aid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_piclist', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_piclist', @level2type=N'COLUMN',@level2name=N'picUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_piclist', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核通过' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_piclist', @level2type=N'COLUMN',@level2name=N'hasShenghe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信用户的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_piclist'
GO
/****** Object:  Table [dbo].[wx_sq_heimd]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wx_sq_heimd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aid] [int] NULL,
	[openid] [varchar](100) NULL,
	[createDate] [datetime] NULL,
	[remark] [varchar](500) NULL,
 CONSTRAINT [PK_wx_sq_heimd_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_heimd', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_heimd', @level2type=N'COLUMN',@level2name=N'aid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_heimd', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_heimd', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_heimd', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上墙黑名单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_heimd'
GO
/****** Object:  Table [dbo].[wx_sq_act]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wx_sq_act](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[isOpen] [bit] NULL,
	[actName] [varchar](200) NULL,
	[brief] [varchar](500) NULL,
	[shenghe] [bit] NULL,
	[noshengheTip] [varchar](500) NULL,
	[shengheTip] [varchar](500) NULL,
	[bannerPic] [varchar](800) NULL,
	[endDate] [datetime] NULL,
	[beginDate] [datetime] NULL,
	[createDate] [datetime] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_wx_sq_act_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'isOpen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'actName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'brief'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否需要审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'shenghe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'没有审核的提示语句' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'noshengheTip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核的提示语句' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'shengheTip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头部图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'bannerPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上墙活动表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sq_act'
GO
/****** Object:  Table [dbo].[wx_sms_info]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_sms_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NOT NULL,
	[tel] [varchar](500) NOT NULL,
	[smsContent] [varchar](1000) NULL,
	[sStatusNum] [varchar](100) NULL,
	[sStatus] [varchar](100) NULL,
	[moduleName] [varchar](100) NULL,
	[actionId] [int] NULL,
	[actionName] [varchar](200) NULL,
	[createDate] [datetime] NOT NULL,
	[remark] [varchar](1000) NULL,
 CONSTRAINT [PK_wx_sms_info_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'smsContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送状态的数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'sStatusNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'sStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送短信的模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'moduleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块活动的主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'actionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块活动的名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'actionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信发送信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_info'
GO
/****** Object:  Table [dbo].[wx_sms_config]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_sms_config](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NOT NULL,
	[uName] [varchar](50) NULL,
	[ucode] [varchar](100) NOT NULL,
	[pwd] [varchar](50) NOT NULL,
	[qianming] [varchar](100) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[remark] [varchar](1000) NULL,
	[sortId] [int] NULL,
 CONSTRAINT [PK_wx_sms_config_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_config', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_config', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_config', @level2type=N'COLUMN',@level2name=N'uName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_config', @level2type=N'COLUMN',@level2name=N'ucode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_config', @level2type=N'COLUMN',@level2name=N'pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_config', @level2type=N'COLUMN',@level2name=N'qianming'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_config', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_config', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_config', @level2type=N'COLUMN',@level2name=N'sortId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信配置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_sms_config'
GO
/****** Object:  Table [dbo].[wx_small_link]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_small_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sName] [varchar](100) NULL,
	[url] [varchar](1000) NULL,
	[sType] [varchar](50) NULL,
	[sortId] [int] NULL,
	[isGlobal] [bit] NULL,
	[companyName] [varchar](100) NULL,
	[comTel] [varchar](50) NULL,
	[remark] [varchar](1000) NULL,
 CONSTRAINT [PK_wx_small_link_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_small_link', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_small_link', @level2type=N'COLUMN',@level2name=N'sName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_small_link', @level2type=N'COLUMN',@level2name=N'url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_small_link', @level2type=N'COLUMN',@level2name=N'sType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_small_link', @level2type=N'COLUMN',@level2name=N'sortId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为全局' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_small_link', @level2type=N'COLUMN',@level2name=N'isGlobal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_small_link', @level2type=N'COLUMN',@level2name=N'companyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_small_link', @level2type=N'COLUMN',@level2name=N'comTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_small_link', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小模块的链接地址信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_small_link'
GO
/****** Object:  Table [dbo].[wx_sjb_users]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_sjb_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[openid] [varchar](300) NULL,
	[uName] [varchar](100) NULL,
	[tel] [varchar](30) NULL,
	[succTimes] [int] NULL,
	[failTimes] [int] NULL,
 CONSTRAINT [PK_wx_sjb_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wx_sjb_richeng]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_sjb_richeng](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[rcName] [varchar](200) NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[rcPic] [varchar](800) NULL,
	[remark] [varchar](2000) NULL,
	[sort_id] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_sjb_richeng] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wx_sjb_qiudui]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_sjb_qiudui](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[qdName] [varchar](100) NULL,
	[qdPic] [varchar](800) NULL,
	[remark] [varchar](2000) NULL,
	[succTimes] [int] NULL,
	[failTimes] [int] NULL,
	[sort_id] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_sjb_qiudui] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wx_sjb_jcDetail]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wx_sjb_jcDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[rcId] [int] NULL,
	[bsId] [int] NULL,
	[jcRetType] [int] NULL,
	[retIsRight] [bit] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_sjb_jcDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wx_sjb_bisai]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_sjb_bisai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bsPic] [varchar](800) NULL,
	[bsRemark] [varchar](2000) NULL,
	[rcId] [int] NULL,
	[qd1Id] [int] NULL,
	[qd2Id] [int] NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[jcBeginDate] [datetime] NULL,
	[jcEndDate] [datetime] NULL,
	[resultType] [int] NULL,
	[rType1Times] [int] NULL,
	[rType2Times] [int] NULL,
	[rType3Times] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_sjb_bisai] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wx_shop_user_addr]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_user_addr](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NOT NULL,
	[openid] [varchar](100) NOT NULL,
	[province] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[area] [varchar](100) NULL,
	[addrDetail] [varchar](200) NULL,
	[tel] [varchar](50) NULL,
	[jiedao] [varchar](100) NULL,
	[contractPerson] [varchar](30) NULL,
	[createDate] [datetime] NOT NULL,
	[isDefault] [bit] NULL,
 CONSTRAINT [PK_wx_shop_user_addr_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'province'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'addrDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'街道' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'jiedao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'contractPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认选择项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr', @level2type=N'COLUMN',@level2name=N'isDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户地址表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_user_addr'
GO
/****** Object:  Table [dbo].[wx_shop_sku]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_sku](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[sku] [varchar](16) NULL,
	[stock] [int] NULL,
	[price] [float] NULL,
	[attributeValue] [varchar](500) NULL,
	[attributeId] [int] NULL,
 CONSTRAINT [PK_wx_shop_sku_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_sku', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_sku', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sku货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_sku', @level2type=N'COLUMN',@level2name=N'sku'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_sku', @level2type=N'COLUMN',@level2name=N'stock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_sku', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_sku', @level2type=N'COLUMN',@level2name=N'attributeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性表id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_sku', @level2type=N'COLUMN',@level2name=N'attributeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品规格表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_sku'
GO
/****** Object:  Table [dbo].[wx_shop_setting]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_setting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[shopName] [varchar](200) NULL,
	[copyright] [varchar](200) NULL,
	[logo] [varchar](500) NULL,
	[bgPic] [varchar](500) NULL,
	[tel] [varchar](30) NULL,
	[addr] [varchar](300) NULL,
	[createDate] [datetime] NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](200) NULL,
 CONSTRAINT [PK_wx_shop_setting_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商城名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'shopName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版权' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'copyright'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'logo图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'bgPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商城基本信息设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_setting'
GO
/****** Object:  Table [dbo].[wx_shop_productAttr_value]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_productAttr_value](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[attributeId] [int] NULL,
	[productId] [int] NULL,
	[paValue] [varchar](300) NULL,
 CONSTRAINT [PK_wx_shop_plue_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_productAttr_value', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_productAttr_value', @level2type=N'COLUMN',@level2name=N'attributeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_productAttr_value', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品属性的值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_productAttr_value', @level2type=N'COLUMN',@level2name=N'paValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品属性对应的值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_productAttr_value'
GO
/****** Object:  Table [dbo].[wx_shop_product]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[categoryId] [int] NULL,
	[catalogId] [int] NULL,
	[brandId] [int] NULL,
	[sku] [varchar](20) NULL,
	[productName] [varchar](500) NULL,
	[shortDesc] [varchar](500) NULL,
	[unit] [varchar](10) NULL,
	[weight] [float] NULL,
	[description] [varchar](2000) NULL,
	[seo_title] [varchar](200) NULL,
	[seo_keywords] [varchar](300) NULL,
	[seo_description] [varchar](500) NULL,
	[focusImgUrl] [varchar](800) NULL,
	[thumbnailsUrll] [varchar](800) NULL,
	[recommended] [bit] NULL,
	[latest] [bit] NULL,
	[hotsale] [bit] NULL,
	[specialOffer] [bit] NULL,
	[costPrice] [float] NULL,
	[marketPrice] [float] NULL,
	[salePrice] [float] NULL,
	[upselling] [bit] NULL,
	[stock] [int] NULL,
	[addDate] [datetime] NULL,
	[vistiCounts] [int] NULL,
	[sort_id] [int] NULL,
	[productionDate] [datetime] NULL,
	[ExpiryEndDate] [datetime] NULL,
	[updateDate] [datetime] NULL,
 CONSTRAINT [PK_wx_shop_product_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'categoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品类型id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'catalogId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'brandId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存单元，货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'sku'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'productName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简单介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'shortDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计量单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'weight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'seo标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'seo关键词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'seo描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'focusImgUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'thumbnailsUrll'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'recommended'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最新' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'latest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最热' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'hotsale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'specialOffer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'costPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'marketPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'salePrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上架:0放入库存，1上架' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'upselling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'stock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'addDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'vistiCounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'productionDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期最后日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'ExpiryEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product', @level2type=N'COLUMN',@level2name=N'updateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_product'
GO
/****** Object:  Table [dbo].[wx_shop_comment]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[openid] [varchar](100) NULL,
	[user_name] [varchar](100) NULL,
	[user_ip] [varchar](20) NULL,
	[cContent] [varchar](1500) NULL,
	[add_time] [datetime] NULL,
	[is_reply] [int] NULL,
	[reply_content] [varchar](1500) NULL,
	[reply_time] [datetime] NULL,
 CONSTRAINT [PK_wx_shop_comment_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment', @level2type=N'COLUMN',@level2name=N'cContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否答复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment', @level2type=N'COLUMN',@level2name=N'is_reply'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'答复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment', @level2type=N'COLUMN',@level2name=N'reply_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'答复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment', @level2type=N'COLUMN',@level2name=N'reply_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品评论表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_comment'
GO
/****** Object:  Table [dbo].[wx_shop_category_catalog]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wx_shop_category_catalog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NULL,
	[catalogId] [int] NULL,
 CONSTRAINT [PK_wx_shop_clog_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category_catalog', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category_catalog', @level2type=N'COLUMN',@level2name=N'categoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category_catalog', @level2type=N'COLUMN',@level2name=N'catalogId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类对应的类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category_catalog'
GO
/****** Object:  Table [dbo].[wx_shop_category]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[code] [varchar](50) NULL,
	[parent_id] [int] NULL,
	[class_list] [varchar](500) NULL,
	[class_layer] [int] NULL,
	[sort_id] [int] NULL,
	[link_url] [varchar](800) NULL,
	[img_url] [varchar](800) NULL,
	[class_content] [varchar](2000) NULL,
	[remark] [varchar](1500) NULL,
	[seo_title] [varchar](300) NULL,
	[seo_keywords] [varchar](300) NULL,
	[seo_description] [varchar](500) NULL,
	[wid] [int] NULL,
	[ico_url] [varchar](1000) NULL,
 CONSTRAINT [PK_wx_shop_category_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类图片url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'class_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标ico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category', @level2type=N'COLUMN',@level2name=N'ico_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品分类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_category'
GO
/****** Object:  Table [dbo].[wx_shop_catalog_attribute]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_catalog_attribute](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[catalogId] [int] NULL,
	[aName] [varchar](100) NULL,
	[aType] [int] NULL,
	[aValue] [varchar](2000) NULL,
	[createDate] [datetime] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_wx_shop_cute_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog_attribute', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog_attribute', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属商品类型id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog_attribute', @level2type=N'COLUMN',@level2name=N'catalogId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog_attribute', @level2type=N'COLUMN',@level2name=N'aName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型(1供客户查看,2客户可选规格,3供客户填写)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog_attribute', @level2type=N'COLUMN',@level2name=N'aType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog_attribute', @level2type=N'COLUMN',@level2name=N'aValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog_attribute', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog_attribute', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品类型里的属性信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog_attribute'
GO
/****** Object:  Table [dbo].[wx_shop_catalog]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_catalog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[cTitle] [varchar](4000) NULL,
	[remark] [varchar](2000) NULL,
	[sort_id] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_shop_catalog_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog', @level2type=N'COLUMN',@level2name=N'cTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_catalog'
GO
/****** Object:  Table [dbo].[wx_shop_cart]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[openid] [varchar](100) NULL,
	[wid] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[skuId] [int] NOT NULL,
	[skuInfo] [varchar](500) NOT NULL,
	[totPrice] [float] NOT NULL,
	[productNum] [int] NOT NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_wx_shop_cart_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_cart', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_cart', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_cart', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_cart', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配件id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_cart', @level2type=N'COLUMN',@level2name=N'skuId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配件信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_cart', @level2type=N'COLUMN',@level2name=N'skuInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品总价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_cart', @level2type=N'COLUMN',@level2name=N'totPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_cart', @level2type=N'COLUMN',@level2name=N'productNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_cart', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物车' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_cart'
GO
/****** Object:  Table [dbo].[wx_shop_brand]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_brand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[bName] [varchar](200) NULL,
	[logo] [varchar](1000) NULL,
	[companyUrl] [varchar](1000) NULL,
	[companyName] [varchar](200) NULL,
	[remark] [varchar](2000) NULL,
	[sort_id] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_shop_brand_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_brand', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_brand', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_brand', @level2type=N'COLUMN',@level2name=N'bName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'logo地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_brand', @level2type=N'COLUMN',@level2name=N'logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_brand', @level2type=N'COLUMN',@level2name=N'companyUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_brand', @level2type=N'COLUMN',@level2name=N'companyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_brand', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_brand', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_brand', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品品牌表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_brand'
GO
/****** Object:  Table [dbo].[wx_shop_albums]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_shop_albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[thumb_path] [varchar](800) NULL,
	[original_path] [varchar](800) NULL,
	[remark] [varchar](500) NULL,
	[add_time] [datetime] NULL,
	[wid] [int] NULL,
 CONSTRAINT [PK_wx_shop_albums_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_albums', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_albums', @level2type=N'COLUMN',@level2name=N'productId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_albums', @level2type=N'COLUMN',@level2name=N'thumb_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原图路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_albums', @level2type=N'COLUMN',@level2name=N'original_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_albums', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_albums', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_albums', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品相册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_shop_albums'
GO
/****** Object:  Table [dbo].[wx_response_BaseData]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_response_BaseData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[wx_openid] [varchar](100) NULL,
	[requestType] [varchar](50) NULL,
	[requestContent] [varchar](2000) NULL,
	[responseType] [varchar](50) NULL,
	[reponseContent] [varchar](2000) NULL,
	[createTime] [varchar](40) NULL,
	[wx_xmlContent] [varchar](2000) NULL,
	[createDate] [datetime] NULL,
	[flag] [int] NULL,
	[rType] [varchar](70) NULL,
	[remark] [varchar](500) NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](200) NULL,
	[extStr2] [varchar](700) NULL,
	[extStr3] [varchar](2000) NULL,
 CONSTRAINT [PK_wx_response_BaseData_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户的微信id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'wx_openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型 文本消息：text 图片消息:image 地理位置消息:location 链接消息:link 事件:event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'requestType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'requestContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复的类型 文本消息：text 图片消息:image 地理位置消息:location 链接消息:link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'responseType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统回复的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'reponseContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消息创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'createTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'xml原始内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'wx_xmlContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入系统的时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'rType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展Int字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData', @level2type=N'COLUMN',@level2name=N'extStr3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有平台回复的信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_response_BaseData'
GO
/****** Object:  Table [dbo].[wx_requst_BaseData]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_requst_BaseData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[wx_openid] [varchar](100) NULL,
	[wx_msgType] [varchar](100) NULL,
	[wx_dataContent] [varchar](2000) NULL,
	[wx_eventKey] [varchar](500) NULL,
	[wx_createTime] [varchar](40) NULL,
	[wx_url] [varchar](500) NULL,
	[wx_url2] [varchar](500) NULL,
	[wx_xmlContent] [varchar](2000) NULL,
	[createDate] [datetime] NULL,
	[flag] [int] NULL,
	[rType] [varchar](70) NULL,
	[remark] [varchar](500) NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](200) NULL,
	[extStr2] [varchar](700) NULL,
	[extStr3] [varchar](2000) NULL,
 CONSTRAINT [PK_wx_requst_BaseData_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户的微信id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'wx_openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型 文本消息：text 图片消息:image 地理位置消息:location 链接消息:link 事件推送:event' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'wx_msgType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'wx_dataContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事件KEY值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'wx_eventKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消息创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'wx_createTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'url路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'wx_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'wx_url2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'xml原始内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'wx_xmlContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入系统的时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'rType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展Int字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData', @level2type=N'COLUMN',@level2name=N'extStr3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有用户请求的信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requst_BaseData'
GO
/****** Object:  Table [dbo].[wx_requestRuleContent]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_requestRuleContent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uId] [int] NULL,
	[rId] [int] NULL,
	[rContent] [text] NULL,
	[rContent2] [varchar](2000) NULL,
	[detailUrl] [varchar](1000) NULL,
	[picUrl] [varchar](1000) NULL,
	[mediaUrl] [varchar](1500) NULL,
	[meidaHDUrl] [varchar](1500) NULL,
	[remark] [varchar](2000) NULL,
	[seq] [int] NULL,
	[createDate] [datetime] NULL,
	[extInt] [int] NULL,
	[extInt2] [int] NULL,
	[extStr] [varchar](800) NULL,
	[extStr2] [varchar](1000) NULL,
	[extstr3] [varchar](1500) NULL,
 CONSTRAINT [PK_wx_requestRuleContent_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'uId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规则主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'rId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'rContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'rContent2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'detailUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'picUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语音或视频地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'mediaUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高清语音或者视频地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'meidaHDUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'extInt2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent', @level2type=N'COLUMN',@level2name=N'extstr3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信请求回复的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRuleContent'
GO
/****** Object:  Table [dbo].[wx_requestRule]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_requestRule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wId] [int] NULL,
	[uId] [int] NULL,
	[ruleName] [varchar](200) NULL,
	[reqKeywords] [varchar](2000) NULL,
	[reqestType] [int] NULL,
	[responseType] [int] NULL,
	[isDefault] [bit] NULL,
	[modelFunctionName] [varchar](200) NULL,
	[modelFunctionId] [int] NULL,
	[seq] [int] NULL,
	[createDate] [datetime] NULL,
	[agentUrl] [varchar](1000) NULL,
	[agentToken] [varchar](200) NULL,
	[isLikeSearch] [bit] NULL,
	[extInt] [int] NULL,
	[extInt2] [int] NULL,
	[extStr] [varchar](200) NULL,
	[extStr2] [varchar](500) NULL,
	[extStr3] [varchar](800) NULL,
	[extStr4] [varchar](1000) NULL,
 CONSTRAINT [PK_wx_requestRule_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信公众帐号信息表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'wId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'uId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规则名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'ruleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求的关键词（多个中间使用英文逗号隔开）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'reqKeywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求类型 （文字1，图片2，语音3，链接4，地理位置5，6关注，7取消关注，8扫描带参数二维码事件，上报地理位置事件9，自定义菜单事件10,0为默认回复）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'reqestType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复类型（文本1，图文2，语音3，视频4,第三方接口5）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'responseType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是默认回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'isDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模版名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'modelFunctionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能模块Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'modelFunctionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方接口的url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'agentUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方token值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'agentToken'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是模糊查询' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'isLikeSearch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'extInt2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'extStr3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule', @level2type=N'COLUMN',@level2name=N'extStr4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信请求回复规则表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_requestRule'
GO
/****** Object:  Table [dbo].[wx_purchase_customer]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_purchase_customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[baseid] [int] NULL,
	[sn] [varchar](100) NULL,
	[customerName] [varchar](100) NULL,
	[customerNum] [int] NULL,
	[address] [varchar](200) NULL,
	[tel] [varchar](100) NULL,
	[STATUS] [int] NULL,
	[dateJoin] [datetime] NULL,
	[dateUse] [datetime] NULL,
	[craeteTime] [datetime] NULL,
	[openid] [varchar](300) NULL,
	[Remark] [nvarchar](1000) NULL,
 CONSTRAINT [PK_wx_purchase_customer_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动基本表主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'baseid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SN码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参团用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'customerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'customerNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'STATUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参团时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'dateJoin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'dateUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer', @level2type=N'COLUMN',@level2name=N'craeteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据表2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_customer'
GO
/****** Object:  Table [dbo].[wx_purchase_base]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_purchase_base](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[activityName] [varchar](100) NULL,
	[activitySummary] [varchar](500) NULL,
	[activityTimebegin] [datetime] NULL,
	[email] [varchar](100) NULL,
	[emailPwd] [varchar](100) NULL,
	[smtp] [varchar](100) NULL,
	[shopsPwd] [varchar](100) NULL,
	[activeDescription] [varchar](2000) NULL,
	[specialRemind] [varchar](1000) NULL,
	[activityEndtitle] [varchar](100) NULL,
	[endExplanation] [varchar](2000) NULL,
	[shopstel] [varchar](100) NULL,
	[address] [varchar](500) NULL,
	[introduction] [varchar](2000) NULL,
	[goodName] [varchar](100) NULL,
	[costPrice] [float] NULL,
	[limitCount] [int] NULL,
	[groupPrice] [float] NULL,
	[totalCount] [int] NULL,
	[groupPerson] [int] NULL,
	[virtualPerson] [int] NULL,
	[copyrightSetup] [varchar](200) NULL,
	[activityTimeend] [datetime] NULL,
	[createtime] [datetime] NULL,
	[wid] [int] NULL,
	[imageUrl] [nvarchar](200) NULL,
	[imageUrlend] [nvarchar](200) NULL,
	[txtLatXPoint] [float] NULL,
	[txtLngYPoint] [float] NULL,
 CONSTRAINT [PK_wx_purchase_base_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'activityName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'activitySummary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'activityTimebegin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'emailPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SMTP服务器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'smtp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消费确认密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'shopsPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动描述及商品描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'activeDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特别提醒' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'specialRemind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束公告主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'activityEndtitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'endExplanation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'团购电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'shopstel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'introduction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'goodName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品原价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'costPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每人最多团购产品数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'limitCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品团购价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'groupPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'totalCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最低参团人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'groupPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'虚拟参团人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'virtualPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版权设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'copyrightSetup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'activityTimeend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base', @level2type=N'COLUMN',@level2name=N'createtime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'团购基本表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_purchase_base'
GO
/****** Object:  Table [dbo].[wx_property_info]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_property_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[typeId] [int] NULL,
	[typeName] [varchar](100) NULL,
	[iName] [varchar](200) NULL,
	[iContent] [varchar](max) NULL,
	[expires_in] [int] NULL,
	[createDate] [datetime] NULL,
	[count] [int] NULL,
	[categoryId] [int] NULL,
	[categoryName] [varchar](50) NULL,
	[remark] [varchar](1000) NULL,
 CONSTRAINT [PK_wx_property_info_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'typeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'typeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'iName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'iContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期（秒）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'expires_in'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类分类d' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'categoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'categoryName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信属性值存储值 支持多用户平台' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_property_info'
GO
/****** Object:  Table [dbo].[wx_product_type]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_product_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[parentId] [int] NULL,
	[tCode] [varchar](50) NULL,
	[tName] [varchar](100) NULL,
	[tUrl] [varchar](800) NULL,
	[class_layer] [int] NULL,
	[remark] [varchar](2000) NULL,
	[icoPic] [varchar](800) NULL,
	[sort_id] [int] NULL,
	[creatDate] [datetime] NULL,
	[extStr] [varchar](800) NULL,
	[extStr2] [varchar](2000) NULL,
	[store_id] [int] NULL,
	[tel] [varchar](100) NULL,
	[daohangurl] [varchar](800) NULL,
	[showDefault] [bit] NULL,
 CONSTRAINT [PK_wx_product_type_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级分类id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'parentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'tCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'tName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'tUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'icoPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'creatDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'daohangurl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航菜单是否显示首页' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type', @level2type=N'COLUMN',@level2name=N'showDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微活动分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_type'
GO
/****** Object:  Table [dbo].[wx_product_sys]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_product_sys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[title] [varchar](100) NULL,
	[banner] [varchar](800) NULL,
	[extStr] [varchar](500) NULL,
	[extStr2] [varchar](800) NULL,
	[extStr3] [varchar](2000) NULL,
	[remark] [varchar](1000) NULL,
	[createDate] [datetime] NULL,
	[sort_id] [int] NULL,
	[link_url] [varchar](800) NULL,
 CONSTRAINT [PK_wx_product_sys_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_sys', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_sys', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_sys', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微活动banner' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_sys', @level2type=N'COLUMN',@level2name=N'banner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_sys', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_sys', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_sys', @level2type=N'COLUMN',@level2name=N'extStr3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_sys', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_sys', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品系统设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_sys'
GO
/****** Object:  Table [dbo].[wx_product_comment]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_product_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hdId] [int] NULL,
	[openId] [varchar](200) NULL,
	[commentContent] [varchar](500) NULL,
	[commentType] [int] NULL,
	[commentRemark] [varchar](2000) NULL,
	[createDate] [datetime] NULL,
	[replyStatus] [int] NULL,
	[replyPerson] [varchar](50) NULL,
	[replyContent] [varchar](1000) NULL,
	[replyDate] [datetime] NULL,
 CONSTRAINT [PK_wx_product_comment_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微活动主表id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'hdId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论者微信唯一号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'openId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'commentContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论结果类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'commentType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'commentRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'replyStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'replyPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'replyContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment', @level2type=N'COLUMN',@level2name=N'replyDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品库评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product_comment'
GO
/****** Object:  Table [dbo].[wx_product]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[hdName] [varchar](200) NULL,
	[pSubject] [varchar](500) NULL,
	[typeId] [int] NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[addr] [varchar](500) NULL,
	[pContent] [ntext] NULL,
	[minPersonNum] [int] NULL,
	[maxPersonNum] [int] NULL,
	[personContent] [varchar](500) NULL,
	[isOpen] [bit] NULL,
	[createPerson] [varchar](200) NULL,
	[createDate] [datetime] NULL,
	[url] [varchar](500) NULL,
	[urlName] [varchar](100) NULL,
	[btnName] [varchar](100) NULL,
	[price] [float] NULL,
	[showPrice] [bit] NULL,
	[showYuDing] [bit] NULL,
	[showDate] [bit] NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](500) NULL,
	[extStr2] [varchar](500) NULL,
	[extStr3] [varchar](500) NULL,
	[tel] [varchar](100) NULL,
	[daohangurl] [varchar](800) NULL,
 CONSTRAINT [PK_wx_product_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'hdName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'pSubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'typeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'pContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'minPersonNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'maxPersonNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'personContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'isOpen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'createPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'urlName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'btnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'showPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示预定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'showYuDing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'showDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展Int1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字符串1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字符串2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字符串3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'extStr3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product', @level2type=N'COLUMN',@level2name=N'daohangurl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品库主表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_product'
GO
/****** Object:  Table [dbo].[wx_PicStore]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_PicStore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[picName] [varchar](200) NULL,
	[picUri] [varchar](1000) NULL,
	[picTemplates] [varchar](300) NULL,
	[picType] [int] NULL,
	[picUsedType] [nvarchar](50) NULL,
	[picValue] [varchar](300) NULL,
	[picCreatePerson] [varchar](200) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_PicStore] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wx_payment_wxpay]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_payment_wxpay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[partnerId] [varchar](100) NULL,
	[appId] [varchar](100) NULL,
	[partnerKey] [varchar](100) NULL,
	[paySignKey] [varchar](2000) NULL,
	[createDate] [datetime] NULL,
	[CertInfoPath] [varchar](1000) NULL,
	[partnerPwd] [varchar](200) NULL,
	[shName] [varchar](300) NULL,
	[bankName] [varchar](300) NULL,
	[bankCode] [varchar](200) NULL,
	[remark] [varchar](2000) NULL,
	[quicklyFH] [bit] NULL,
 CONSTRAINT [PK_wx_payment_wxpay_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'财付通身份标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'partnerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'财付通密匙' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'partnerKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'秘钥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'paySignKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'CertInfoPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'财付通登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'partnerPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'shName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'bankName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'bankCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'立即发货' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay', @level2type=N'COLUMN',@level2name=N'quicklyFH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微支付接口表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_wxpay'
GO
/****** Object:  Table [dbo].[wx_payment_type]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_payment_type](
	[id] [int] NOT NULL,
	[typeCode] [varchar](30) NULL,
	[typeName] [varchar](100) NULL,
	[remark] [varchar](1500) NULL,
	[sort_id] [int] NULL,
	[img_url] [varchar](800) NULL,
	[api_path] [varchar](100) NULL,
 CONSTRAINT [PK_wx_payment_type_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_type', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_type', @level2type=N'COLUMN',@level2name=N'typeCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_type', @level2type=N'COLUMN',@level2name=N'typeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_type', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_type', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片log' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_type', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'api目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_type', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可以选择的支付类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_type'
GO
/****** Object:  Table [dbo].[wx_payment_alipay]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_payment_alipay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[ownerName] [varchar](100) NULL,
	[partner] [varchar](32) NULL,
	[e_key] [varchar](64) NULL,
	[private_key] [varchar](2000) NULL,
	[public_key] [varchar](2000) NULL,
	[sign_type] [varchar](4000) NULL,
	[createDate] [datetime] NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](500) NULL,
	[extStr2] [varchar](1000) NULL,
 CONSTRAINT [PK_wx_payment_alipay_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属者姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'ownerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合作身份者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'partner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易安全检验码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'e_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商户的私钥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'private_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付宝的公钥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'public_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'sign_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信支付宝接口信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_payment_alipay'
GO
/****** Object:  Table [dbo].[wx_pano_sys]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_pano_sys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[backPic] [varchar](1000) NULL,
	[seriesId] [int] NULL,
	[seriesName] [varchar](300) NULL,
	[createDate] [datetime] NULL,
	[seq] [int] NULL,
 CONSTRAINT [PK_wx_pano_sys_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_sys', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_sys', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_sys', @level2type=N'COLUMN',@level2name=N'backPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系列id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_sys', @level2type=N'COLUMN',@level2name=N'seriesId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系列名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_sys', @level2type=N'COLUMN',@level2name=N'seriesName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_sys', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_sys', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'360全景图系统设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_sys'
GO
/****** Object:  Table [dbo].[wx_pano_jd]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_pano_jd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sysId] [int] NULL,
	[wid] [int] NULL,
	[jdName] [varchar](100) NULL,
	[music] [varchar](800) NULL,
	[pic_front] [varchar](1000) NULL,
	[pic_right] [varchar](1000) NULL,
	[pic_behind] [varchar](1000) NULL,
	[pic_left] [varchar](1000) NULL,
	[pic_top] [varchar](1000) NULL,
	[pic_bottom] [varchar](1000) NULL,
	[pic_yulan] [varchar](1000) NULL,
	[remark] [varchar](2000) NULL,
	[seq] [int] NULL,
	[createDate] [datetime] NULL,
	[extStr] [varchar](800) NULL,
	[extStr2] [varchar](1000) NULL,
 CONSTRAINT [PK_wx_pano_jd_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统表id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'sysId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'景点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'jdName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景音乐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'music'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'前方图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'pic_front'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'右方图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'pic_right'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'后方图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'pic_behind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'左方图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'pic_left'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶部图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'pic_top'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'底部图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'pic_bottom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预览图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'pic_yulan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'景点基本信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_pano_jd'
GO
/****** Object:  Table [dbo].[wx_order_temp]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_order_temp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[openid] [varchar](100) NULL,
	[uName] [varchar](100) NULL,
	[personNum] [int] NULL,
	[stadId] [int] NULL,
	[stadName] [varchar](200) NULL,
	[roomId] [int] NULL,
	[roomName] [varchar](200) NULL,
	[rtimesId] [int] NULL,
	[ydBeginDate] [datetime] NULL,
	[ydEndDate] [datetime] NULL,
	[out_trade_no] [varchar](100) NULL,
	[ordersubject] [varchar](600) NULL,
	[orderMoney] [float] NULL,
	[orderStatus] [int] NULL,
	[createDate] [datetime] NULL,
	[complateDate] [datetime] NULL,
	[phone] [varchar](100) NULL,
	[extInt] [int] NULL,
	[extFloat] [float] NULL,
	[extStr] [varchar](500) NULL,
	[extStr2] [varchar](1000) NULL,
	[ttPrice] [float] NULL,
 CONSTRAINT [PK_wx_order_temp_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'uName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'personNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场馆id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'stadId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场馆名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'stadName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'roomId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'roomName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间段id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'rtimesId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预定的开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'ydBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预定的结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'ydEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号（支付宝）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'out_trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'ordersubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'orderMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'orderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'complateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展float' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'extFloat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间总价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp', @level2type=N'COLUMN',@level2name=N'ttPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奥秘之家订单暂存表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_order_temp'
GO
/****** Object:  Table [dbo].[wx_module_templates_wcode]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_module_templates_wcode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[tid] [int] NULL,
	[remark] [varchar](2000) NULL,
	[createDate] [datetime] NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](500) NULL,
	[extStr2] [varchar](800) NULL,
	[listTid] [int] NULL,
	[detailTid] [int] NULL,
	[bmenuTid] [varchar](4000) NULL,
	[channelTid] [int] NULL,
	[topcolorTypeId] [int] NULL,
	[topcolorTypeName] [varchar](200) NULL,
	[topcolorHtml] [varchar](2000) NULL,
 CONSTRAINT [PK_wx_moduleode_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列表页模版Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'listTid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细页面模版Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'detailTid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'底部菜单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'bmenuTid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道页面模版Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'channelTid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶部颜色类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'topcolorTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶部颜色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'topcolorTypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顶部颜色html' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode', @level2type=N'COLUMN',@level2name=N'topcolorHtml'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号的功能模块的模版关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates_wcode'
GO
/****** Object:  Table [dbo].[wx_module_templates]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_module_templates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tName] [varchar](100) NULL,
	[author] [varchar](50) NULL,
	[moduleName] [varchar](100) NULL,
	[moduleCode] [varchar](20) NULL,
	[createDate] [datetime] NULL,
	[version] [varchar](50) NULL,
	[forWxVersion] [varchar](50) NULL,
	[typeName] [varchar](100) NULL,
	[typeId] [int] NULL,
	[aboutPic] [varchar](800) NULL,
	[tFileName] [varchar](50) NULL,
	[degreeName] [varchar](100) NULL,
	[degreId] [int] NULL,
	[remark] [varchar](1000) NULL,
 CONSTRAINT [PK_wx_module_templates_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'tName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'moduleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'moduleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'forWxVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'typeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'typeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版的效果图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'aboutPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版的物理文件夹名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'tFileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版适用级别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'degreeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版适用级别Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'degreId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信功能模块模版表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_module_templates'
GO
/****** Object:  Table [dbo].[wx_message_setting]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_message_setting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[title] [varchar](200) NULL,
	[adminOpenid] [varchar](100) NULL,
	[picUrl] [varchar](800) NULL,
	[needSH] [bit] NULL,
 CONSTRAINT [PK_wx_message_setting_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_setting', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_setting', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员管理员Openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_setting', @level2type=N'COLUMN',@level2name=N'adminOpenid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头部图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_setting', @level2type=N'COLUMN',@level2name=N'picUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_setting'
GO
/****** Object:  Table [dbo].[wx_message_list]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_message_list](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[userName] [varchar](100) NULL,
	[title] [varchar](800) NULL,
	[parentId] [int] NULL,
	[openId] [varchar](100) NULL,
	[createDate] [datetime] NULL,
	[sort_id] [int] NULL,
	[hasSH] [bit] NULL,
 CONSTRAINT [PK_wx_message_list_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号 主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_list', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号 外键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_list', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称 用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_list', @level2type=N'COLUMN',@level2name=N'userName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容 留言内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_list', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言主键 留言标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_list', @level2type=N'COLUMN',@level2name=N'parentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid 用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_list', @level2type=N'COLUMN',@level2name=N'openId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间 时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_list', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_list', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_list', @level2type=N'COLUMN',@level2name=N'hasSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据表2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_list'
GO
/****** Object:  Table [dbo].[wx_message_blacklist]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_message_blacklist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[openid] [varchar](500) NULL,
	[blacktime] [datetime] NULL,
 CONSTRAINT [PK_wx_message_blacklist_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_blacklist', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_blacklist', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称 拉黑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_blacklist', @level2type=N'COLUMN',@level2name=N'blacktime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据表3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_message_blacklist'
GO
/****** Object:  Table [dbo].[wx_manager_bill]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_manager_bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[managerId] [int] NULL,
	[moneyType] [varchar](30) NULL,
	[billMoney] [int] NULL,
	[billUsed] [varchar](500) NULL,
	[operPersonId] [int] NULL,
	[operDate] [datetime] NULL,
	[remark] [varchar](1500) NULL,
 CONSTRAINT [PK_wx_manager_bill_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_manager_bill', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_manager_bill', @level2type=N'COLUMN',@level2name=N'managerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额类型（充值，扣减）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_manager_bill', @level2type=N'COLUMN',@level2name=N'moneyType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缴费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_manager_bill', @level2type=N'COLUMN',@level2name=N'billMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缴费内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_manager_bill', @level2type=N'COLUMN',@level2name=N'billUsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代缴费人员Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_manager_bill', @level2type=N'COLUMN',@level2name=N'operPersonId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_manager_bill', @level2type=N'COLUMN',@level2name=N'operDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_manager_bill', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员（代理商）缴费记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_manager_bill'
GO
/****** Object:  Table [dbo].[wx_logs]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[modelName] [varchar](300) NULL,
	[remark] [varchar](2000) NULL,
	[logsType] [int] NULL,
	[logsTypeName] [varchar](100) NULL,
	[createDate] [datetime] NULL,
	[logsContent] [text] NULL,
	[logsTitle] [varchar](200) NULL,
	[funName] [varchar](300) NULL,
	[createPerson] [varchar](200) NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](500) NULL,
	[extStr2] [varchar](800) NULL,
	[extStr3] [varchar](1500) NULL,
	[flg] [varchar](500) NULL,
	[flg2] [varchar](1000) NULL,
	[flg3] [varchar](1000) NULL,
	[flgInt] [int] NULL,
	[flgDate] [datetime] NULL,
 CONSTRAINT [PK_wx_logs_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模版名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'modelName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志类型（0错误，1正常）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'logsType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'logsTypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'logsContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'logsTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'funName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'createPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'extStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'extStr3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'flg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标志2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'flg2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标志3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'flg3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标志int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'flgInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标志时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs', @level2type=N'COLUMN',@level2name=N'flgDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信相关日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_logs'
GO
/****** Object:  Table [dbo].[wx_link_module]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_link_module](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lName] [varchar](100) NULL,
	[moduleName] [varchar](100) NULL,
	[moduleCode] [varchar](30) NULL,
	[moduleType] [int] NULL,
	[urlRule] [varchar](1200) NULL,
	[urlNeedReplace] [bit] NULL,
	[tableName] [varchar](50) NULL,
	[isGlobal] [bit] NULL,
	[isMore] [bit] NULL,
	[sortId] [int] NULL,
	[remark] [varchar](1500) NULL,
	[idColumn] [varchar](30) NULL,
	[nameColumn] [varchar](30) NULL,
 CONSTRAINT [PK_wx_link_module_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'lName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'moduleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'moduleCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'moduleType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'url规则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'urlRule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'url是否需要替换' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'urlNeedReplace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块对应的表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'tableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为全局的，如果是，则所有用户都能看到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'isGlobal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为多条数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'isMore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'sortId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id主键对应的列名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'idColumn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称对应的列名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module', @level2type=N'COLUMN',@level2name=N'nameColumn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块的链接集合表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_link_module'
GO
/****** Object:  Table [dbo].[wx_lbs_shopInfo]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_lbs_shopInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[shopName] [varchar](400) NULL,
	[telphone] [varchar](30) NULL,
	[brief] [varchar](500) NULL,
	[shopContent] [varchar](2000) NULL,
	[shopLogo] [varchar](500) NULL,
	[province] [varchar](100) NULL,
	[city] [varchar](100) NULL,
	[detailAddr] [varchar](1000) NULL,
	[xPoint] [float] NULL,
	[yPoint] [float] NULL,
	[wUrl] [varchar](1000) NULL,
	[seq] [int] NULL,
	[remark] [varchar](4000) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_lbs_shopInfo_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商店名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'shopName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'brief'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'shopContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家logo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'shopLogo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'province'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'detailAddr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度x坐标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'xPoint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度y坐标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'yPoint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'wUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信lbs商店地理位置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_shopInfo'
GO
/****** Object:  Table [dbo].[wx_lbs_setting]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_lbs_setting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[searchRadius] [float] NULL,
	[bannerPicUrl] [varchar](1000) NULL,
 CONSTRAINT [PK_wx_lbs_setting_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_setting', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_setting', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'搜索半径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_setting', @level2type=N'COLUMN',@level2name=N'searchRadius'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'banner图片url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_setting', @level2type=N'COLUMN',@level2name=N'bannerPicUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信lbs设置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_lbs_setting'
GO
/****** Object:  Table [dbo].[wx_ggkUsersTemp]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ggkUsersTemp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[openid] [varchar](100) NULL,
	[times] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_ggkUsersTemp_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkUsersTemp', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkUsersTemp', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkUsersTemp', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkUsersTemp', @level2type=N'COLUMN',@level2name=N'times'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkUsersTemp', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刮刮卡用户抽奖临时表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkUsersTemp'
GO
/****** Object:  Table [dbo].[wx_ggkAwardUser]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ggkAwardUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[uName] [varchar](50) NULL,
	[uTel] [varchar](500) NULL,
	[openid] [varchar](100) NULL,
	[jxName] [varchar](50) NULL,
	[jpName] [varchar](200) NULL,
	[createDate] [datetime] NULL,
	[hasLingQu] [bit] NULL,
	[sn] [varchar](100) NULL,
 CONSTRAINT [PK_wx_ggkAwardUser_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser', @level2type=N'COLUMN',@level2name=N'uName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser', @level2type=N'COLUMN',@level2name=N'uTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser', @level2type=N'COLUMN',@level2name=N'jxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser', @level2type=N'COLUMN',@level2name=N'jpName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中奖时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已经领取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser', @level2type=N'COLUMN',@level2name=N'hasLingQu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sn码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中奖用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardUser'
GO
/****** Object:  Table [dbo].[wx_ggkAwardItem]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ggkAwardItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[jxName] [varchar](50) NULL,
	[jpName] [varchar](200) NULL,
	[jpNum] [int] NULL,
	[jpRealNum] [int] NULL,
	[sort_id] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_ggkAwardItem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardItem', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刮刮卡活动表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardItem', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖项名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardItem', @level2type=N'COLUMN',@level2name=N'jxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardItem', @level2type=N'COLUMN',@level2name=N'jpName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品显示数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardItem', @level2type=N'COLUMN',@level2name=N'jpNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品真实数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardItem', @level2type=N'COLUMN',@level2name=N'jpRealNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardItem', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardItem', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刮刮卡奖品列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkAwardItem'
GO
/****** Object:  Table [dbo].[wx_ggkActionInfo]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_ggkActionInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[actName] [varchar](100) NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[brief] [varchar](500) NULL,
	[contractInfo] [varchar](200) NULL,
	[actContent] [varchar](1000) NULL,
	[cfcjhf] [varchar](100) NULL,
	[endNotice] [varchar](200) NULL,
	[endContent] [varchar](500) NULL,
	[personNum] [int] NULL,
	[personMaxTimes] [int] NULL,
	[dayMaxTimes] [int] NULL,
	[openXyj] [varchar](4000) NULL,
	[createDate] [datetime] NULL,
	[beginPic] [varchar](500) NULL,
	[endPic] [varchar](500) NULL,
	[status] [int] NULL,
	[djPwd] [varchar](50) NULL,
 CONSTRAINT [PK_wx_ggkActionInfo_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'actName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'brief'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'contractInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'actContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重复抽奖回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'cfcjhf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束公告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'endNotice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'endContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预计抽奖人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'personNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每人最多允许抽奖总次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'personMaxTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每天最多抽奖次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'dayMaxTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幸运奖内容（若不填写，则不开启幸运奖）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'openXyj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动开始的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'beginPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'endPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑奖密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo', @level2type=N'COLUMN',@level2name=N'djPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刮刮卡基本表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_ggkActionInfo'
GO
/****** Object:  Table [dbo].[wx_dzpUsersTemp]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_dzpUsersTemp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[openid] [varchar](100) NULL,
	[times] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_dzpUsersTemp_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpUsersTemp', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpUsersTemp', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpUsersTemp', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpUsersTemp', @level2type=N'COLUMN',@level2name=N'times'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpUsersTemp', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大转盘用户抽奖临时表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpUsersTemp'
GO
/****** Object:  Table [dbo].[wx_dzpAwardUser]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_dzpAwardUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[uName] [varchar](50) NULL,
	[uTel] [varchar](500) NULL,
	[openid] [varchar](100) NULL,
	[jxName] [varchar](50) NULL,
	[jxIndex] [varchar](4000) NULL,
	[jpName] [varchar](200) NULL,
	[createDate] [datetime] NULL,
	[hasLingQu] [bit] NULL,
	[sn] [varchar](100) NULL,
 CONSTRAINT [PK_wx_dzpAwardUser_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'uName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'uTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'jxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖项序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'jxIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'jpName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中奖时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已经领取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'hasLingQu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sn码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser', @level2type=N'COLUMN',@level2name=N'sn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大转盘中奖用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardUser'
GO
/****** Object:  Table [dbo].[wx_dzpAwardItem]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_dzpAwardItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[actId] [int] NULL,
	[jxName] [varchar](50) NULL,
	[jpName] [varchar](200) NULL,
	[jpNum] [int] NULL,
	[jpRealNum] [int] NULL,
	[sort_id] [int] NULL,
	[createDate] [datetime] NULL,
	[jiaodu_min] [decimal](4, 1) NULL,
	[jiaodu_max] [decimal](4, 1) NULL,
 CONSTRAINT [PK_wx_dzpAwardItem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刮刮卡活动表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem', @level2type=N'COLUMN',@level2name=N'actId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖项名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem', @level2type=N'COLUMN',@level2name=N'jxName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem', @level2type=N'COLUMN',@level2name=N'jpName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品显示数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem', @level2type=N'COLUMN',@level2name=N'jpNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖品真实数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem', @level2type=N'COLUMN',@level2name=N'jpRealNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度的最小值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem', @level2type=N'COLUMN',@level2name=N'jiaodu_min'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角度的最大值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem', @level2type=N'COLUMN',@level2name=N'jiaodu_max'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大转盘奖品列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpAwardItem'
GO
/****** Object:  Table [dbo].[wx_dzpActionInfo]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_dzpActionInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[actName] [varchar](100) NULL,
	[beginDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[brief] [varchar](500) NULL,
	[contractInfo] [varchar](200) NULL,
	[actContent] [varchar](1000) NULL,
	[cfcjhf] [varchar](100) NULL,
	[endNotice] [varchar](200) NULL,
	[endContent] [varchar](500) NULL,
	[personNum] [int] NULL,
	[personMaxTimes] [int] NULL,
	[dayMaxTimes] [int] NULL,
	[openXyj] [varchar](4000) NULL,
	[createDate] [datetime] NULL,
	[beginPic] [varchar](500) NULL,
	[endPic] [varchar](500) NULL,
	[aStatus] [int] NULL,
	[djPwd] [varchar](50) NULL,
 CONSTRAINT [PK_wx_dzpActionInfo_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'actName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'beginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'endDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'brief'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'contractInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'actContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重复抽奖回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'cfcjhf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束公告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'endNotice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'endContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预计抽奖人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'personNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每人最多允许抽奖总次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'personMaxTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每天最多抽奖次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'dayMaxTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幸运奖内容（若不填写，则不开启幸运奖）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'openXyj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动开始的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'beginPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动结束的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'endPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'aStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑奖密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo', @level2type=N'COLUMN',@level2name=N'djPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大转盘活动表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_dzpActionInfo'
GO
/****** Object:  Table [dbo].[wx_diancai_shoppic]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_shoppic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopid] [int] NULL,
	[description] [varchar](200) NULL,
	[sortid] [int] NULL,
	[picUrl] [varchar](300) NULL,
	[pictzUrl] [varchar](300) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_diancai_shoppic_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shoppic', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shoppic', @level2type=N'COLUMN',@level2name=N'shopid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shoppic', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shoppic', @level2type=N'COLUMN',@level2name=N'sortid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shoppic', @level2type=N'COLUMN',@level2name=N'picUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shoppic', @level2type=N'COLUMN',@level2name=N'pictzUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商店图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shoppic'
GO
/****** Object:  Table [dbo].[wx_diancai_shopinfo]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_shopinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[hotelName] [varchar](500) NULL,
	[hotelLogo] [varchar](200) NULL,
	[hoteltimeBegin] [datetime] NULL,
	[hoteltimeEnd] [datetime] NULL,
	[limiteOrder] [bit] NULL,
	[dcRename] [varchar](200) NULL,
	[sendPrice] [float] NULL,
	[sendCost] [float] NULL,
	[freeSendcost] [int] NULL,
	[radius] [varchar](200) NULL,
	[sendArea] [varchar](200) NULL,
	[tel] [varchar](100) NULL,
	[address] [varchar](200) NULL,
	[personLimite] [int] NULL,
	[notice] [varchar](300) NULL,
	[hotelintroduction] [varchar](500) NULL,
	[email] [varchar](200) NULL,
	[emailpwd] [varchar](100) NULL,
	[stmp] [varchar](100) NULL,
	[css] [varchar](200) NULL,
	[createDate] [datetime] NULL,
	[kcType] [varchar](4000) NULL,
	[miaoshu] [varchar](200) NULL,
	[xplace] [float] NULL,
	[yplace] [float] NULL,
	[hoteltimeBegin1] [datetime] NULL,
	[hoteltimeEnd1] [datetime] NULL,
	[hoteltimeBegin2] [datetime] NULL,
	[hoteltimeEnd2] [datetime] NULL,
 CONSTRAINT [PK_wx_diancai_shopinfo_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'hotelName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家logo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'hotelLogo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'营业开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'hoteltimeBegin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'营业结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'hoteltimeEnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单限制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'limiteOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点单重命名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'dcRename'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起送价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'sendPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配送费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'sendCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单满多少免配送费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'freeSendcost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务半径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'radius'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配送区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'sendArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每人每天允许下单次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'personLimite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家公告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'notice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'hotelintroduction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单通知邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱登入密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'emailpwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SMTP服务器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'stmp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义css' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'css'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快餐类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'kcType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家简短描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'miaoshu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'横坐标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'xplace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纵坐标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo', @level2type=N'COLUMN',@level2name=N'yplace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shopinfo'
GO
/****** Object:  Table [dbo].[wx_diancai_shop_setup]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_shop_setup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[unionManage] [varchar](500) NULL,
	[unionTel] [varchar](100) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_diancai_shop_setup_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_setup', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_setup', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招商说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_setup', @level2type=N'COLUMN',@level2name=N'unionManage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招商电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_setup', @level2type=N'COLUMN',@level2name=N'unionTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_setup', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_setup'
GO
/****** Object:  Table [dbo].[wx_diancai_shop_advertisement]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_shop_advertisement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[setupid] [int] NULL,
	[advertisementName] [varchar](300) NULL,
	[sortid] [int] NULL,
	[picUrl] [varchar](300) NULL,
	[websetUrl] [varchar](300) NULL,
	[isdisplay] [bit] NULL,
	[createDate] [varchar](4000) NULL,
 CONSTRAINT [PK_wx_diancaent_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_advertisement', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_advertisement', @level2type=N'COLUMN',@level2name=N'setupid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_advertisement', @level2type=N'COLUMN',@level2name=N'advertisementName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_advertisement', @level2type=N'COLUMN',@level2name=N'sortid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片外链地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_advertisement', @level2type=N'COLUMN',@level2name=N'picUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外链网站或活动' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_advertisement', @level2type=N'COLUMN',@level2name=N'websetUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_advertisement', @level2type=N'COLUMN',@level2name=N'isdisplay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招商表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_shop_advertisement'
GO
/****** Object:  Table [dbo].[wx_diancai_member]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_member](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopid] [int] NULL,
	[Name] [varchar](4000) NULL,
	[openid] [varchar](300) NULL,
	[createDate] [datetime] NULL,
	[weixinName] [varchar](300) NULL,
	[memberName] [varchar](200) NULL,
	[menberTel] [varchar](100) NULL,
	[memberAddress] [varchar](300) NULL,
	[successDingdan] [int] NULL,
	[failDingdan] [int] NULL,
	[cancelDingdan] [int] NULL,
	[STATUS] [int] NULL,
	[zongjifen] [int] NULL,
	[zongcje] [float] NULL,
 CONSTRAINT [PK_wx_diancai_member_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'shopid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'weixinName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'memberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'menberTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'memberAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成功订单数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'successDingdan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'失败订单数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'failDingdan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取消订单数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'cancelDingdan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'STATUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'zongjifen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总成交额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member', @level2type=N'COLUMN',@level2name=N'zongcje'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_member'
GO
/****** Object:  Table [dbo].[wx_diancai_form_result]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_form_result](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopinfoId] [int] NULL,
	[openid] [varchar](100) NULL,
	[cName] [varchar](100) NULL,
	[cId] [int] NULL,
	[userResult] [varchar](2000) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_diancault_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_result', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_result', @level2type=N'COLUMN',@level2name=N'shopinfoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_result', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_result', @level2type=N'COLUMN',@level2name=N'cName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_result', @level2type=N'COLUMN',@level2name=N'cId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户提交的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_result', @level2type=N'COLUMN',@level2name=N'userResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_result', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预约用户提交的表单结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_result'
GO
/****** Object:  Table [dbo].[wx_diancai_form_control]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_form_control](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopinfoId] [int] NULL,
	[cName] [varchar](50) NULL,
	[cType] [varchar](4000) NULL,
	[minLength] [int] NULL,
	[maxLength] [int] NULL,
	[defaultValue] [varchar](2000) NULL,
	[isBiTian] [bit] NULL,
	[seq] [int] NULL,
	[createDate] [datetime] NULL,
	[remark] [varchar](800) NULL,
	[extInt] [int] NULL,
	[extStr] [varchar](500) NULL,
	[isSys] [bit] NULL,
	[sysControlerType] [varchar](100) NULL,
 CONSTRAINT [PK_wx_diancarol_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'shopinfoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'cName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件类型（显示类型0输入框1下拉框2单选框3复选择）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'cType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'minLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'maxLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'defaultValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'必填项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'isBiTian'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'extInt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展str' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'extStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为系统内置字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'isSys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内置字段的类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control', @level2type=N'COLUMN',@level2name=N'sysControlerType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预约的表单字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_form_control'
GO
/****** Object:  Table [dbo].[wx_diancai_dingdan_manage]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_dingdan_manage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopinfoid] [int] NULL,
	[openid] [varchar](200) NULL,
	[wid] [int] NULL,
	[orderNumber] [varchar](200) NULL,
	[deskNumber] [varchar](200) NULL,
	[customerName] [varchar](200) NULL,
	[customerTel] [varchar](200) NULL,
	[address] [varchar](300) NULL,
	[oderTime] [datetime] NULL,
	[oderRemark] [varchar](300) NULL,
	[payAmount] [float] NULL,
	[payStatus] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_diancaage_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'shopinfoid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'orderNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'deskNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'customerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'customerTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配送地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'oderTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'oderRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'payAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'payStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_manage'
GO
/****** Object:  Table [dbo].[wx_diancai_dingdan_caiping]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wx_diancai_dingdan_caiping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dingId] [int] NULL,
	[caiId] [int] NULL,
	[num] [int] NULL,
	[price] [float] NULL,
	[totpric] [float] NULL,
 CONSTRAINT [PK_wx_diancaing_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_caiping', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_caiping', @level2type=N'COLUMN',@level2name=N'dingId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜品主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_caiping', @level2type=N'COLUMN',@level2name=N'caiId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买份数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_caiping', @level2type=N'COLUMN',@level2name=N'num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_caiping', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_caiping', @level2type=N'COLUMN',@level2name=N'totpric'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单对应的菜品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dingdan_caiping'
GO
/****** Object:  Table [dbo].[wx_diancai_dianyuan]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_dianyuan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopid] [int] NULL,
	[createDate] [datetime] NULL,
	[bianhao] [varchar](100) NULL,
	[dianyuanName] [varchar](100) NULL,
	[dianyuanTel] [varchar](100) NULL,
	[userName] [varchar](100) NULL,
	[pwd] [varchar](100) NULL,
	[userStatus] [int] NULL,
	[fendian] [varchar](100) NULL,
	[beginTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_wx_diancai_dianyuan_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'shopid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'常见时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'bianhao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'店员姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'dianyuanName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'dianyuanTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'userName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在职状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'userStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分店' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'fendian'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到岗时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'beginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离职时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan', @level2type=N'COLUMN',@level2name=N'endTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'店员管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_dianyuan'
GO
/****** Object:  Table [dbo].[wx_diancai_desknum]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_desknum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopid] [int] NULL,
	[sortid] [int] NULL,
	[deskName] [varchar](100) NULL,
	[isStart] [bit] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_diancai_desknum_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_desknum', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_desknum', @level2type=N'COLUMN',@level2name=N'shopid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顺序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_desknum', @level2type=N'COLUMN',@level2name=N'sortid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌号名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_desknum', @level2type=N'COLUMN',@level2name=N'deskName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_desknum', @level2type=N'COLUMN',@level2name=N'isStart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'桌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_desknum'
GO
/****** Object:  Table [dbo].[wx_diancai_caipin_manage]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_caipin_manage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryid] [int] NULL,
	[cpName] [varchar](100) NULL,
	[categoryName] [varchar](100) NULL,
	[cpPrice] [float] NULL,
	[zkPrice] [float] NULL,
	[priceUnite] [varchar](100) NULL,
	[cpPic] [varchar](300) NULL,
	[picUrl] [varchar](300) NULL,
	[detailContent] [varchar](300) NULL,
	[createDate] [datetime] NULL,
	[shopid] [int] NULL,
	[sortid] [int] NULL,
	[scan] [int] NULL,
 CONSTRAINT [PK_wx_diancai_caipin_manage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wx_diancai_caipin_category]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_caipin_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopid] [int] NULL,
	[sortid] [int] NULL,
	[categoryName] [varchar](100) NULL,
	[miaoshu] [varchar](100) NULL,
	[isStart] [bit] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_diancaory_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_caipin_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_caipin_category', @level2type=N'COLUMN',@level2name=N'shopid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_caipin_category', @level2type=N'COLUMN',@level2name=N'sortid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_caipin_category', @level2type=N'COLUMN',@level2name=N'categoryName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_caipin_category', @level2type=N'COLUMN',@level2name=N'miaoshu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_caipin_category', @level2type=N'COLUMN',@level2name=N'isStart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据表6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_caipin_category'
GO
/****** Object:  Table [dbo].[wx_diancai_blacklist]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_diancai_blacklist](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[openid] [varchar](300) NULL,
	[blackName] [varchar](100) NULL,
	[blackDate] [datetime] NULL,
	[createDate] [datetime] NULL,
	[shopid] [int] NULL,
 CONSTRAINT [PK_wx_diancai_blacklist_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_blacklist', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_blacklist', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_blacklist', @level2type=N'COLUMN',@level2name=N'blackName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拉黑日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_blacklist', @level2type=N'COLUMN',@level2name=N'blackDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'黑名单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_diancai_blacklist'
GO
/****** Object:  Table [dbo].[wx_cards_gl]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_cards_gl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cardsid] [int] NULL,
	[openid] [varchar](200) NULL,
 CONSTRAINT [PK_wx_cards_gl_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards_gl', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards_gl', @level2type=N'COLUMN',@level2name=N'cardsid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转发人的openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards_gl', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据表2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards_gl'
GO
/****** Object:  Table [dbo].[wx_cards]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_cards](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[openid] [varchar](200) NULL,
	[title] [varchar](100) NULL,
	[backPic] [varchar](500) NULL,
	[backMusic] [varchar](600) NULL,
	[backCartoon] [varchar](500) NULL,
	[characters] [varchar](500) NULL,
	[copyRight] [varchar](500) NULL,
	[buttonCharacter] [varchar](500) NULL,
	[display] [bit] NULL,
	[name] [varchar](500) NULL,
	[url] [varchar](500) NULL,
	[ckCount] [int] NULL,
	[zfCount] [int] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_cards_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'backPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景音乐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'backMusic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'背景动画' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'backCartoon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'characters'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版权' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'copyRight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'buttonCharacter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示转发数 是否显示转发数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击礼品外链地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查看次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'ckCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转发次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'zfCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据表1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_cards'
GO
/****** Object:  Table [dbo].[wx_albums_type]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_albums_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[typeName] [varchar](100) NULL,
	[bannerPic] [varchar](800) NULL,
	[typeIco] [varchar](800) NULL,
	[typePic] [varchar](800) NULL,
	[tContent] [varchar](2000) NULL,
	[remark] [varchar](1000) NULL,
	[music] [varchar](800) NULL,
	[showType] [int] NULL,
	[createDate] [datetime] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_wx_albums_type_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'typeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头部图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'bannerPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'typeIco'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'typePic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'tContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'音乐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'music'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展现形式（1手滑，2摇一摇）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'showType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相册分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_type'
GO
/****** Object:  Table [dbo].[wx_albums_sys]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_albums_sys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[bannerPic] [varchar](1000) NULL,
	[code] [varchar](500) NULL,
	[typeId] [int] NULL,
	[typeName] [varchar](500) NULL,
 CONSTRAINT [PK_wx_albums_sys_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_sys', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_sys', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头部图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_sys', @level2type=N'COLUMN',@level2name=N'bannerPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_sys', @level2type=N'COLUMN',@level2name=N'code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_sys', @level2type=N'COLUMN',@level2name=N'typeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_sys', @level2type=N'COLUMN',@level2name=N'typeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微相册系统设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_sys'
GO
/****** Object:  Table [dbo].[wx_albums_photo]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_albums_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aId] [int] NULL,
	[pName] [varchar](200) NULL,
	[photoPic] [varchar](1000) NULL,
	[pContent] [varchar](500) NULL,
	[seq] [int] NULL,
	[isHidden] [bit] NULL,
	[createDate] [datetime] NULL,
	[createPerson] [varchar](200) NULL,
 CONSTRAINT [PK_wx_albums_photo_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_photo', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相册表主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_photo', @level2type=N'COLUMN',@level2name=N'aId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_photo', @level2type=N'COLUMN',@level2name=N'pName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片uri' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_photo', @level2type=N'COLUMN',@level2name=N'photoPic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_photo', @level2type=N'COLUMN',@level2name=N'pContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_photo', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_photo', @level2type=N'COLUMN',@level2name=N'isHidden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_photo', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_photo', @level2type=N'COLUMN',@level2name=N'createPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微相册里的图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_photo'
GO
/****** Object:  Table [dbo].[wx_albums_info]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_albums_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[aName] [varchar](100) NULL,
	[facePic] [varchar](1000) NULL,
	[aContent] [varchar](300) NULL,
	[showContent] [bit] NULL,
	[isHidden] [bit] NULL,
	[seq] [int] NULL,
	[createDate] [datetime] NULL,
	[createPerson] [varchar](200) NULL,
	[typeId] [int] NULL,
	[music] [varchar](800) NULL,
	[showType] [int] NULL,
 CONSTRAINT [PK_wx_albums_info_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相册名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'aName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'封面图片uri' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'facePic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相册描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'aContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'showContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'isHidden'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'createPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'typeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'音乐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'music'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'展现形式（1手滑，2摇一摇）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info', @level2type=N'COLUMN',@level2name=N'showType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微相册信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_albums_info'
GO
/****** Object:  Table [dbo].[wx_agent_info]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wx_agent_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[managerId] [int] NULL,
	[companyName] [varchar](200) NULL,
	[companyInfo] [varchar](800) NULL,
	[agentPrice] [int] NULL,
	[agentPrice2] [int] NULL,
	[sqJine] [int] NULL,
	[czTotMoney] [int] NULL,
	[remainMony] [int] NULL,
	[userNum] [int] NULL,
	[wcodeNum] [int] NULL,
	[agentType] [int] NULL,
	[agentLevel] [varchar](50) NULL,
	[industry] [varchar](200) NULL,
	[agentArea] [varchar](300) NULL,
	[expiryDate] [datetime] NULL,
	[aRemark] [varchar](1500) NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_wx_agent_info_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理商id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'managerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'companyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司信息简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'companyInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'享受的价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'agentPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'享受的价格2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'agentPrice2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理商申请的费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'sqJine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'czTotMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'剩余金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'remainMony'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'userNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'wcodeNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理类型（区域1，行业代理2）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'agentType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'agentLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'industry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'agentArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理商截至日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'expiryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'aRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info', @level2type=N'COLUMN',@level2name=N'createDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理商信息设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wx_agent_info'
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GetMapDistance]    Script Date: 02/27/2015 18:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---函数

--返回两个经纬度坐标点的距离（单位：千米）

-- =============================================
-- Author:		alex.Y
-- Create date: getdate()
-- Description:	返回两个经纬度坐标点的距离（单位：千米）
--        ///<param name="@LngBegin">来源坐标经度Y</param>
--        ///<param name="@LatBegin">来源坐标经度X</param>
--        ///<param name="@LngEnd">目标坐标经度Y</param>
 --       ///<param name="@LatEnd">目标坐标经度X</param>
-- =============================================

CREATE FUNCTION [dbo].[ufn_GetMapDistance]
(@LngBegin  REAL, @LatBegin REAL, @LngEnd REAL, @LatEnd REAL) 
       RETURNS FLOAT
       AS
BEGIN
       --距离(千米)   
       DECLARE @Distance      REAL
       DECLARE @EARTH_RADIUS  REAL
       --SET @EARTH_RADIUS =6378.137 
       SET @EARTH_RADIUS =6371  
       
       DECLARE @RadLatBegin  REAL,
               @RadLatEnd    REAL,
               @RadLatDiff   REAL,
               @RadLngDiff   REAL
       
       SET @RadLatBegin = @LatBegin *PI()/ 180.0 
       SET @RadLatEnd = @LatEnd *PI()/ 180.0 
       SET @RadLatDiff = @RadLatBegin - @RadLatEnd 
       SET @RadLngDiff = @LngBegin *PI()/ 180.0 - @LngEnd *PI()/ 180.0 
       
       SET @Distance = 2 *ASIN(
               SQRT(
                   POWER(SIN(@RadLatDiff / 2), 2)+COS(@RadLatBegin)*COS(@RadLatEnd) 
                   *POWER(SIN(@RadLngDiff / 2), 2)
               )
           )
       
       SET @Distance = @Distance * @EARTH_RADIUS 
       --SET @Distance = Round(@Distance * 10000) / 10000 
       
       RETURN @Distance
       
		-- SELECT [dbo].[ufn_GetMapDistance](116.3130497932434100,39.9804086267150800,116.3731849193573000,39.9110159284269700)

END
GO
/****** Object:  Table [dbo].[testtb]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[testtb](
	[姓名] [varchar](50) NULL,
	[课程] [varchar](50) NULL,
	[分数] [int] NULL,
	[strtest] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pre_common_district]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pre_common_district](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[level] [int] NULL,
	[upid] [int] NULL,
 CONSTRAINT [PK_pre_common_district] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ucard_maxsn]    Script Date: 02/27/2015 18:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	李朴
-- Create date: 2014-2-15
-- Description:	会员卡设置sn码，取数据库表wx_ucard_ticket_lq里sn数据类型的最大值
-- =============================================
CREATE FUNCTION [dbo].[ufn_ucard_maxsn]()
RETURNS decimal(18,0)
AS
BEGIN
 
	DECLARE @MaxSn decimal(18,0)
	select @MaxSn=max(cast(sn as decimal)) from wx_ucard_ticket_lq 
   set  @MaxSn=1+@MaxSn
   if(@MaxSn is null)
   begin
set @MaxSn=10000
	end
	-- Return the result of the function
	RETURN @MaxSn

END
GO
/****** Object:  Table [dbo].[dt_navigation]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_navigation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nav_type] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[sub_title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[remark] [nvarchar](500) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[channel_id] [int] NULL,
	[action_type] [nvarchar](500) NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_NAVIGATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'nav_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏0显示1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属父导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限资源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统导航菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation'
GO
/****** Object:  Table [dbo].[dt_user_groups]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[grade] [int] NULL,
	[upgrade_exp] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[discount] [int] NULL,
	[is_default] [tinyint] NULL,
	[is_upgrade] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_USER_GROUPS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员等级值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'升级经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'upgrade_exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否注册用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动升级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_upgrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups'
GO
/****** Object:  Table [dbo].[dt_user_group_price]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_group_price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[group_id] [int] NULL,
	[price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_DT_USER_GROUP_PRICE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price'
GO
/****** Object:  Table [dbo].[dt_user_point_log]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_point_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[value] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_POINT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
/****** Object:  Table [dbo].[dt_user_oauth_app]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth_app](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[app_id] [nvarchar](100) NULL,
	[app_key] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_USER_OAUTH_APP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'app_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth_app'
GO
/****** Object:  Table [dbo].[dt_user_oauth]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[oauth_name] [nvarchar](50) NOT NULL,
	[oauth_access_token] [nvarchar](500) NULL,
	[oauth_openid] [nvarchar](255) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_OAUTH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开放平台名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'access_token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_access_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth授权用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth'
GO
/****** Object:  Table [dbo].[dt_user_message]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [tinyint] NULL,
	[post_user_name] [nvarchar](100) NULL,
	[accept_user_name] [nvarchar](100) NULL,
	[is_read] [tinyint] NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[post_time] [datetime] NOT NULL,
	[read_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_MESSAGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息类型0系统消息1收件箱2发件箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'accept_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否查看0未阅1已阅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'is_read'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'read_time'
GO
/****** Object:  Table [dbo].[dt_channel_category]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[build_path] [nvarchar](100) NULL,
	[templet_path] [nvarchar](100) NULL,
	[domain] [nvarchar](255) NULL,
	[is_default] [tinyint] NULL,
	[sort_id] [int] NULL,
	[wid] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成文件夹名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'build_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板文件夹名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'templet_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绑定域名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道分类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_category'
GO
/****** Object:  Table [dbo].[dt_user_amount_log]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_amount_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](50) NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[value] [decimal](9, 2) NULL,
	[remark] [nvarchar](500) NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_AMOUNT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号但保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
/****** Object:  Table [dbo].[dt_sms_template]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_sms_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_SMS_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机短信模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template'
GO
/****** Object:  Table [dbo].[dt_payment]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wid] [int] NULL,
	[pTypeId] [int] NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[type] [tinyint] NULL,
	[poundage_type] [tinyint] NULL,
	[poundage_amount] [decimal](9, 2) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](100) NULL,
 CONSTRAINT [PK_DT_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'pTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付类型1线上2线下' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费类型1百分比2固定金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment'
GO
/****** Object:  Table [dbo].[dt_orders]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[payment_fee] [decimal](9, 2) NULL,
	[payment_status] [tinyint] NULL,
	[payment_time] [datetime] NULL,
	[express_id] [int] NULL,
	[express_no] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[express_status] [tinyint] NULL,
	[express_time] [datetime] NULL,
	[accept_name] [nvarchar](50) NULL,
	[post_code] [nvarchar](20) NULL,
	[telphone] [nvarchar](30) NULL,
	[mobile] [nvarchar](20) NULL,
	[area] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[message] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[payable_amount] [decimal](9, 2) NULL,
	[real_amount] [decimal](9, 2) NULL,
	[order_amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[confirm_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
	[wid] [int] NULL,
	[openid] [varchar](100) NULL,
	[modelName] [varchar](300) NULL,
	[modelCode] [varchar](50) NULL,
	[modelActionName] [varchar](500) NULL,
	[modelActionId] [int] NULL,
	[orderSubject] [varchar](500) NULL,
	[city] [varchar](100) NULL,
	[district] [varchar](100) NULL,
	[notify_id] [varchar](128) NULL,
	[pay_info] [varchar](200) NULL,
	[isSubscribe] [bit] NULL,
	[fahuoCode] [varchar](50) NULL,
	[fahuoMsg] [varchar](500) NULL,
 CONSTRAINT [PK_DT_ORDERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号担保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付手续费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付状态1未支付2已支付' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货状态1未发货2已发货' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'accept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属省市区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单留言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payable_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'real_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态1生成订单,2确认订单,3完成订单,4取消订单,5作废订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'confirm_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'modelName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'modelCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块的活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'modelActionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块的活动Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'modelActionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'orderSubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属县城' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'district'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微支付通知id（商户可以查询交易结果）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'notify_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'pay_info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否关注了' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'isSubscribe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微支付发货状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'fahuoCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微支付发货状态信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'fahuoMsg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders'
GO
/****** Object:  Table [dbo].[dt_article_attribute_field]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[title] [nvarchar](100) NULL,
	[control_type] [nvarchar](50) NULL,
	[data_type] [nvarchar](50) NULL,
	[data_length] [int] NULL,
	[data_place] [tinyint] NULL,
	[item_option] [ntext] NULL,
	[default_value] [ntext] NULL,
	[is_required] [tinyint] NULL,
	[is_password] [tinyint] NULL,
	[is_html] [tinyint] NULL,
	[editor_type] [tinyint] NULL,
	[valid_tip_msg] [nvarchar](255) NULL,
	[valid_error_msg] [nvarchar](255) NULL,
	[valid_pattern] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'control_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小数点位数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'item_option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'default_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否必填0非必填1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否密码框' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许HTML' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_html'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑器类型0标准型1简洁型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'editor_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_tip_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证失败提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_error_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证正则表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_pattern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field'
GO
/****** Object:  Table [dbo].[dt_article_attach]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[file_name] [nvarchar](100) NULL,
	[file_path] [nvarchar](255) NULL,
	[file_size] [int] NULL,
	[file_ext] [nvarchar](20) NULL,
	[down_num] [int] NULL,
	[point] [int] NULL,
	[add_time] [datetime] NULL,
	[wid] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTACH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小(字节)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'down_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分(正赠送负消费)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach'
GO
/****** Object:  Table [dbo].[dt_article_albums]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[thumb_path] [nvarchar](255) NULL,
	[original_path] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
	[wid] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ALBUMS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'thumb_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'original_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片相册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums'
GO
/****** Object:  Table [dbo].[dt_article]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NULL,
	[click] [int] NULL,
	[status] [tinyint] NULL,
	[groupids_view] [nvarchar](255) NULL,
	[vote_id] [int] NULL,
	[is_msg] [tinyint] NULL,
	[is_top] [tinyint] NULL,
	[is_red] [tinyint] NULL,
	[is_hot] [tinyint] NULL,
	[is_slide] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
	[user_name] [nvarchar](100) NULL,
	[add_time] [datetime] NULL,
	[update_time] [datetime] NULL,
	[wid] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'zhaiyao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'click'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0正常1未审核2锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'groupids_view'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联投票ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'vote_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_top'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_red'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否热门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_hot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否幻灯片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_slide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否管理员发布0不是1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article', @level2type=N'COLUMN',@level2name=N'wid'
GO
/****** Object:  Table [dbo].[dt_manager_role]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](100) NULL,
	[role_type] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
	[agentId] [int] NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统默认0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属的代理商Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'agentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role'
GO
/****** Object:  Table [dbo].[dt_manager_log]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[user_ip] [nvarchar](30) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log'
GO
/****** Object:  Table [dbo].[dt_manager]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[role_type] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[salt] [nvarchar](20) NULL,
	[real_name] [nvarchar](50) NULL,
	[telephone] [nvarchar](30) NULL,
	[email] [nvarchar](30) NULL,
	[is_lock] [int] NULL,
	[add_time] [datetime] NULL,
	[wxNum] [int] NULL,
	[agentId] [int] NULL,
	[reg_ip] [nvarchar](30) NULL,
	[qq] [nvarchar](30) NULL,
	[province] [nvarchar](200) NULL,
	[city] [nvarchar](200) NULL,
	[county] [nvarchar](500) NULL,
	[remark] [nvarchar](1500) NULL,
	[sort_id] [int] NULL,
	[agentLevel] [int] NULL,
 CONSTRAINT [PK_dt_manager_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_mail_template]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_mail_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[maill_title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MAIL_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'maill_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template'
GO
/****** Object:  Table [dbo].[dt_link]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[site_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[is_image] [int] NOT NULL,
	[sort_id] [int] NOT NULL,
	[is_red] [tinyint] NOT NULL,
	[is_lock] [tinyint] NOT NULL,
	[add_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_feedback]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](30) NULL,
	[user_qq] [nvarchar](30) NULL,
	[user_email] [nvarchar](100) NULL,
	[add_time] [datetime] NOT NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
	[is_lock] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dt_express]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[express_code] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[website] [nvarchar](255) NULL,
	[remark] [ntext] NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[wid] [int] NULL,
 CONSTRAINT [PK_DT_EXPRESS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配送费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'website'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否不显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流快递' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express'
GO
/****** Object:  Table [dbo].[dt_article_comment]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[parent_id] [int] NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[user_ip] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[is_lock] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[is_reply] [tinyint] NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
	[wid] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_COMMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父评论ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发表时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已答复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_reply'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'答复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'wid'
GO
/****** Object:  Table [dbo].[dt_article_category]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[sort_id] [int] NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[wid] [int] NULL,
	[ico_url] [nvarchar](500) NULL,
 CONSTRAINT [PK_DT_ARTICLE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'ico_url'
GO
/****** Object:  Table [dbo].[dt_article_attribute_value]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_value](
	[article_id] [int] NOT NULL,
	[sub_title] [nvarchar](255) NULL,
	[source] [nvarchar](100) NULL,
	[author] [nvarchar](50) NULL,
	[goods_no] [nvarchar](100) NULL,
	[stock_quantity] [int] NULL,
	[market_price] [decimal](9, 2) NULL,
	[sell_price] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[ddd] [nvarchar](1) NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_VALUE] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'goods_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'stock_quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'market_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'sell_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_value'
GO
/****** Object:  Table [dbo].[dt_order_goods]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_order_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[goods_id] [int] NULL,
	[goods_title] [nvarchar](100) NULL,
	[goods_price] [decimal](9, 2) NULL,
	[real_price] [decimal](9, 2) NULL,
	[quantity] [int] NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_DT_ORDER_GOODS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'order_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'real_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订购数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单商品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods'
GO
/****** Object:  Table [dbo].[dt_channel]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_channel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[is_albums] [tinyint] NULL,
	[is_attach] [tinyint] NULL,
	[is_group_price] [tinyint] NULL,
	[page_size] [int] NULL,
	[sort_id] [int] NULL,
	[wid] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启相册功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_albums'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启附件功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_attach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'is_group_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每页显示数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'page_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微帐号主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel', @level2type=N'COLUMN',@level2name=N'wid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统频道表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel'
GO
/****** Object:  View [dbo].[view_agent_list]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_agent_list]
AS
SELECT     m.id, m.role_id, m.role_type, m.user_name, m.password, m.salt, m.real_name, m.telephone, m.email, m.add_time, m.is_lock, a.companyName, a.companyInfo, 
                      a.agentPrice, a.agentPrice2, a.sqJine, a.czTotMoney, a.remainMony, a.userNum, a.wcodeNum, a.agentType, a.agentLevel, a.industry, a.agentArea, a.expiryDate, 
                      a.aRemark, a.createDate, m.qq, m.province, m.city, m.county
FROM         dbo.dt_manager AS m INNER JOIN
                      dbo.wx_agent_info AS a ON m.id = a.managerId
WHERE     (m.agentLevel > 0)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[8] 4[72] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "m"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 386
               Right = 182
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "a"
            Begin Extent = 
               Top = 15
               Left = 286
               Bottom = 359
               Right = 445
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 825
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_agent_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_agent_list'
GO
/****** Object:  View [dbo].[v_wxRuleContent]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_wxRuleContent]
AS
SELECT     r.id, r.wId, r.uId, r.ruleName, r.reqKeywords, r.reqestType, r.responseType, r.isDefault, r.modelFunctionName, r.modelFunctionId, r.seq, r.createDate, r.agentUrl, 
                      r.agentToken, r.isLikeSearch, r.extInt, r.extInt2, r.extStr, r.extStr2, r.extStr3, r.extStr4, rc.id AS cid, rc.rId, rc.rContent, rc.rContent2, rc.detailUrl, rc.picUrl, rc.mediaUrl, 
                      rc.meidaHDUrl, rc.seq AS cseq
FROM         dbo.wx_requestRule AS r LEFT OUTER JOIN
                      dbo.wx_requestRuleContent AS rc ON r.id = rc.rId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[27] 2[38] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "r"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 284
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rc"
            Begin Extent = 
               Top = 8
               Left = 375
               Bottom = 274
               Right = 608
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1950
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_wxRuleContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_wxRuleContent'
GO
/****** Object:  Table [dbo].[dt_manager_role_value]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role_value](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[nav_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE_VALUE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'nav_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value'
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ucard_maxCardNo]    Script Date: 02/27/2015 18:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	李朴
-- Create date: 2014-2-15
-- Description:	会员卡设置卡号cardNo，取数据库表wx_ucard_users里cardNo数据类型的最大值
-- =============================================
CREATE FUNCTION [dbo].[ufn_ucard_maxCardNo]()
RETURNS varchar(50) 
AS
BEGIN
 
	DECLARE @MaxSn decimal(18,0)
    DECLARE @TopNum decimal(18,0)
    Declare @ret varchar(50)
    set @TopNum=100000000
	select @MaxSn=max(cast(cardNo as decimal)) from wx_ucard_users 
   set  @MaxSn=1+@MaxSn
   if(@MaxSn is null)
   begin
     set @MaxSn=10000
	end
	set @TopNum=@MaxSn+@TopNum
   set @ret=cast(@TopNum as varchar(50))
   set @ret=right(@ret,8)

	RETURN @ret

END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_syTimesByTicket]    Script Date: 02/27/2015 18:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:李朴
-- Create date: 2014-3-29
-- Description:	函数-查询会员对该优惠券使用的剩余次数
-- =============================================
CREATE FUNCTION [dbo].[ufn_syTimesByTicket]
(
 @uid int, ---用户id
 @ticketId int---优惠券id
)
RETURNS  int
AS
BEGIN
	 
	DECLARE @ticketTimes int  --优惠券总次数
	Declare @usedTimes int   --会员已经使用的次数
	declare @syTimes int    --剩余的次数，返回结果
	declare @sid int   --优惠券所在的店铺id
	declare @tmpUid int ---临时的会员id值
	set @ticketTimes=0
	set @usedTimes=0
	set @syTimes=0 
	set @sid=0
	set @tmpUid=0
 
	select   @ticketTimes=usedTimes,@sid=sid  from wx_ucard_ticket where id=@ticketId
	 --先判断该用户是否在该
     select  @tmpUid=id  from wx_ucard_users where id=@uid and sid=@sid
     
	if @tmpUid<=0
	begin
		set @syTimes=0
	end
	else
	begin
		select  @usedTimes=count(1) from wx_ucard_users_consumeinfo  where uid=@uid and moduleType='优惠券' and moduleActionId=@ticketId
		set @syTimes=@ticketTimes-@usedTimes
	end	
	RETURN @syTimes
	 
END
GO
/****** Object:  StoredProcedure [dbo].[p_query_keywords]    Script Date: 02/27/2015 18:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	李朴
-- Create date: 2014-2-8
-- Description:	通过关键词，查询该微帐号对应的规则表主键Id以及回复的类型
-- =============================================
CREATE PROCEDURE [dbo].[p_query_keywords] 
	@wid int,
    @keywords varchar(500),
    @id int output,
    @responseType int output,
    @modelFunctionName varchar(200) output,
    @modelFunctionId  int output
AS
BEGIN
	set @id=0
	set @responseType=0
	set @modelFunctionId=0
	set @modelFunctionName=''
	 select top 1 @id=id,@responseType=responseType,@modelFunctionName=modelFunctionName,@modelFunctionId=modelFunctionId from wx_requestRule  where wid=@wid  and reqestType=1 and ( reqKeywords like @keywords+'|%' or reqKeywords='%|'+@keywords or reqKeywords like '%|'+@keywords+'|%' or reqKeywords=@keywords) order by createdate desc
     if @id=0
      begin
		select top 1 @id=id,@responseType=responseType,@modelFunctionName=modelFunctionName,@modelFunctionId=modelFunctionId from wx_requestRule  where wid=@wid  and reqestType=1 and reqKeywords like '%'+@keywords+'%'  order by createdate desc
		if @id=0
		begin
			select top 1 @id=id,@responseType=responseType,@modelFunctionName=modelFunctionName,@modelFunctionId=modelFunctionId from wx_requestRule  where wid=@wid  and reqestType=0 order by createdate desc
		end
	  end
     if @modelFunctionId is null
		begin
			set @modelFunctionId=0
		end
END
GO
/****** Object:  Table [dbo].[dt_users]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[salt] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[nick_name] [nvarchar](100) NULL,
	[avatar] [nvarchar](255) NULL,
	[sex] [nvarchar](20) NULL,
	[birthday] [datetime] NULL,
	[telphone] [nvarchar](50) NULL,
	[mobile] [nvarchar](20) NULL,
	[qq] [nvarchar](30) NULL,
	[address] [nvarchar](255) NULL,
	[safe_question] [nvarchar](255) NULL,
	[safe_answer] [nvarchar](255) NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[exp] [int] NULL,
	[status] [tinyint] NULL,
	[reg_time] [datetime] NULL,
	[reg_ip] [nvarchar](30) NULL,
	[isweixin] [tinyint] NULL,
	[wid] [int] NULL,
	[wxOpenId] [nvarchar](100) NULL,
	[wxName] [nvarchar](150) NULL,
 CONSTRAINT [PK_DT_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'nick_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'qq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'safe_question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'safe_answer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态,0正常,1待验证,2待审核,3锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是微信号，1、是 0、不是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'isweixin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信用户表主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'wid'
GO
/****** Object:  StoredProcedure [dbo].[p_yuyue]    Script Date: 02/27/2015 18:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---查询预约中，客户提交的信息
CREATE PROCEDURE [dbo].[p_yuyue]
@formid int

as
BEGIN
 declare @fid int
declare @sql varchar(500)
set @fid=@formid
set @sql='select openid,createDate'
select @sql=@sql+',max(case cName when '''+cName+''' then userResult else '''' end) ['+cName+']'

from (select distinct cName from wx_yy_result where   formid=@fid) a --同from tb group by课程，默认按课程名排序
 
set @sql=@sql+' from  (select * from  wx_yy_result where formid='+ convert(varchar,@fid) +' )  wx_yy_result group by openid,createDate order by createDate desc'

 exec(@sql)

END
GO
/****** Object:  StoredProcedure [dbo].[p_wcode_wsiteinfo]    Script Date: 02/27/2015 18:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		李朴
-- Create date: 2013-3-5
-- Description:	获得微帐号的帐号基本信息，网站配置信息，模版信息的相关信息；
-- =============================================
CREATE PROCEDURE [dbo].[p_wcode_wsiteinfo]
	@wid int 
AS
BEGIN
select  top 1 ws.id,ws.wId,wName,companyName,bgMusic,bgPic,bgDongHuaId,wCopyright,wBrief,ws.remark,phone,addr,addrUrl,email,seo_title,seo_keywords,seo_desc
,wxName,wxId,weixinCode,headerpic,wxprovince,wxcity,w.enddate,tw.topcolorHtml
from wx_wsite_setting  ws,wx_userweixin  w,wx_templates_wcode tw
where ws.wId=w.id and tw.wid=w.id and  w.id=@wid   and w.isDelete=0	 
 
END
GO
/****** Object:  StoredProcedure [dbo].[p_ticket]    Script Date: 02/27/2015 18:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	李朴
-- Create date: 2014-3-27
-- Description:	取店铺里某个会员的优惠券信息
-- =============================================
CREATE PROCEDURE [dbo].[p_ticket]
	 @sid int,--店铺主键id
     @uid int,--用户主键id
     @degreeNum int,---用户级别
     @ttcMoney decimal,---用户总的消费金额
     @ticketidStr varchar(100) output  ---返回优惠券id主键字符串，使用英文逗号(,)隔开   
AS
BEGIN
 set @ticketidStr=''
  declare @usertype int ---人群类型
  declare @id int ---优惠券主键id
  declare @consumeMoney int --消费金额

declare yb_ticketinfo cursor  --声明游标
for
  select id,userType,consumeMoney from  wx_ucard_ticket where sId=@sid and beginDate<getdate() and endDate>=getdate() and dbo.ufn_syTimesByTicket(@uid,id)>0 order by id asc
open yb_ticketinfo
  fetch next from yb_ticketinfo into @id,@usertype,@consumeMoney
  while @@FETCH_STATUS=0   --循环
	begin
	      
	  if @usertype=@degreeNum or @usertype=0  --根据会员等级来
			begin

				set @ticketidStr =@ticketidStr+','+convert(varchar,@id)

			end
		else  if @usertype=1001  --新开会员
			begin
				set @ticketidStr =@ticketidStr+','+convert(varchar,@id)
			end
		else if @usertype=1002   --开卡从未消费的会员　
			begin
				 
				if  @ttcMoney=0
					begin
						 
						set @ticketidStr =@ticketidStr+','+convert(varchar,@id)
					end
			end
		else if @usertype=1003   -- 一个月未消费的会员　
			begin
				---查询该会员一个月内是否有消费
				declare @xfcs int
				select @xfcs=count(1) from wx_ucard_users_consumeinfo where sId=@sid and uid=@uid and addTime<=getdate() and addTime>=dateadd(month,-1,getdate())
				
				if  @xfcs=0
					begin
						set @ticketidStr =@ticketidStr+','+convert(varchar,@id)
					end
			end
		else if @usertype=2001  --单次消费满X元的会员　
			begin
				declare @dcje float  --单次消费金额
				select @dcje=consumeMoney from wx_ucard_users_consumeinfo where sId=@sid and uid=@uid and  consumeMoney>@consumeMoney
				
				if  @dcje>0
					begin
						set @ticketidStr =@ticketidStr+','+convert(varchar,@id)
					end
			end
		else if @usertype=2002  --累计消费满X元的会员　
			begin
				declare @ljje float  --累计消费金额
				select @ljje=sum(consumeMoney) from wx_ucard_users_consumeinfo where sId=@sid and uid=@uid
				
				if  @ljje>=@consumeMoney
					begin
						set @ticketidStr =@ticketidStr+','+convert(varchar,@id)
					end
			end
 

		fetch next from yb_ticketinfo into @id,@usertype,@consumeMoney
	end
 -------------------------游标结束  注销游标--------------
close yb_ticketinfo
deallocate yb_ticketinfo
 
END
GO
/****** Object:  Table [dbo].[dt_user_login_log]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_login_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[login_time] [datetime] NULL,
	[login_ip] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_USER_LOGIN_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_ip'
GO
/****** Object:  Table [dbo].[dt_user_code]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](20) NULL,
	[str_code] [nvarchar](255) NULL,
	[count] [int] NULL,
	[status] [tinyint] NULL,
	[eff_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
 CONSTRAINT [PK_DT_USER_CODE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成码类别 password取回密码,register邀请注册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成的字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'str_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0未使用1已使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'eff_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'add_time'
GO
/****** Object:  Table [dbo].[dt_channel_field]    Script Date: 02/27/2015 18:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[field_id] [int] NOT NULL,
 CONSTRAINT [PK_DT_CHANNEL_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field', @level2type=N'COLUMN',@level2name=N'field_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道属性表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_channel_field'
GO
/****** Object:  View [dbo].[view_channel_photo]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_photo] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=3
GO
/****** Object:  View [dbo].[view_channel_pc_pic]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_pc_pic] as SELECT dt_article.*,dt_article_attribute_value.sub_title,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=9
GO
/****** Object:  View [dbo].[view_channel_news]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_news] as SELECT dt_article.*,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=1
GO
/****** Object:  View [dbo].[view_channel_modulebrief]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_modulebrief] as SELECT dt_article.*,dt_article_attribute_value.sub_title,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=14
GO
/****** Object:  View [dbo].[view_channel_hotnews]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_hotnews] as SELECT dt_article.*,dt_article_attribute_value.sub_title,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=15
GO
/****** Object:  View [dbo].[view_channel_hezuo]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_hezuo] as SELECT dt_article.*,dt_article_attribute_value.sub_title,dt_article_attribute_value.source FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=13
GO
/****** Object:  View [dbo].[view_channel_help]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_help] as SELECT dt_article.*,dt_article_attribute_value.sub_title,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=11
GO
/****** Object:  View [dbo].[view_channel_content]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_content] as SELECT dt_article.* FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=5
GO
/****** Object:  View [dbo].[view_channel_companyinfo]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_companyinfo] as SELECT dt_article.*,dt_article_attribute_value.sub_title,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=10
GO
/****** Object:  View [dbo].[view_channel_caseshow]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_caseshow] as SELECT dt_article.*,dt_article_attribute_value.sub_title,dt_article_attribute_value.source,dt_article_attribute_value.author FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=12
GO
/****** Object:  View [dbo].[view_channel_bottommenu]    Script Date: 02/27/2015 18:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_channel_bottommenu] as SELECT dt_article.* FROM dt_article_attribute_value INNER JOIN dt_article ON dt_article_attribute_value.article_id = dt_article.id WHERE dt_article.channel_id=7
GO
/****** Object:  Default [DF__dt_articl__chann__0697FACD]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__categ__078C1F06]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_articl__call___0880433F]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_articl__link___09746778]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_articl__img_u__0A688BB1]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_articl__seo_t__0B5CAFEA]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__dt_articl__seo_k__0C50D423]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__dt_articl__seo_d__0D44F85C]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__dt_articl__zhaiy__0E391C95]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [zhaiyao]
GO
/****** Object:  Default [DF__dt_articl__sort___0F2D40CE]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__click__10216507]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_articl__statu__11158940]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_articl__group__1209AD79]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ('') FOR [groupids_view]
GO
/****** Object:  Default [DF__dt_articl__vote___12FDD1B2]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [vote_id]
GO
/****** Object:  Default [DF__dt_articl__is_ms__13F1F5EB]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_articl__is_to__14E61A24]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_articl__is_re__15DA3E5D]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_articl__is_ho__16CE6296]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_articl__is_sl__17C286CF]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_articl__is_sy__18B6AB08]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_articl__add_t__19AACF41]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__artic__1C873BEC]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__thumb__1D7B6025]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  DEFAULT ('') FOR [thumb_path]
GO
/****** Object:  Default [DF__dt_articl__origi__1E6F845E]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  DEFAULT ('') FOR [original_path]
GO
/****** Object:  Default [DF__dt_articl__remar__1F63A897]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_articl__add_t__2057CCD0]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__artic__2334397B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__file___24285DB4]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ('') FOR [file_name]
GO
/****** Object:  Default [DF__dt_articl__file___251C81ED]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ('') FOR [file_path]
GO
/****** Object:  Default [DF__dt_articl__file___2610A626]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ((0)) FOR [file_size]
GO
/****** Object:  Default [DF__dt_articl__file___2704CA5F]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ('') FOR [file_ext]
GO
/****** Object:  Default [DF__dt_articl__down___27F8EE98]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ((0)) FOR [down_num]
GO
/****** Object:  Default [DF__dt_articl__point__28ED12D1]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_articl__add_t__29E1370A]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__title__1EF99443]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_articl__data___1FEDB87C]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [data_length]
GO
/****** Object:  Default [DF__dt_articl__data___20E1DCB5]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [data_place]
GO
/****** Object:  Default [DF__dt_articl__item___21D600EE]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [item_option]
GO
/****** Object:  Default [DF__dt_articl__defau__22CA2527]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [default_value]
GO
/****** Object:  Default [DF__dt_articl__is_re__23BE4960]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_required]
GO
/****** Object:  Default [DF__dt_articl__is_pa__24B26D99]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_password]
GO
/****** Object:  Default [DF__dt_articl__is_ht__25A691D2]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_html]
GO
/****** Object:  Default [DF__dt_articl__edito__269AB60B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [editor_type]
GO
/****** Object:  Default [DF__dt_articl__valid__278EDA44]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [valid_tip_msg]
GO
/****** Object:  Default [DF__dt_articl__valid__2882FE7D]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [valid_error_msg]
GO
/****** Object:  Default [DF__dt_articl__valid__297722B6]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ('') FOR [valid_pattern]
GO
/****** Object:  Default [DF__dt_articl__sort___2A6B46EF]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__is_sy__2B5F6B28]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_articl__sourc__3BFFE745]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ('') FOR [source]
GO
/****** Object:  Default [DF__dt_articl__autho__3CF40B7E]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ('') FOR [author]
GO
/****** Object:  Default [DF__dt_articl__goods__3DE82FB7]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ('') FOR [goods_no]
GO
/****** Object:  Default [DF__dt_articl__stock__3EDC53F0]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ((0)) FOR [stock_quantity]
GO
/****** Object:  Default [DF__dt_articl__marke__3FD07829]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ((0)) FOR [market_price]
GO
/****** Object:  Default [DF__dt_articl__sell___40C49C62]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ((0)) FOR [sell_price]
GO
/****** Object:  Default [DF__dt_articl__point__41B8C09B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_value] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_articl__call___4589517F]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__call___4589517F]  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_articl__paren__467D75B8]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__paren__467D75B8]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_articl__class__477199F1]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__class__477199F1]  DEFAULT ((0)) FOR [class_layer]
GO
/****** Object:  Default [DF__dt_articl__sort___4865BE2A]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__sort___4865BE2A]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__link___4959E263]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__link___4959E263]  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_articl__img_u__4A4E069C]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__img_u__4A4E069C]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_articl__seo_t__4B422AD5]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_t__4B422AD5]  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__dt_articl__seo_k__4C364F0E]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_k__4C364F0E]  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__dt_articl__seo_d__4D2A7347]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_d__4D2A7347]  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__dt_articl__chann__5006DFF2]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__artic__50FB042B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__paren__51EF2864]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_articl__user___52E34C9D]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__dt_articl__user___53D770D6]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_articl__is_lo__54CB950F]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_articl__add_t__55BFB948]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__is_re__56B3DD81]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  DEFAULT ((0)) FOR [is_reply]
GO
/****** Object:  Default [DF__dt_channe__categ__59904A2C]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channel__name__5A846E65]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__dt_channe__title__5B78929E]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_channe__is_al__5C6CB6D7]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((0)) FOR [is_albums]
GO
/****** Object:  Default [DF__dt_channe__is_at__5D60DB10]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((0)) FOR [is_attach]
GO
/****** Object:  Default [DF__dt_channe__is_gr__5E54FF49]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((0)) FOR [is_group_price]
GO
/****** Object:  Default [DF__dt_channe__page___5F492382]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((0)) FOR [page_size]
GO
/****** Object:  Default [DF__dt_channe__sort___603D47BB]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__title__6319B466]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_channe__build__640DD89F]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ('') FOR [build_path]
GO
/****** Object:  Default [DF__dt_channe__templ__6501FCD8]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ('') FOR [templet_path]
GO
/****** Object:  Default [DF__dt_channe__domai__65F62111]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ('') FOR [domain]
GO
/****** Object:  Default [DF__dt_channe__is_de__66EA454A]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_channe__sort___67DE6983]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel_category] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_expres__expre__6CA31EA0]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ('') FOR [express_code]
GO
/****** Object:  Default [DF__dt_expres__expre__6D9742D9]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__dt_expres__websi__6E8B6712]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ('') FOR [website]
GO
/****** Object:  Default [DF__dt_expres__remar__6F7F8B4B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_expres__sort___7073AF84]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_expres__is_lo__7167D3BD]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_express] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_feedba__add_t__405A880E]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_feedba__reply__414EAC47]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  DEFAULT ('') FOR [reply_content]
GO
/****** Object:  Default [DF__dt_feedba__is_lo__4242D080]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_link__is_imag__35DCF99B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_link] ADD  DEFAULT ((0)) FOR [is_image]
GO
/****** Object:  Default [DF__dt_link__sort_id__36D11DD4]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_link] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_link__is_red__37C5420D]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_link] ADD  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_link__add_tim__38B96646]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_link] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_mail_t__is_sy__74444068]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_mail_template] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_manage__add_t__451F3D2B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_manager_log] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_manage__is_sy__019E3B86]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_manager_role] ADD  CONSTRAINT [DF__dt_manage__is_sy__019E3B86]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_naviga__nav_t__0FB750B3]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__nav_t__0FB750B3]  DEFAULT ('') FOR [nav_type]
GO
/****** Object:  Default [DF__dt_navigat__name__10AB74EC]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_navigat__name__10AB74EC]  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__dt_naviga__title__119F9925]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__title__119F9925]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_naviga__sub_t__1293BD5E]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__sub_t__1293BD5E]  DEFAULT ('') FOR [sub_title]
GO
/****** Object:  Default [DF__dt_naviga__link___1387E197]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__link___1387E197]  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_naviga__sort___147C05D0]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__sort___147C05D0]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_naviga__is_lo__15702A09]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_lo__15702A09]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_naviga__remar__16644E42]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__remar__16644E42]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_naviga__paren__1758727B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__paren__1758727B]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_naviga__class__184C96B4]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__class__184C96B4]  DEFAULT ('') FOR [class_list]
GO
/****** Object:  Default [DF__dt_naviga__class__1940BAED]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__class__1940BAED]  DEFAULT ((1)) FOR [class_layer]
GO
/****** Object:  Default [DF__dt_naviga__chann__1A34DF26]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__chann__1A34DF26]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_naviga__actio__1B29035F]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__actio__1B29035F]  DEFAULT ('') FOR [action_type]
GO
/****** Object:  Default [DF__dt_naviga__is_sy__1C1D2798]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_sy__1C1D2798]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_order___goods__15A53433]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  DEFAULT ((0)) FOR [goods_price]
GO
/****** Object:  Default [DF__dt_order___real___1699586C]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  DEFAULT ((0)) FOR [real_price]
GO
/****** Object:  Default [DF__dt_order___quant__178D7CA5]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  DEFAULT ((0)) FOR [quantity]
GO
/****** Object:  Default [DF__dt_order___point__1881A0DE]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_orders__order__1B5E0D89]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__order__1B5E0D89]  DEFAULT ('') FOR [order_no]
GO
/****** Object:  Default [DF__dt_orders__trade__1C5231C2]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__trade__1C5231C2]  DEFAULT ('') FOR [trade_no]
GO
/****** Object:  Default [DF__dt_orders__user___1D4655FB]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__user___1D4655FB]  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__dt_orders__user___1E3A7A34]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__user___1E3A7A34]  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_orders__payme__1F2E9E6D]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__1F2E9E6D]  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__dt_orders__payme__2022C2A6]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__2022C2A6]  DEFAULT ((0)) FOR [payment_fee]
GO
/****** Object:  Default [DF__dt_orders__payme__2116E6DF]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__2116E6DF]  DEFAULT ((0)) FOR [payment_status]
GO
/****** Object:  Default [DF__dt_orders__expre__220B0B18]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__220B0B18]  DEFAULT ((0)) FOR [express_id]
GO
/****** Object:  Default [DF__dt_orders__expre__22FF2F51]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__22FF2F51]  DEFAULT ('') FOR [express_no]
GO
/****** Object:  Default [DF__dt_orders__expre__23F3538A]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__23F3538A]  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__dt_orders__expre__24E777C3]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__24E777C3]  DEFAULT ((0)) FOR [express_status]
GO
/****** Object:  Default [DF__dt_orders__accep__25DB9BFC]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__accep__25DB9BFC]  DEFAULT ('') FOR [accept_name]
GO
/****** Object:  Default [DF__dt_orders__post___26CFC035]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__post___26CFC035]  DEFAULT ('') FOR [post_code]
GO
/****** Object:  Default [DF__dt_orders__telph__27C3E46E]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__telph__27C3E46E]  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_orders__mobil__28B808A7]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__mobil__28B808A7]  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_orders__area__29AC2CE0]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__area__29AC2CE0]  DEFAULT ('') FOR [area]
GO
/****** Object:  Default [DF__dt_orders__addre__2AA05119]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__addre__2AA05119]  DEFAULT ('') FOR [address]
GO
/****** Object:  Default [DF__dt_orders__messa__2B947552]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__messa__2B947552]  DEFAULT ('') FOR [message]
GO
/****** Object:  Default [DF__dt_orders__remar__2C88998B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__remar__2C88998B]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_orders__payab__2D7CBDC4]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payab__2D7CBDC4]  DEFAULT ((0)) FOR [payable_amount]
GO
/****** Object:  Default [DF__dt_orders__real___2E70E1FD]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__real___2E70E1FD]  DEFAULT ((0)) FOR [real_amount]
GO
/****** Object:  Default [DF__dt_orders__order__2F650636]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__order__2F650636]  DEFAULT ((0)) FOR [order_amount]
GO
/****** Object:  Default [DF__dt_orders__point__30592A6F]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__point__30592A6F]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_orders__statu__314D4EA8]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__statu__314D4EA8]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__dt_orders__add_t__324172E1]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__add_t__324172E1]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_paymen__img_u__351DDF8C]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__img_u__351DDF8C]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_payment__type__361203C5]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_payment__type__361203C5]  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__dt_paymen__pound__370627FE]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__370627FE]  DEFAULT ((1)) FOR [poundage_type]
GO
/****** Object:  Default [DF__dt_paymen__pound__37FA4C37]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__37FA4C37]  DEFAULT ((0)) FOR [poundage_amount]
GO
/****** Object:  Default [DF__dt_paymen__sort___38EE7070]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__sort___38EE7070]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_paymen__is_lo__39E294A9]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__is_lo__39E294A9]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_sms_te__title__3CBF0154]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_sms_te__call___3DB3258D]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_sms_te__conte__3EA749C6]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  DEFAULT ('') FOR [content]
GO
/****** Object:  Default [DF__dt_sms_te__is_sy__3F9B6DFF]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_user_a__order__4277DAAA]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT ('') FOR [order_no]
GO
/****** Object:  Default [DF__dt_user_a__payme__436BFEE3]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__dt_user_a__value__4460231C]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT ((0)) FOR [value]
GO
/****** Object:  Default [DF__dt_user_a__remar__45544755]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_a__statu__46486B8E]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_user_a__add_t__473C8FC7]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_c__count__4A18FC72]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  DEFAULT ((0)) FOR [count]
GO
/****** Object:  Default [DF__dt_user_c__statu__4B0D20AB]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_user_c__add_t__4C0144E4]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_g__artic__4EDDB18F]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_user_g__group__4FD1D5C8]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__dt_user_g__price__50C5FA01]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  DEFAULT ((0)) FOR [price]
GO
/****** Object:  Default [DF__dt_user_g__title__53A266AC]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_user_g__grade__54968AE5]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [grade]
GO
/****** Object:  Default [DF__dt_user_g__upgra__558AAF1E]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [upgrade_exp]
GO
/****** Object:  Default [DF__dt_user_g__amoun__567ED357]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_user_g__point__5772F790]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_user_g__is_de__58671BC9]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_user_g__is_up__595B4002]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((1)) FOR [is_upgrade]
GO
/****** Object:  Default [DF__dt_user_g__is_lo__5A4F643B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_user_l__user___5D2BD0E6]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_user_l__remar__5E1FF51F]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_l__login__5F141958]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  DEFAULT (getdate()) FOR [login_time]
GO
/****** Object:  Default [DF__dt_user_l__login__60083D91]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  DEFAULT ('') FOR [login_ip]
GO
/****** Object:  Default [DF__dt_user_me__type__62E4AA3C]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__dt_user_m__is_re__63D8CE75]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  DEFAULT ((0)) FOR [is_read]
GO
/****** Object:  Default [DF__dt_user_m__post___64CCF2AE]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  DEFAULT (getdate()) FOR [post_time]
GO
/****** Object:  Default [DF__dt_user_o__oauth__67A95F59]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_oauth] ADD  DEFAULT ('0') FOR [oauth_name]
GO
/****** Object:  Default [DF__dt_user_o__add_t__689D8392]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_oauth] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_o__title__6B79F03D]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_user_o__img_u__6C6E1476]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_user_o__remar__6D6238AF]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_o__sort___6E565CE8]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_user_o__is_lo__6F4A8121]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_user_o__api_p__703EA55A]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_oauth_app] ADD  DEFAULT ('') FOR [api_path]
GO
/****** Object:  Default [DF__dt_user_p__add_t__731B1205]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_point_log] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_users__group___75F77EB0]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__dt_users__email__76EBA2E9]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_users__nick_n__77DFC722]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [nick_name]
GO
/****** Object:  Default [DF__dt_users__avatar__78D3EB5B]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [avatar]
GO
/****** Object:  Default [DF__dt_users__sex__79C80F94]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('保密') FOR [sex]
GO
/****** Object:  Default [DF__dt_users__telpho__7ABC33CD]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_users__mobile__7BB05806]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_users__qq__7CA47C3F]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [qq]
GO
/****** Object:  Default [DF__dt_users__safe_q__7D98A078]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [safe_question]
GO
/****** Object:  Default [DF__dt_users__safe_a__7E8CC4B1]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ('') FOR [safe_answer]
GO
/****** Object:  Default [DF__dt_users__amount__7F80E8EA]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_users__point__00750D23]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_users__exp__0169315C]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ((0)) FOR [exp]
GO
/****** Object:  Default [DF__dt_users__status__025D5595]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_users__reg_ti__035179CE]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users] ADD  DEFAULT (getdate()) FOR [reg_time]
GO
/****** Object:  Default [DF_wx_logs_createDate]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_logs] ADD  CONSTRAINT [DF_wx_logs_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  Default [DF_wx_requestRule_isDefault]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_requestRule] ADD  CONSTRAINT [DF_wx_requestRule_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
/****** Object:  Default [DF_wx_requestRule_isLikeSearch]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_requestRule] ADD  CONSTRAINT [DF_wx_requestRule_isLikeSearch]  DEFAULT ((0)) FOR [isLikeSearch]
GO
/****** Object:  Default [DF_wx_shop_user_addr_createDate]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_shop_user_addr] ADD  CONSTRAINT [DF_wx_shop_user_addr_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  Default [DF_wx_ucard_privileges_createDate]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_ucard_privileges] ADD  CONSTRAINT [DF_wx_ucard_privileges_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  Default [DF_wx_ucard_ticket_createDate]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_ucard_ticket] ADD  CONSTRAINT [DF_wx_ucard_ticket_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  Default [DF_wx_ucard_ticket_sort_id]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_ucard_ticket] ADD  CONSTRAINT [DF_wx_ucard_ticket_sort_id]  DEFAULT ((0)) FOR [sort_id]
GO
/****** Object:  Default [DF_wx_userinfo_subscribe]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_Userinfo] ADD  CONSTRAINT [DF_wx_userinfo_subscribe]  DEFAULT ((1)) FOR [subscribe]
GO
/****** Object:  Default [DF_wx_userweixin_createDate]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  Default [DF_wx_userweixin_wenziMaxNum]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_wenziMaxNum]  DEFAULT ((0)) FOR [wenziMaxNum]
GO
/****** Object:  Default [DF_wx_userweixin_tuwenMaxNum]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_tuwenMaxNum]  DEFAULT ((0)) FOR [tuwenMaxNum]
GO
/****** Object:  Default [DF_wx_userweixin_yuyinMaxNum]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_yuyinMaxNum]  DEFAULT ((0)) FOR [yuyinMaxNum]
GO
/****** Object:  Default [DF_wx_userweixin_wenziDefineNum]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_wenziDefineNum]  DEFAULT ((0)) FOR [wenziDefineNum]
GO
/****** Object:  Default [DF_wx_userweixin_tuwenDefineNum]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_tuwenDefineNum]  DEFAULT ((0)) FOR [tuwenDefineNum]
GO
/****** Object:  Default [DF_wx_userweixin_yuyinDefineNum]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_yuyinDefineNum]  DEFAULT ((0)) FOR [yuyinDefineNum]
GO
/****** Object:  Default [DF_wx_userweixin_requestTTNum]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_requestTTNum]  DEFAULT ((1000)) FOR [requestTTNum]
GO
/****** Object:  Default [DF_wx_userweixin_requestUsedNum]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_requestUsedNum]  DEFAULT ((0)) FOR [requestUsedNum]
GO
/****** Object:  Default [DF_wx_userweixin_smsTTNum]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_smsTTNum]  DEFAULT ((0)) FOR [smsTTNum]
GO
/****** Object:  Default [DF_wx_userweixin_smsUsedNum]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_userweixin] ADD  CONSTRAINT [DF_wx_userweixin_smsUsedNum]  DEFAULT ((0)) FOR [smsUsedNum]
GO
/****** Object:  Default [DF_wx_wifi_createDate]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[wx_wifi] ADD  CONSTRAINT [DF_wx_wifi_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
/****** Object:  ForeignKey [FK_DT_ARTIC_REFERENCE_DT_ARTIC]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_article_attribute_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC] FOREIGN KEY([article_id])
REFERENCES [dbo].[dt_article] ([id])
GO
ALTER TABLE [dbo].[dt_article_attribute_value] CHECK CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CATEGORY]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CATEGORY] FOREIGN KEY([category_id])
REFERENCES [dbo].[dt_channel_category] ([id])
GO
ALTER TABLE [dbo].[dt_channel] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CATEGORY]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD] FOREIGN KEY([channel_id])
REFERENCES [dbo].[dt_channel] ([id])
GO
ALTER TABLE [dbo].[dt_channel_field] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_manager_role_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager_role_value] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG]
GO
/****** Object:  ForeignKey [FK_DT_ORDER_REFERENCE_DT_ORDER]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_order_goods]  WITH CHECK ADD  CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER] FOREIGN KEY([order_id])
REFERENCES [dbo].[dt_orders] ([id])
GO
ALTER TABLE [dbo].[dt_order_goods] CHECK CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER]
GO
/****** Object:  ForeignKey [FK_DT_USER__REFERENCE_DT_USERS_CODE]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_code]  WITH CHECK ADD  CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_CODE] FOREIGN KEY([user_id])
REFERENCES [dbo].[dt_users] ([id])
GO
ALTER TABLE [dbo].[dt_user_code] CHECK CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_CODE]
GO
/****** Object:  ForeignKey [FK_DT_USER__REFERENCE_DT_USERS_LOG]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_user_login_log]  WITH CHECK ADD  CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_LOG] FOREIGN KEY([user_id])
REFERENCES [dbo].[dt_users] ([id])
GO
ALTER TABLE [dbo].[dt_user_login_log] CHECK CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_LOG]
GO
/****** Object:  ForeignKey [FK_DT_USERS_REFERENCE_DT_USER_]    Script Date: 02/27/2015 18:13:30 ******/
ALTER TABLE [dbo].[dt_users]  WITH CHECK ADD  CONSTRAINT [FK_DT_USERS_REFERENCE_DT_USER_] FOREIGN KEY([group_id])
REFERENCES [dbo].[dt_user_groups] ([id])
GO
ALTER TABLE [dbo].[dt_users] CHECK CONSTRAINT [FK_DT_USERS_REFERENCE_DT_USER_]
GO
