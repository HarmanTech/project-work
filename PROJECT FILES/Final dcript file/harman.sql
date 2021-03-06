USE [master]
GO
/****** Object:  Database [eclinic]    Script Date: 2021-04-20 9:46:48 AM ******/
CREATE DATABASE [eclinic]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eclinic', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\eclinic.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'eclinic_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\eclinic_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [eclinic] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eclinic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eclinic] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eclinic] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eclinic] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eclinic] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eclinic] SET ARITHABORT OFF 
GO
ALTER DATABASE [eclinic] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [eclinic] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eclinic] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eclinic] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eclinic] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eclinic] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eclinic] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eclinic] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eclinic] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eclinic] SET  ENABLE_BROKER 
GO
ALTER DATABASE [eclinic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eclinic] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eclinic] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eclinic] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eclinic] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eclinic] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eclinic] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eclinic] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eclinic] SET  MULTI_USER 
GO
ALTER DATABASE [eclinic] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eclinic] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eclinic] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eclinic] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eclinic] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [eclinic] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [eclinic] SET QUERY_STORE = OFF
GO
USE [eclinic]
GO
/****** Object:  Table [dbo].[Adddoctor]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Addpatient]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[branch]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[branch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[branch] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Patientid] [varchar](50) NULL,
	[Test] [varchar](50) NULL,
	[Comment] [varchar](500) NULL,
	[DoctorName] [varchar](50) NULL,
	[Files] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospital_bloodtest]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[hospital_dischargesummary]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospital_dischargesummary](
	[patientid] [int] NULL,
	[patientname] [varchar](20) NULL,
	[joindate] [datetime] NULL,
	[dischargedate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospital_empsignup]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[hospital_operation]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospital_operation](
	[patienttype] [varchar](20) NULL,
	[patientid] [int] NULL,
	[patientname] [varchar](20) NULL,
	[refdoctor] [varchar](20) NULL,
	[operationtype] [varchar](20) NULL,
	[operatonresult] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospital_outpatient]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospital_patientinfo]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospital_patientinfo](
	[pid] [varchar](50) NULL,
	[patientname] [varchar](20) NULL,
	[age] [varchar](20) NULL,
	[department] [varchar](20) NULL,
	[doctor] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospital_pharmacy]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospital_pharmacy](
	[patienttype] [varchar](20) NULL,
	[patientid] [int] NULL,
	[department] [varchar](20) NULL,
	[patientname] [varchar](20) NULL,
	[medicine] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospital_surgeryinfo]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospital_surgeryinfo](
	[pid] [varchar](20) NULL,
	[patientname] [varchar](20) NULL,
	[age] [int] NULL,
	[department] [varchar](20) NULL,
	[doctor] [varchar](20) NULL,
	[surgerydate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicineMaster]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicineMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MedicineName] [varchar](max) NULL,
	[Qty] [int] NULL,
	[Price] [float] NULL,
	[Branch] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[News] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otp]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Emailid] [nvarchar](50) NULL,
	[Otp] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientMedicine]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientMedicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[patientid] [varchar](50) NULL,
	[Mediciname] [varchar](50) NULL,
	[Qty] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Totalamount] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientRegister]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientRegister](
	[PatientEMail] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ward]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ward](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ward] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addpatient] ADD  CONSTRAINT [DF_Addpatient_Approved]  DEFAULT ('Pending') FOR [Approved]
GO
ALTER TABLE [dbo].[hospital_patientinfo]  WITH CHECK ADD  CONSTRAINT [FK__hospital_pa__pid__1367E606] FOREIGN KEY([pid])
REFERENCES [dbo].[Addpatient] ([patientid])
GO
ALTER TABLE [dbo].[hospital_patientinfo] CHECK CONSTRAINT [FK__hospital_pa__pid__1367E606]
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_bloodtest]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_bloodtest](@patienttype varchar(20),@patientid int,@patientname varchar(20),@mediclatestype varchar(20),
@bloodgroup varchar(20),@haemoglobin varchar(20),@bloodsugar varchar(20),@sacid varchar(20),@description varchar(40))
as
begin
insert into hospital_bloodtest values(@patienttype,@patientid,@patientname,@mediclatestype,@bloodgroup,@haemoglobin,
@bloodsugar,@sacid,@description)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_dischargesummary]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_dischargesummary](@patientid int,@patientname varchar(20),
@joindate datetime,@dischargedate datetime)
as
begin
insert into hospital_dischargesummary values(@patientid,@patientname,@joindate,@dischargedate)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_doctorforgot]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_hospital_doctorforgot](@loginid varchar(20),@password varchar(20) out)    
as    
begin    
select @password=password from hospital_doctorsignup where loginid=@loginid  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_empforgot]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_hospital_empforgot](@loginid varchar(20),@password varchar(20) out)    
as    
begin    
select @password=password from hospital_empsignup where loginid=@loginid  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_empsignup]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_hospital_empsignup](@name varchar(20),@loginid varchar(20),@password varchar(20),
@department varchar(20),@phonenumber varchar(20),@address varchar(20),@email varchar(20),@branch varchar(90))
as
begin
insert into hospital_empsignup values(@name,@loginid,@password,@department,@phonenumber,@address,@email,@branch)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_medicaltestout]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_hospital_medicaltestout](@pid int)  
as  
begin  
select patientname from hospital_outpatient where patientid=@pid  
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_operation]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_operation](@patienttype varchar(20),@patientid int,@patientname varchar(20),@refdoctor varchar(20),
@operationtype varchar(20),@operatonresult varchar(20))
as
begin
insert into hospital_operation values(@patienttype,@patientid,@patientname,@refdoctor,@operationtype,@operatonresult)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_outpatient]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_outpatient](@patientname varchar(20) ,@gender varchar(20),@age int,@address varchar(20),
@assigndoctor varchar(20),@phoneres bigint,@phonemob bigint,@opdate datetime,@department varchar(20))
as
begin
insert into hospital_outpatient values(@patientname,@gender,@age,@address,@assigndoctor,@phoneres,@phonemob,@opdate,@department)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_patientinfoenter]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_patientinfoenter](@pid int,@patientname varchar(20),@age varchar(20),@department varchar(20),
@doctor varchar(20))
as
begin
insert into hospital_patientinfo values(@pid,@patientname,@age,@department,@doctor)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_pharmacy]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_pharmacy](@patienttype varchar(20),@patientid int,@department varchar(20),@patientname varchar(20),
@medicine varchar(20))
as
begin
insert into hospital_pharmacy values(@patienttype,@patientid,@department,@patientname,@medicine)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_surgeryinfo]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_surgeryinfo](@pid int,@patientname varchar(20),@age varchar(20),@department varchar(20),@doctor varchar(20),
@surgerydate datetime)  
as  
begin  
insert into hospital_surgeryinfo values(@pid,@patientname,@age,@department,@doctor,@surgerydate)  
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital_urintest]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_hospital_urintest](@patienttype varchar(20),@patientid int,@patientname varchar(20),@mediclatestype varchar(20),
@color varchar(20),@clarity varchar(20),@odor varchar(20),@specificgravity varchar(20),@glucose varchar(40),@description varchar(40))
as
begin
insert into hospital_urintest values(@patienttype,@patientid,@patientname,@mediclatestype,@color,@clarity,
@odor,@specificgravity,@glucose,@description)
end
GO
/****** Object:  StoredProcedure [dbo].[spadddoctor]    Script Date: 2021-04-20 9:46:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spadddoctor](@name varchar(20),@loginid varchar(20),@password varchar(20),
@department varchar(20),@phonenumber varchar(20),@address varchar(20),@email varchar(20),@lat nvarchar(50),@lon nvarchar(50))
as
begin
insert into Adddoctor values(@name,@loginid,@password,@department,@phonenumber,@address,@email,@lat,@lon)
end
GO
USE [master]
GO
ALTER DATABASE [eclinic] SET  READ_WRITE 
GO
