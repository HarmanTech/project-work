USE [master]


CREATE DATABASE [healthplus]
 
USE [healthplus]



CREATE TABLE [dbo].[Adddoctor](
	[name] [varchar](20) NULL,
	[loginid] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[department] [varchar](20) NULL,
	[phonenumber] [bigint] NULL,
	[address] [varchar](20) NULL,
	[email] [varchar](20) NULL,
	[Lat] [nvarchar](50) NULL,
	[Lon] [nvarchar](50) NULL
) ON [PRIMARY]


CREATE TABLE [dbo].[Addpatient](
	[patientname] [varchar](20) NOT NULL,
	[patientid] [varchar](50) NOT NULL,
	[gender] [varchar](20) NOT NULL,
	[age] [int] NOT NULL,
	[symtoms] [varchar](20) NOT NULL,
	[address] [varchar](20) NOT NULL,
	[department] [varchar](20) NOT NULL,
	[phonemob] [nvarchar](50) NOT NULL,
	[doctor] [varchar](20) NOT NULL,
	[Branch] [varchar](max) NOT NULL,
	[Approved] [varchar](50) NOT NULL,
	[AppliedDate] [nvarchar](50) NOT NULL,
	[Time] [nvarchar](50) NULL,
	[AppointmentDateandtime] [nvarchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__hospital__A17101B45D6C4AAF] PRIMARY KEY CLUSTERED 
(
	[patientid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


CREATE TABLE [dbo].[branch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[branch] [varchar](50) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Patientid] [varchar](50) NULL,
	[Test] [varchar](50) NULL,
	[Comment] [varchar](500) NULL,
	[DoctorName] [varchar](50) NULL,
	[Files] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](50) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[hospital_bloodtest](
	[patienttype] [varchar](20) NULL,
	[patientid] [int] NULL,
	[patientname] [varchar](20) NULL,
	[mediclatestype] [varchar](20) NULL,
	[bloodgroup] [varchar](20) NULL,
	[haemoglobin] [varchar](20) NULL,
	[bloodsugar] [varchar](20) NULL,
	[sacid] [varchar](20) NULL,
	[description] [varchar](40) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[hospital_dischargesummary](
	[patientid] [int] NULL,
	[patientname] [varchar](20) NULL,
	[joindate] [datetime] NULL,
	[dischargedate] [datetime] NULL
) ON [PRIMARY]


CREATE TABLE [dbo].[hospital_empsignup](
	[name] [varchar](20) NULL,
	[loginid] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[department] [varchar](20) NULL,
	[phonenumber] [bigint] NULL,
	[address] [varchar](20) NULL,
	[email] [varchar](20) NULL,
	[branch] [varchar](50) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[hospital_operation](
	[patienttype] [varchar](20) NULL,
	[patientid] [int] NULL,
	[patientname] [varchar](20) NULL,
	[refdoctor] [varchar](20) NULL,
	[operationtype] [varchar](20) NULL,
	[operatonresult] [varchar](20) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[hospital_outpatient](
	[patientname] [varchar](20) NULL,
	[patientid] [int] IDENTITY(2001,1) NOT NULL,
	[gender] [varchar](20) NULL,
	[age] [int] NULL,
	[address] [varchar](20) NULL,
	[assigndoctor] [varchar](20) NULL,
	[phoneres] [bigint] NULL,
	[phonemob] [bigint] NULL,
	[opdate] [datetime] NULL,
	[department] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[patientid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[hospital_patientinfo](
	[pid] [varchar](50) NULL,
	[patientname] [varchar](20) NULL,
	[age] [varchar](20) NULL,
	[department] [varchar](20) NULL,
	[doctor] [varchar](20) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[hospital_pharmacy](
	[patienttype] [varchar](20) NULL,
	[patientid] [int] NULL,
	[department] [varchar](20) NULL,
	[patientname] [varchar](20) NULL,
	[medicine] [varchar](20) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[hospital_surgeryinfo](
	[pid] [varchar](20) NULL,
	[patientname] [varchar](20) NULL,
	[age] [int] NULL,
	[department] [varchar](20) NULL,
	[doctor] [varchar](20) NULL,
	[surgerydate] [datetime] NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[MedicineMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MedicineName] [varchar](max) NULL,
	[Qty] [int] NULL,
	[Price] [float] NULL,
	[Branch] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[News] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Otp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Emailid] [nvarchar](50) NULL,
	[Otp] [nvarchar](50) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[PatientMedicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[patientid] [varchar](50) NULL,
	[Mediciname] [varchar](50) NULL,
	[Qty] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Totalamount] [varchar](50) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[PatientRegister](
	[PatientEMail] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[ward](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ward] [varchar](50) NULL
) ON [PRIMARY]

