USE [master]
GO
/****** Object:  Database [PharmacyDB]    Script Date: 6/3/2016 4:49:58 PM ******/
CREATE DATABASE [PharmacyDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PharmacyDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PharmacyDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PharmacyDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PharmacyDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PharmacyDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PharmacyDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PharmacyDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PharmacyDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PharmacyDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PharmacyDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PharmacyDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PharmacyDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PharmacyDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PharmacyDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PharmacyDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PharmacyDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PharmacyDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PharmacyDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PharmacyDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PharmacyDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PharmacyDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PharmacyDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PharmacyDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PharmacyDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PharmacyDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PharmacyDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PharmacyDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PharmacyDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PharmacyDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PharmacyDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PharmacyDB] SET  MULTI_USER 
GO
ALTER DATABASE [PharmacyDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PharmacyDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PharmacyDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PharmacyDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PharmacyDB]
GO
/****** Object:  StoredProcedure [dbo].[AddAcademics]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddAcademics] 
	-- Add the parameters for the stored procedure here
	@arname nvarchar(max),
	@enname nvarchar(max),
	@frname nvarchar(max),
	@ardescription nvarchar(max),
	@endescription nvarchar(max),
	@frdescription nvarchar(max),
	@cv nvarchar(max),
	@icon nvarchar(max),
	@status int,
	@category nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into academics(arname, enname, frname, ardescription, endescription, frdescription,cv,icon, [status], category) values(@arname, @enname, @frname, @ardescription, @endescription, @frdescription, @cv,@icon, @status, @category);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddActivities]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddActivities] 
	-- Add the parameters for the stored procedure here
	@artitle nvarchar(200),
	@entitle nvarchar(200),
	@frtitle nvarchar(200),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max),
	@photo nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Activities(artitle, entitle, frtitle, artext, entext, frtext, photo) values(@artitle, @entitle, @frtitle, @artext, @entext, @frtext, @photo);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddAdministratifs]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddAdministratifs] 
	-- Add the parameters for the stored procedure here
	@arname nvarchar(max),
	@enname nvarchar(max),
	@frname nvarchar(max),
	@ardescription nvarchar(max),
	@endescription nvarchar(max),
	@frdescription nvarchar(max),
	@icon nvarchar(max),
	@status int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Administratifs(arname, enname, frname, ardescription, endescription, frdescription, icon, [status]) values(@arname, @enname, @frname, @ardescription, @endescription, @frdescription, @icon, @status);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddAlumni]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddAlumni] 
	-- Add the parameters for the stored procedure here
	@artitle nvarchar(max),
	@entitle nvarchar(max),
	@frtitle nvarchar(max),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Alumni(artitle, entitle, frtitle, artext, entext, frtext) values(@artitle, @entitle, @frtitle, @artext, @entext, @frtext);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddAlumniEvents]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddAlumniEvents] 
	-- Add the parameters for the stored procedure here
	@artitle nvarchar(200),
	@entitle nvarchar(200),
	@frtitle nvarchar(200),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max),
	@date_start datetime,
	@date_end datetime,
	@photo nvarchar(max),
	@Organizer nvarchar(200),
	@AlumniId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into AlumniEvents(artitle, entitle, frtitle, artext, entext, frtext,
	date_start, date_end, photo, Organizer, AlumniId) values(@artitle, @entitle, @frtitle, @artext, @entext, @frtext,
	@date_start, @date_end, @photo, @Organizer, @AlumniId);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddCalendar]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddCalendar] 
	-- Add the parameters for the stored procedure here
	@title nvarchar(500),
	@thumb nvarchar(max),
	@frtitle nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Calendar(title, thumb, frtitle) values(@title, @thumb, @frtitle);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddContinuousEducation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddContinuousEducation] 
	-- Add the parameters for the stored procedure here
	@arname nvarchar(max),
	@enname nvarchar(max),
	@frname nvarchar(max),
	@ardescription nvarchar(max),
	@endescription nvarchar(max),
	@frdescription nvarchar(max),
	@status int,
	@thumb nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into ContinuousEducation(arname, enname, frname, ardescription, endescription, frdescription, [status], thumb) values(@arname, @enname, @frname, @ardescription, @endescription, @frdescription, @status, @thumb);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddDepartment]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddDepartment] 
	-- Add the parameters for the stored procedure here
	@arname nvarchar(max),
	@enname nvarchar(max),
	@frname nvarchar(max),
	@ardescription nvarchar(max),
	@endescription nvarchar(max),
	@frdescription nvarchar(max),
	@icon nvarchar(max),
	@status int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into department(arname, enname, frname, ardescription, endescription, frdescription, icon, [status]) values(@arname, @enname, @frname, @ardescription, @endescription, @frdescription, @icon, @status);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddEducation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddEducation] 
	-- Add the parameters for the stored procedure here
	@title nvarchar(max),
	@total_hours nvarchar(max),
	@theorie nvarchar(max),
	@td nvarchar(max),
	@tp nvarchar(max),
	@credits decimal(18,1),
	@pre_req nvarchar(max),
	@description nvarchar(max),
	@code nvarchar(max),
	@status int,
	@semesterId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into education(title, total_hours, theorie, td, tp, credits, pre_req, [description], code, [status], semesterId) values(@title, @total_hours, @theorie, @td, @tp, @credits, @pre_req, @description, @code, @status, @semesterId);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddEvents]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddEvents] 
	-- Add the parameters for the stored procedure here
	@artitle nvarchar(200),
	@entitle nvarchar(200),
	@frtitle nvarchar(200),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max),
	@date_start datetime,
	@date_end datetime,
	@photo nvarchar(max),
	@Organizer nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Events(artitle, entitle, frtitle, artext, entext, frtext,
	date_start, date_end, photo, Organizer) values(@artitle, @entitle, @frtitle, @artext, @entext, @frtext,
	@date_start, @date_end, @photo, @Organizer);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddGraduation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddGraduation] 
	-- Add the parameters for the stored procedure here
	@arname nvarchar(500),
	@enname nvarchar(500),
	@frname nvarchar(500),
	@artext ntext,
	@entext ntext,
	@frtext ntext,
	@categoryId int,
	@arsmalltext ntext,
	@ensmalltext ntext,
	@frsmalltext ntext
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Graduation(arname, enname, frname, artext, entext, frtext, categoryId, ensmalltext, frsmalltext, arsmalltext) values(@arname, @enname, @frname, @artext, @entext, @frtext, @categoryId, @ensmalltext, @frsmalltext, @arsmalltext);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddGraduationCategory]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddGraduationCategory] 
	-- Add the parameters for the stored procedure here
	@arname nvarchar(500),
	@enname nvarchar(500),
	@frname nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into GraduationCategories(arname, enname, frname) values(@arname, @enname, @frname);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddGraduationFile]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddGraduationFile] 
	-- Add the parameters for the stored procedure here
	@filename nvarchar(max),
	@GraduationId int,
	@title nvarchar(max),
	@frtitle nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into GraduationFiles([filename], GraduationId, title, frtitle) values(@filename, @GraduationId, @title, @frtitle);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddNews]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddNews] 
	-- Add the parameters for the stored procedure here
	@artitle nvarchar(200),
	@entitle nvarchar(200),
	@frtitle nvarchar(200),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max),
	@date_in datetime,
	@pdf nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into News(artitle, entitle, frtitle, artext, entext, frtext,
	date_in, pdf) values(@artitle, @entitle, @frtitle, @artext, @entext, @frtext,
	@date_in, @pdf);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddOfficialStatement]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddOfficialStatement] 
	-- Add the parameters for the stored procedure here
	@pdf nvarchar(max),
	@title nvarchar(max),
	@description nvarchar(max),
	@status int,
	@date_in datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into official_statements(pdf, title, [description], [status], date_in) values(@pdf, @title, @description, @status, @date_in);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddPageVisit]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPageVisit] 
	-- Add the parameters for the stored procedure here
	@page_name nvarchar(max),
	@ip ntext,
	@browser nvarchar(max),
	@visite_date datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Page_Visits(page_name,ip,browser,visite_date)values(@page_name,@ip,@browser,@visite_date)
	return @@IDENTITY;
END



GO
/****** Object:  StoredProcedure [dbo].[AddQuickLinks]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddQuickLinks] 
	-- Add the parameters for the stored procedure here
	@link nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into QuickLinks(link) values(@link);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddResearchTeams]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddResearchTeams] 
	-- Add the parameters for the stored procedure here
	@entitle nvarchar(max),
	@frtitle nvarchar(max),
	@enmembersText nvarchar(max),
	@frmembersText nvarchar(max),
	@enpublicationsText nvarchar(max),
	@frpublicationsText nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into ResearchTeams(entitle, frtitle, enmembersText, frmembersText, enpublicationsText, frpublicationsText) values(@entitle, @frtitle, @enmembersText, @frmembersText, @enpublicationsText, @frpublicationsText);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddSemester]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddSemester] 
	-- Add the parameters for the stored procedure here
	@enname nvarchar(max),
	@arname nvarchar(max),
	@frname nvarchar(max),
	@specialityId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into semesters(enname, arname, frname, specialityId) values(@enname, @arname, @frname, @specialityId);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddServices]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddServices] 
	-- Add the parameters for the stored procedure here
	@artitle nvarchar(200),
	@entitle nvarchar(200),
	@frtitle nvarchar(200),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max),
	@photo nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into [Services](artitle, entitle, frtitle, artext, entext, frtext, photo) values(@artitle, @entitle, @frtitle, @artext, @entext, @frtext, @photo);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[AddSpeciality]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddSpeciality] 
	-- Add the parameters for the stored procedure here
	@enname nvarchar(max),
	@arname nvarchar(max),
	@frname nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into speciality(enname, frname, arname) values(@enname, @frname, @arname);
	return @@IDENTITY;
END


GO
/****** Object:  StoredProcedure [dbo].[CreateGallery]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateGallery] 
	-- Add the parameters for the stored procedure here
	@title nvarchar(max),
	@description nvarchar(max),
	@SmallImage nvarchar(max),
	@LargeImage nvarchar(max),
	@categoryId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Gallery(title, [description], SmallImage, LargeImage, categoryId) values(@title, @description, @SmallImage, @LargeImage, @categoryId);
	return @@IDENTITY;
END



GO
/****** Object:  StoredProcedure [dbo].[CreateGalleryCategory]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateGalleryCategory] 
	-- Add the parameters for the stored procedure here
	@title nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into GalleryCategories(title) values(@title);
	return @@IDENTITY;
END



GO
/****** Object:  StoredProcedure [dbo].[CreateGalleryImage]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateGalleryImage] 
	-- Add the parameters for the stored procedure here
	@image nvarchar(max),
	@galleryId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into GalleryImages(img,galleryId) values(@image,@galleryId);
	return @@IDENTITY;
END



GO
/****** Object:  StoredProcedure [dbo].[CreateGroup]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateGroup] 
	@name nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into cms_groups(name) values(@name);
	return @@IDENTITY;
END



GO
/****** Object:  StoredProcedure [dbo].[CreateHomeGallery]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateHomeGallery] 
	-- Add the parameters for the stored procedure here
	@title nvarchar(max),
	@description nvarchar(max),
	@image nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into HomeGallery(title, [description], [image]) values(@title, @description, @image);
	return @@IDENTITY;
END



GO
/****** Object:  StoredProcedure [dbo].[CreateOrientationFile]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateOrientationFile] 
	-- Add the parameters for the stored procedure here
	@filename nvarchar(max),
	@title nvarchar(max),
	@frtitle nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into OrientationFiles ([filename], title, frtitle) values(@filename, @title, @frtitle);
	return @@IDENTITY
END


GO
/****** Object:  StoredProcedure [dbo].[CreatePermission]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreatePermission] 
	@name nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into cms_permissions(name) values(@name);
	return @@IDENTITY;
END



GO
/****** Object:  StoredProcedure [dbo].[CreatePolicy]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreatePolicy] 
	@permissionId int,
	@groupId int,
	@event_permitted nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into cms_policies(permissionId, groupId, event_permitted) values(@permissionId, @groupId, @event_permitted);
	return @@IDENTITY
END



GO
/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateUser] 
	@Username nvarchar(max),
	@Password nvarchar(max),
	@groupId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into cms_user(username,[password], groupId) values(@Username, @Password, @groupId);
	return @@IDENTITY;
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteAcademics]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAcademics] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from academics where id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteActivities]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteActivities] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Activities where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteAdministratifs]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAdministratifs] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Administratifs where id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteAlumniEvents]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAlumniEvents] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from AlumniEvents where id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteCalendar]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteCalendar] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Calendar where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteContinuousEducation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteContinuousEducation] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete ContinuousEducation where id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartment]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteDepartment] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from department where id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteEducation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteEducation] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from education where id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteEvents]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteEvents] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Events where id = @id
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteGallery]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteGallery] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Gallery where id = @id;
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteGalleryCategory]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteGalleryCategory] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from GalleryCategories where id = @id;
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteGalleryImage]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteGalleryImage] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from GalleryImages where id = @id;
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteGraduation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteGraduation] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Graduation where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteGraduationCategory]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteGraduationCategory] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from GraduationCategories where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteGraduationFile]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteGraduationFile] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from GraduationFiles where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteGroup]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteGroup] 
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    delete from cms_policies where groupId=@id;
	delete from cms_groups where id=@id;
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteHomeGallery]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteHomeGallery] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from HomeGallery where id = @id;
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteNews]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteNews] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from News where id = @id
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteOfficialStatement]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteOfficialStatement] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from official_statements where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteOrientationFile]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteOrientationFile] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from OrientationFiles where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeletePermission]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePermission] 
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from cms_permissions where id=@id;
END



GO
/****** Object:  StoredProcedure [dbo].[DeletePolicy]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePolicy] 
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from cms_policies where id=@id;
END



GO
/****** Object:  StoredProcedure [dbo].[DeletePolicyByGroupId]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePolicyByGroupId] 
	@groupId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from cms_policies where groupId=@groupId;
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteQuickLinks]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteQuickLinks] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from QuickLinks where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteResearchTeams]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteResearchTeams] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from ResearchTeams where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteSemester]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteSemester] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from semesters where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteServices]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteServices] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from [Services] where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteSpeciality]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteSpeciality] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from education where semesterId in (select id from semesters where specialityId = @id);
	delete from semesters where specialityId = @id;
	delete from speciality where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteteAlumni]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteteAlumni] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Alumni where id = @id
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteteAlumniEvents]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteteAlumniEvents] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from AlumniEvents where id = @id
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteUser] 
	@ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from cms_user where id=@id;
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateAcademics]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateAcademics] 
	-- Add the parameters for the stored procedure here
	@id int,
	@arname nvarchar(max),
	@enname nvarchar(max),
	@frname nvarchar(max),
	@ardescription nvarchar(max),
	@endescription nvarchar(max),
	@frdescription nvarchar(max),
	@cv nvarchar(max),
	@icon nvarchar(max),
	@status int,
	@category nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update academics set arname = @arname, enname = @enname, frname = @frname, ardescription = @ardescription, endescription = @endescription, frdescription = @frdescription,cv = @cv,icon = @icon, [status] = @status, category = @category where id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateActivities]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateActivities] 
	-- Add the parameters for the stored procedure here
	@id int,
	@artitle nvarchar(200),
	@entitle nvarchar(200),
	@frtitle nvarchar(200),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max),
	@photo nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Activities set artitle = @artitle, entitle = @entitle, frtitle = @frtitle, artext = @artext, entext = @entext, frtext = @frtext, photo = @photo where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateAdministratifs]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateAdministratifs] 
	-- Add the parameters for the stored procedure here
	@id int,
	@arname nvarchar(max),
	@enname nvarchar(max),
	@frname nvarchar(max),
	@ardescription nvarchar(max),
	@endescription nvarchar(max),
	@frdescription nvarchar(max),
	@icon nvarchar(max),
	@status int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Administratifs set arname = @arname, enname = @enname, frname = @frname, ardescription = @ardescription, endescription = @endescription, frdescription = @frdescription, icon = @icon, [status] = @status where id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateAlumni]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateAlumni] 
	-- Add the parameters for the stored procedure here
	@id int,
	@artitle nvarchar(max),
	@entitle nvarchar(max),
	@frtitle nvarchar(max),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Alumni set artitle = @artitle, entitle = @entitle, frtitle = @frtitle, artext = @artext, entext = @entext, frtext = @frtext where id = @id
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateAlumniEvents]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateAlumniEvents] 
	-- Add the parameters for the stored procedure here
	@id int,
	@artitle nvarchar(200),
	@entitle nvarchar(200),
	@frtitle nvarchar(200),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max),
	@date_start datetime,
	@date_end datetime,
	@photo nvarchar(max),
	@Organizer nvarchar(200),
	@AlumniId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update AlumniEvents set artitle = @artitle, entitle = @entitle, frtitle = @frtitle, artext = @artext, entext = @entext, frtext = @frtext,
	date_start = @date_start, date_end = @date_end, photo = @photo, Organizer = @Organizer, AlumniId = @AlumniId where id = @id
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateCalendar]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateCalendar] 
	-- Add the parameters for the stored procedure here
	@id int,
	@title nvarchar(500),
	@thumb nvarchar(max),
	@frtitle nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Calendar set title = @title, thumb = @thumb, frtitle = @frtitle where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateCMSUserLoginDate]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateCMSUserLoginDate] 
	-- Add the parameters for the stored procedure here
	@date_login datetime,
	@userId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update cms_user set date_login=@date_login where id=@userId
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateContinuousEducation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateContinuousEducation] 
	-- Add the parameters for the stored procedure here
	@id int,
	@arname nvarchar(max),
	@enname nvarchar(max),
	@frname nvarchar(max),
	@ardescription nvarchar(max),
	@endescription nvarchar(max),
	@frdescription nvarchar(max),
	@status int,
	@thumb nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update ContinuousEducation set arname = @arname, enname = @enname, frname = @frname, ardescription = @ardescription, endescription = @endescription, frdescription = @frdescription, [status] = @status, thumb = @thumb where id=@id
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateDepartment]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateDepartment] 
	-- Add the parameters for the stored procedure here
	@id int,
	@arname nvarchar(max),
	@enname nvarchar(max),
	@frname nvarchar(max),
	@ardescription nvarchar(max),
	@endescription nvarchar(max),
	@frdescription nvarchar(max),
	@icon nvarchar(max),
	@status int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update department set arname = @arname, enname = @enname, frname = @frname, ardescription = @ardescription, endescription = @endescription, frdescription = @frdescription, icon = @icon, [status] = @status where id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateEducation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateEducation] 
	-- Add the parameters for the stored procedure here
	@id int,
	@title nvarchar(max),
	@total_hours nvarchar(max),
	@theorie nvarchar(max),
	@td nvarchar(max),
	@tp nvarchar(max),
	@credits decimal(18,1),
	@pre_req nvarchar(max),
	@description nvarchar(max),
	@code nvarchar(max),
	@status int,
	@semesterId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update education set title = @title, total_hours = @total_hours, theorie = @theorie, td = @td, tp = @tp, credits = @credits, pre_req = @pre_req, [description] = @description, code = @code, [status] = @status, semesterId = @semesterId where id=@id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateEvents]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateEvents] 
	-- Add the parameters for the stored procedure here
	@id int,
	@artitle nvarchar(200),
	@entitle nvarchar(200),
	@frtitle nvarchar(200),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max),
	@date_start datetime,
	@date_end datetime,
	@photo nvarchar(max),
	@Organizer nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Events set artitle = @artitle, entitle = @entitle, frtitle = @frtitle, artext = @artext, entext = @entext, frtext = @frtext,
	date_start = @date_start, date_end = @date_end, photo = @photo, Organizer = @Organizer where id = @id
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateGallery]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateGallery] 
	-- Add the parameters for the stored procedure here
	@id int,
	@title nvarchar(max),
	@description nvarchar(max),
	@SmallImage nvarchar(max),
	@LargeImage nvarchar(max),
	@categoryId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Gallery set title = @title, [description] = @description, SmallImage = @SmallImage, LargeImage = @LargeImage, categoryId = @categoryId where id = @id;
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateGalleryCategory]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateGalleryCategory] 
	-- Add the parameters for the stored procedure here
	@id int,
	@title nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update GalleryCategories set title = @title where id = @id;
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateGraduation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateGraduation] 
	-- Add the parameters for the stored procedure here
	@id int,
	@arname nvarchar(max),
	@enname nvarchar(max),
	@frname nvarchar(max),
	@artext ntext,
	@entext ntext,
	@frtext ntext,
	@categoryId int,
	@arsmalltext ntext,
	@ensmalltext ntext,
	@frsmalltext ntext
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Graduation set arname = @arname, enname = @enname, frname = @frname, artext = @artext, entext = @entext, frtext = @frtext, categoryId = @categoryId, arsmalltext = @arsmalltext, ensmalltext = @ensmalltext, frsmalltext = @frsmalltext where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateGraduationCategory]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateGraduationCategory] 
	-- Add the parameters for the stored procedure here
	@id int,
	@arname nvarchar(500),
	@enname nvarchar(500),
	@frname nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update GraduationCategories set arname = @arname, enname = @enname, frname = @frname where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateGraduationFile]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateGraduationFile] 
	-- Add the parameters for the stored procedure here
	@id int,
	@filename nvarchar(max),
	@GraduationId int,
	@title nvarchar(max),
	@frtitle nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update GraduationFiles set [filename] = @filename, GraduationId = @GraduationId, title = @title, frtitle = @frtitle where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateGroup]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateGroup] 
	@id int,
	@name nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update cms_groups set name = @name where id=@id;
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateHomeGallery]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateHomeGallery] 
	-- Add the parameters for the stored procedure here
	@id int,
	@title nvarchar(max),
	@description nvarchar(max),
	@image nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update HomeGallery set title = @title, [description] = @description, [image] = @image where id = @id;
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateNews]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateNews] 
	-- Add the parameters for the stored procedure here
	@id int,
	@artitle nvarchar(200),
	@entitle nvarchar(200),
	@frtitle nvarchar(200),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max),
	@pdf nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update News set artitle = @artitle, entitle = @entitle, frtitle = @frtitle, artext = @artext, entext = @entext, frtext = @frtext, pdf = @pdf where id = @id
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateOfficialStatement]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateOfficialStatement] 
	-- Add the parameters for the stored procedure here
	@id int,
	@pdf nvarchar(max),
	@title nvarchar(max),
	@description nvarchar(max),
	@status int,
	@date_in datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update official_statements set pdf = @pdf, title = @title, [description] = @description, [status] = @status, date_in = @date_in where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateOrientationFile]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateOrientationFile] 
	-- Add the parameters for the stored procedure here
	@id int,
	@filename nvarchar(max),
	@title nvarchar(max),
	@frtitle nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update OrientationFiles set [filename] = @filename, title = @title, frtitle = @frtitle where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdatePermission]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePermission] 
	@id int,
	@name nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update cms_permissions set name = @name where id=@id;
END



GO
/****** Object:  StoredProcedure [dbo].[UpdatePolicy]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePolicy] 
	@id int,
	@permissionId int,
	@groupId int,
	@event_permitted nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update cms_policies set permissionId = @permissionId, groupId = @groupId, event_permitted = @event_permitted where id=@id;
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateQuickLinks]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateQuickLinks] 
	-- Add the parameters for the stored procedure here
	@id int,
	@link nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update QuickLinks set link = @link where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateResearchTeams]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateResearchTeams] 
	-- Add the parameters for the stored procedure here
	@id int,
	@entitle nvarchar(max),
	@frtitle nvarchar(max),
	@enmembersText nvarchar(max),
	@frmembersText nvarchar(max),
	@enpublicationsText nvarchar(max),
	@frpublicationsText nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update ResearchTeams set entitle = @entitle, frtitle = @frtitle, enmembersText = @enmembersText, frmembersText = @frmembersText, enpublicationsText = @enpublicationsText, frpublicationsText = @frpublicationsText where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateSemester]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateSemester] 
	-- Add the parameters for the stored procedure here
	@id int,
	@enname nvarchar(max),
	@arname nvarchar(max),
	@frname nvarchar(max),
	@specialityId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update semesters set enname = @enname, frname = @frname, arname = @arname, specialityId = @specialityId where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateServices]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateServices] 
	-- Add the parameters for the stored procedure here
	@id int,
	@artitle nvarchar(200),
	@entitle nvarchar(200),
	@frtitle nvarchar(200),
	@artext nvarchar(max),
	@entext nvarchar(max),
	@frtext nvarchar(max),
	@photo nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update [Services] set artitle = @artitle, entitle = @entitle, frtitle = @frtitle, artext = @artext, entext = @entext, frtext = @frtext, photo = @photo where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateSorting]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateSorting] 
	@id int,
	@sort int,
	@table nvarchar(max) 
AS
BEGIN
	
	--SET NOCOUNT OFF;

    -- Insert statements for procedure here
	EXECUTE('update '+@table+' set sort='+@sort+' where id='+@id);
	--return SCOPE_IDENTITY();
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateSpeciality]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateSpeciality] 
	-- Add the parameters for the stored procedure here
	@id int,
	@enname nvarchar(max),
	@arname nvarchar(max),
	@frname nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update speciality set enname = @enname, frname = @frname, arname = @arname where id = @id;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUser] 
	@ID int,
	@Username nvarchar(max),
	@Password nvarchar(max),
	@groupId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update cms_user set username = @Username,[password] = @Password, groupId = @groupId where id=@id;
END



GO
/****** Object:  UserDefinedFunction [dbo].[CMSLogin]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        <Author,,Name>
-- Create date: <Create Date, ,>
-- Description:   <Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[CMSLogin] 
(
      @username nvarchar(max),
      @password nvarchar(max)
)
RETURNS int
AS
BEGIN
      DECLARE @UserId int
      set @UserId = -1

      SELECT @UserId = id from [cms_user] WHERE username = @Username AND [password] = @Password 

      RETURN @UserId

END



GO
/****** Object:  Table [dbo].[academics]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[academics](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[arname] [nvarchar](max) NULL,
	[enname] [nvarchar](max) NULL,
	[frname] [nvarchar](max) NULL,
	[ardescription] [nvarchar](max) NULL,
	[endescription] [nvarchar](max) NULL,
	[frdescription] [nvarchar](max) NULL,
	[cv] [nvarchar](max) NULL,
	[icon] [nvarchar](max) NULL,
	[sort] [int] NULL,
	[status] [int] NULL,
	[category] [nvarchar](max) NULL,
 CONSTRAINT [PK_academics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Activities]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[artitle] [nvarchar](200) NULL,
	[entitle] [nvarchar](200) NULL,
	[frtitle] [nvarchar](200) NULL,
	[artext] [nvarchar](max) NULL,
	[entext] [nvarchar](max) NULL,
	[frtext] [nvarchar](max) NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Activities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Administratifs]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administratifs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[arname] [nvarchar](max) NULL,
	[enname] [nvarchar](max) NULL,
	[frname] [nvarchar](max) NULL,
	[ardescription] [nvarchar](max) NULL,
	[endescription] [nvarchar](max) NULL,
	[frdescription] [nvarchar](max) NULL,
	[icon] [nvarchar](max) NULL,
	[sort] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Administratifs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Alumni]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumni](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[artitle] [nvarchar](200) NULL,
	[entitle] [nvarchar](200) NULL,
	[frtitle] [nvarchar](200) NULL,
	[artext] [nvarchar](max) NULL,
	[entext] [nvarchar](max) NULL,
	[frtext] [nvarchar](max) NULL,
 CONSTRAINT [PK_Alumni] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AlumniEvents]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlumniEvents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[artitle] [nvarchar](200) NULL,
	[entitle] [nvarchar](200) NULL,
	[frtitle] [nvarchar](200) NULL,
	[artext] [nvarchar](max) NULL,
	[entext] [nvarchar](max) NULL,
	[frtext] [nvarchar](max) NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
	[photo] [nvarchar](max) NULL,
	[Organizer] [nvarchar](200) NULL,
	[AlumniId] [int] NULL,
 CONSTRAINT [PK_AlumniEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NULL,
	[thumb] [nvarchar](max) NULL,
	[frtitle] [nvarchar](500) NULL,
 CONSTRAINT [PK_Calendar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cms_groups]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_cms_groups] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cms_permissions]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_cms_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cms_policies]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_policies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[permissionId] [int] NULL,
	[groupId] [int] NULL,
	[event_permitted] [nvarchar](max) NULL,
 CONSTRAINT [PK_cms_policies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cms_user]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[groupId] [int] NULL,
	[date_login] [datetime] NULL,
 CONSTRAINT [PK_cms_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContinuousEducation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContinuousEducation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[arname] [nvarchar](max) NULL,
	[enname] [nvarchar](max) NULL,
	[frname] [nvarchar](max) NULL,
	[ardescription] [nvarchar](max) NULL,
	[endescription] [nvarchar](max) NULL,
	[frdescription] [nvarchar](max) NULL,
	[sort] [int] NULL,
	[status] [int] NULL,
	[thumb] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContinuousEducation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[department]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[arname] [nvarchar](max) NULL,
	[enname] [nvarchar](max) NULL,
	[frname] [nvarchar](max) NULL,
	[ardescription] [nvarchar](max) NULL,
	[endescription] [nvarchar](max) NULL,
	[frdescription] [nvarchar](max) NULL,
	[icon] [nvarchar](max) NULL,
	[sort] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[education]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[education](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[total_hours] [nvarchar](max) NULL,
	[theorie] [nvarchar](max) NULL,
	[td] [nvarchar](max) NULL,
	[tp] [nvarchar](max) NULL,
	[credits] [decimal](18, 1) NULL,
	[pre_req] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[code] [nvarchar](max) NULL,
	[sort] [int] NULL,
	[status] [int] NULL,
	[semesterId] [int] NULL,
 CONSTRAINT [PK_education] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[artitle] [nvarchar](200) NULL,
	[entitle] [nvarchar](200) NULL,
	[frtitle] [nvarchar](200) NULL,
	[artext] [nvarchar](max) NULL,
	[entext] [nvarchar](max) NULL,
	[frtext] [nvarchar](max) NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
	[photo] [nvarchar](max) NULL,
	[Organizer] [nvarchar](200) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[SmallImage] [nvarchar](max) NULL,
	[LargeImage] [nvarchar](max) NULL,
	[categoryId] [int] NULL,
	[sort] [int] NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GalleryCategories]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GalleryCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[sort] [int] NULL,
 CONSTRAINT [PK_GalleryCategories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GalleryImages]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GalleryImages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img] [nvarchar](max) NULL,
	[galleryId] [int] NULL,
 CONSTRAINT [PK_GalleryImages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Graduation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Graduation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[arname] [nvarchar](500) NULL,
	[enname] [nvarchar](500) NULL,
	[frname] [nvarchar](500) NULL,
	[artext] [ntext] NULL,
	[entext] [ntext] NULL,
	[frtext] [ntext] NULL,
	[categoryId] [int] NULL,
	[ensmalltext] [ntext] NULL,
	[arsmalltext] [ntext] NULL,
	[frsmalltext] [ntext] NULL,
 CONSTRAINT [PK_Graduation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GraduationCategories]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GraduationCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[arname] [nvarchar](500) NULL,
	[enname] [nvarchar](500) NULL,
	[frname] [nvarchar](500) NULL,
 CONSTRAINT [PK_GraduationCategories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GraduationFiles]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GraduationFiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[filename] [nvarchar](max) NULL,
	[GraduationId] [int] NULL,
	[title] [nvarchar](max) NULL,
	[frtitle] [nvarchar](max) NULL,
 CONSTRAINT [PK_GraduationFiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HomeGallery]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeGallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[sort] [int] NULL,
 CONSTRAINT [PK_HomeGallery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[artitle] [nvarchar](200) NULL,
	[entitle] [nvarchar](200) NULL,
	[frtitle] [nvarchar](200) NULL,
	[artext] [nvarchar](max) NULL,
	[entext] [nvarchar](max) NULL,
	[frtext] [nvarchar](max) NULL,
	[date_in] [datetime] NULL,
	[pdf] [nvarchar](max) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[official_statements]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[official_statements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pdf] [nvarchar](max) NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[sort] [int] NULL,
	[status] [int] NULL,
	[date_in] [datetime] NULL,
 CONSTRAINT [PK_official_statements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrientationFiles]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrientationFiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[filename] [nvarchar](max) NULL,
	[title] [nvarchar](max) NULL,
	[frtitle] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Page_Visits]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Page_Visits](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[page_name] [nvarchar](max) NULL,
	[ip] [nvarchar](max) NULL,
	[browser] [nvarchar](max) NULL,
	[visite_date] [datetime] NULL,
 CONSTRAINT [PK_PAge_Visits] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuickLinks]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuickLinks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](max) NULL,
 CONSTRAINT [PK_QuickLinks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResearchTeams]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResearchTeams](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entitle] [nvarchar](max) NULL,
	[enmembersText] [ntext] NULL,
	[enpublicationsText] [ntext] NULL,
	[frtitle] [nvarchar](max) NULL,
	[frmembersText] [ntext] NULL,
	[frpublicationsText] [nvarchar](max) NULL,
 CONSTRAINT [PK_ResearchTeams] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[semesters]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[semesters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enname] [nvarchar](max) NULL,
	[frname] [nvarchar](max) NULL,
	[arname] [nvarchar](max) NULL,
	[specialityId] [int] NULL,
 CONSTRAINT [PK_semesters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Services]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[artitle] [nvarchar](200) NULL,
	[entitle] [nvarchar](200) NULL,
	[frtitle] [nvarchar](200) NULL,
	[artext] [nvarchar](max) NULL,
	[entext] [nvarchar](max) NULL,
	[frtext] [nvarchar](max) NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[speciality]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[speciality](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enname] [nvarchar](max) NULL,
	[frname] [nvarchar](max) NULL,
	[arname] [nvarchar](max) NULL,
 CONSTRAINT [PK_speciality] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetAcademics]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetAcademics]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from academics
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetAcademicsByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetAcademicsByID]
(	
@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from academics where id=@id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetActivities]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetActivities]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [Activities]
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetActivitiesByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetActivitiesByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [Activities] where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetAdministrative]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetAdministrative]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Administratifs
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetAdministrativeByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetAdministrativeByID]
(	
@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Administratifs where id=@id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetAlumni]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetAlumni]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Alumni
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetAlumniByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetAlumniByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [Alumni] where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetAlumniEvents]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetAlumniEvents]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from AlumniEvents
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetAlumniEventsByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetAlumniEventsByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [AlumniEvents] where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetCalendar]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetCalendar]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Calendar
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetCalendarById]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetCalendarById]
(
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Calendar where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetContinuousEducation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetContinuousEducation]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from ContinuousEducation
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetContinuousEducationByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetContinuousEducationByID]
(	
@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from ContinuousEducation where id=@id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetDepartment]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetDepartment]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from department
)

GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetDepartmentByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetDepartmentByID]
(	
@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from department where id=@id
)

GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetEducation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetEducation]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from education
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetEducationByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetEducationByID]
(	
@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from education where id=@id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetEducationBySemesterID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetEducationBySemesterID]
(
	@semesterId int	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from education where semesterId = @semesterId
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetEvents]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetEvents]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Events
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetEventsByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetEventsByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [Events] where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGallery]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGallery]
(	
	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Gallery
)



GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGalleryByCategoryID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGalleryByCategoryID]
(	
	@categoryId int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Gallery where categoryId = @categoryId
)



GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGalleryByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGalleryByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Gallery where id = @id
)



GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGalleryCategories]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGalleryCategories]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from GalleryCategories
)



GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGalleryCategoriesByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGalleryCategoriesByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from GalleryCategories where id = @id
)



GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGalleryImagesByGalleryID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGalleryImagesByGalleryID]
(	
	@galleryId int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from GalleryImages where galleryId = @galleryId
)



GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGraduation]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGraduation]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Graduation
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGraduationByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGraduationByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from Graduation where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGraduationCategories]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGraduationCategories]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from GraduationCategories
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGraduationCategoriesByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGraduationCategoriesByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from GraduationCategories where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGraduationFilesByGraduationId]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGraduationFilesByGraduationId]
(	
	@GraduationId int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from GraduationFiles where GraduationId = @GraduationId
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetGraduationFilesById]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetGraduationFilesById]
(	
	@Id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from GraduationFiles where id = @Id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetHomeGallery]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetHomeGallery]
(	
	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from HomeGallery
)



GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetHomeGalleryByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetHomeGalleryByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from HomeGallery where id = @id
)



GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetNews]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetNews]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from News
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetNewsByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetNewsByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [News] where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetOfficialStatement]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetOfficialStatement]
(
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from official_statements
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetOfficialStatementByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetOfficialStatementByID]
(
@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from official_statements where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetOrientationFiles]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetOrientationFiles]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from OrientationFiles
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetOrientationFilesByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetOrientationFilesByID]
(
	@id int	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from OrientationFiles where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetQuickLinks]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetQuickLinks]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from QuickLinks
)

GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetQuickLinksById]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetQuickLinksById]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from QuickLinks where id = @id
)

GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetResearchTeams]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetResearchTeams]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from ResearchTeams
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetResearchTeamsById]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetResearchTeamsById]
(	
@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from ResearchTeams where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetSemesters]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetSemesters]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [semesters]
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetSemestersByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetSemestersByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [semesters] where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetSemestersBySpecialityID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetSemestersBySpecialityID]
(
	@specialityId int	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [semesters] where specialityId = @specialityId
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetServices]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetServices]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [Services]
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetServicesByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetServicesByID]
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from [Services] where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetSpeciality]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetSpeciality]
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from speciality
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetSpecialityByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetSpecialityByID]
(
@id int	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from speciality where id = @id
)


GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetVisitsBetwee2Dates]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create FUNCTION [dbo].[CMSGetVisitsBetwee2Dates] 
(
	@sdate datetime,
	@edate datetime	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	select COUNT(distinct ip) as visits from Page_Visits where visite_date between @sdate and @edate
)



GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetVisitsPerBrowser]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetVisitsPerBrowser] 
(
	@browser nvarchar(max)	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	select COUNT(distinct ip) as visits from Page_Visits where browser like'%' + @browser + '%'
)



GO
/****** Object:  UserDefinedFunction [dbo].[CMSGetVisitsPerDate]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[CMSGetVisitsPerDate] 
(
	@date nvarchar(max)	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	select COUNT(distinct ip) as visits from Page_Visits where Convert(VarChar, visite_date, 101) like @date
)



GO
/****** Object:  UserDefinedFunction [dbo].[GetCMSGroups]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetCMSGroups] 
(	
	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from cms_groups
)



GO
/****** Object:  UserDefinedFunction [dbo].[GetCMSGroupsByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetCMSGroupsByID] 
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from cms_groups where id=@id
)



GO
/****** Object:  UserDefinedFunction [dbo].[GetCMSPermissions]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetCMSPermissions] 
(	
	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from cms_permissions
)



GO
/****** Object:  UserDefinedFunction [dbo].[GetCMSPolicies]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetCMSPolicies] 
(	
	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from cms_policies
)



GO
/****** Object:  UserDefinedFunction [dbo].[GetCMSPoliciesByGroupIdAndPermissionId]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetCMSPoliciesByGroupIdAndPermissionId] 
(	
	@groupId int,
	@permissionId int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from cms_policies where groupId=@groupId and permissionId = @permissionId
)



GO
/****** Object:  UserDefinedFunction [dbo].[GetCMSPoliciesByGroupIdAndPermissionName]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetCMSPoliciesByGroupIdAndPermissionName] 
(	
	@groupId int,
	@permissionname nvarchar(max)
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT * from cms_policies where groupId=@groupId and permissionId in (select id from cms_permissions where name=@permissionname)
)



GO
/****** Object:  UserDefinedFunction [dbo].[GetCMSUsers]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetCMSUsers] 
(	
	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT cms_user.id,cms_user.username, cms_user.date_login, cms_groups.name from cms_user, cms_groups where cms_groups.id = cms_user.groupId
)



GO
/****** Object:  UserDefinedFunction [dbo].[GetCMSUsersByID]    Script Date: 6/3/2016 4:49:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetCMSUsersByID] 
(	
	@id int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	select * from cms_user where id=@id
)



GO
SET IDENTITY_INSERT [dbo].[cms_groups] ON 

INSERT [dbo].[cms_groups] ([id], [name]) VALUES (1, N'administrator')
SET IDENTITY_INSERT [dbo].[cms_groups] OFF
SET IDENTITY_INSERT [dbo].[cms_user] ON 

INSERT [dbo].[cms_user] ([id], [username], [password], [groupId], [date_login]) VALUES (1, N'admin', N'5f4dcc3b5aa765d61d8327deb882cf99', 1, CAST(0x0000A60800BE5945 AS DateTime))
SET IDENTITY_INSERT [dbo].[cms_user] OFF
SET IDENTITY_INSERT [dbo].[Graduation] ON 

INSERT [dbo].[Graduation] ([id], [arname], [enname], [frname], [artext], [entext], [frtext], [categoryId], [ensmalltext], [arsmalltext], [frsmalltext]) VALUES (1, N'asdfasdf', N'sadfasdf', N'asdfasd', N'ssdfasdf', N'asdfasdf', N'asdfasdf', 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Graduation] OFF
SET IDENTITY_INSERT [dbo].[GraduationCategories] ON 

INSERT [dbo].[GraduationCategories] ([id], [arname], [enname], [frname]) VALUES (1, N'asdfsdf', N'asdfasdf', N'asdf')
SET IDENTITY_INSERT [dbo].[GraduationCategories] OFF
SET IDENTITY_INSERT [dbo].[GraduationFiles] ON 

INSERT [dbo].[GraduationFiles] ([id], [filename], [GraduationId], [title], [frtitle]) VALUES (2, N'', 1, N'test1', N'test')
SET IDENTITY_INSERT [dbo].[GraduationFiles] OFF
SET IDENTITY_INSERT [dbo].[Page_Visits] ON 

INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600DF18D6 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E47F6A AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E4AAA3 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (4, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E4B306 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (5, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E60B3C AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (6, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E61E63 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (7, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E69BED AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (8, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E6B10D AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (9, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E6BD34 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (10, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E6C400 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (11, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E6E15C AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (12, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E6F31E AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (13, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600E993B5 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (14, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4B600EA115A AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1002, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00B23356 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1003, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00BF2892 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1004, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00BF585F AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1005, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00BFAFC4 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1006, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00BFD024 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1007, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00BFDC31 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1008, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C00926 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1009, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C04299 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1010, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C0F396 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1011, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C120CF AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1012, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C13890 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1013, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C140A3 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1014, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C15063 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1015, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C164B7 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1016, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C18601 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1017, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C1B36E AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1018, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C1CF62 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1019, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C1D9C7 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1020, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C2A0C6 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1021, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C2D069 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1022, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C33154 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1023, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C347CF AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1024, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C48CD0 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1025, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C4C86B AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1026, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C4E53E AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1027, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C4E8AB AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1028, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C50F33 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1029, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C5383C AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1030, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C53B4C AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1031, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C5445F AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1032, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C57A0B AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1033, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C589AD AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1034, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00C5AE3B AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1035, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00CBA75B AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1036, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00CBE2F6 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1037, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00CE7114 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1038, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FA6040 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1039, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FA6533 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1040, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FAB3B6 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1041, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FAC4C4 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1042, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FB2920 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1043, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FB3138 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1044, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FB3E75 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1045, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FB4951 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1046, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FB691F AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1047, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FB7D4B AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1048, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FC4603 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (1049, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4BD00FC6914 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2002, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4C400B22935 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2003, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4C400B23243 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2004, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00C24A55 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2005, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CB5AD5 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2006, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CB96C0 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2007, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CBCA01 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2008, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CBDA44 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2009, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CBF1BB AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2010, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC0F73 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2011, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC1FB5 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2012, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC2EA0 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2013, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC39E8 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2014, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC451F AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2015, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC53C6 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2016, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC6A4C AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2017, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC8227 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2018, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC8981 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2019, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC9622 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2020, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CC9E09 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2021, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CCA7D0 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2022, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CCB3A8 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2023, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CCC435 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2024, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CCD27E AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2025, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CCDE39 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2026, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CCF04B AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2027, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CD0556 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2028, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CD0D08 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2029, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CD1453 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2030, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CD1C46 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2031, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CD3AD2 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2032, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CD4720 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2033, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CD502A AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2034, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CD56C5 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2035, N'http://localhost:43244/en/dean-word.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CD714A AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2036, N'http://localhost:43244/en/mission.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CD7992 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2037, N'http://localhost:43244/en/mission.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CDD909 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2038, N'http://localhost:43244/en/mission.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CDF682 AS DateTime))
GO
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2039, N'http://localhost:43244/en/history.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00CE09D4 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2040, N'http://localhost:43244/en/history.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DB35A0 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2041, N'http://localhost:43244/en/Organigram.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DB4359 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2042, N'http://localhost:43244/en/history.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DB4A4A AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2043, N'http://localhost:43244/en/history.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DB6CFC AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2044, N'http://localhost:43244/en/Organigram.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DB769C AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2045, N'http://localhost:43244/en/Organigram.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DB95E7 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2046, N'http://localhost:43244/en/photo-gallery.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DBA807 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2047, N'http://localhost:43244/en/Students-affairs.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DBB2F8 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2048, N'http://localhost:43244/en/graduation.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DBC92F AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2049, N'http://localhost:43244/en/orientation.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DBE265 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2050, N'http://localhost:43244/en/education.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DBF0B9 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2051, N'http://localhost:43244/en/continuous-education.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DC1F12 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2052, N'http://localhost:43244/en/calendar.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DC40A1 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2053, N'http://localhost:43244/en/HROrganigram.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DC48DD AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2054, N'http://localhost:43244/en/HROrganigram.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DC57D9 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2055, N'http://localhost:43244/en/academics.aspx?category=Faculty%20Council', N'::1', N'Chrome', CAST(0x0000A4CB00DC756A AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2056, N'http://localhost:43244/en/academics.aspx?category=Profs', N'::1', N'Chrome', CAST(0x0000A4CB00DC8339 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2057, N'http://localhost:43244/en/administratives.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DCBE98 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2058, N'http://localhost:43244/en/careers.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DCC9E3 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2059, N'http://localhost:43244/en/careers.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DCE066 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2060, N'http://localhost:43244/en/services.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DD073E AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2061, N'http://localhost:43244/en/services.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DD10F2 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2062, N'http://localhost:43244/en/activities.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DD209D AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2063, N'http://localhost:43244/en/pharmaclub.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DD2591 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2064, N'http://localhost:43244/en/pharmaclub.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DD3766 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2065, N'http://localhost:43244/en/alumni-events.aspx', N'::1', N'Chrome', CAST(0x0000A4CB00DE7AEA AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (2066, N'http://localhost:43244/en/academics.aspx?category=Faculty%20Council', N'::1', N'Chrome', CAST(0x0000A4CB0106BB7E AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3004, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4E000B8E476 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3005, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4E000BE642B AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3006, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4E000BED599 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3007, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A4E000CF9BF8 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3008, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A51500B01D73 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3009, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500BD3AC3 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3010, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500BD4ECE AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3011, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500BD6314 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3012, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500BD773B AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3013, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500BE177F AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3014, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500BE33C5 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3015, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500BE60C4 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3016, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500BF362D AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3017, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500BFF5C2 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3018, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500C0909A AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3019, N'http://localhost:43244/en/quick-links.aspx', N'::1', N'Chrome', CAST(0x0000A51500C10266 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3020, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500C9E4A0 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3021, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CA244B AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3022, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CA316A AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3023, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CA3C3F AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3024, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CA45C5 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3025, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CA4B54 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3026, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CA8297 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3027, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CA95E6 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3028, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CAA309 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3029, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CAB79E AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3030, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CAC895 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3031, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CB6CCB AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3032, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CBBAF7 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3033, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CD318A AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3034, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CD49CA AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3035, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CD6443 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3036, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CD66C5 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3037, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CD74CB AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3038, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CD9ED0 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3039, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CDAFE6 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3040, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CDD7DC AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3041, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CDF26E AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3042, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CE62E2 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3043, N'http://localhost:43244/en/contact-us.aspx', N'::1', N'Chrome', CAST(0x0000A51500CE9F89 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3044, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CB0C08 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3045, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CB5F56 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3046, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CC7A29 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3047, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CC9307 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3048, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CC9B40 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3049, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CD27EA AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3050, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CD3CD3 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3051, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CD46B2 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3052, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CD530B AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3053, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CD70EB AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3054, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CD7E32 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3055, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CD84D5 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3056, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CDB953 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3057, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CDC489 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3058, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CDD626 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3059, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CDE6D3 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3060, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CDEDD3 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3061, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CDF9DC AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3062, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CE0427 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3063, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CE07DC AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3064, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CE25F5 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3065, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CE3E35 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3066, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CE4210 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3067, N'http://localhost:43244/fr/default.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CE440E AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (3068, N'http://localhost:43244/fr/history.aspx', N'::1', N'Chrome', CAST(0x0000A51A00CE5172 AS DateTime))
INSERT [dbo].[Page_Visits] ([id], [page_name], [ip], [browser], [visite_date]) VALUES (4044, N'http://localhost:43244/en/default.aspx', N'::1', N'Chrome', CAST(0x0000A60800C3DC31 AS DateTime))
SET IDENTITY_INSERT [dbo].[Page_Visits] OFF
SET IDENTITY_INSERT [dbo].[QuickLinks] ON 

INSERT [dbo].[QuickLinks] ([id], [link]) VALUES (1, N'http://demo.soullab.co')
INSERT [dbo].[QuickLinks] ([id], [link]) VALUES (2, N'http://ul.edu.lb')
SET IDENTITY_INSERT [dbo].[QuickLinks] OFF
SET IDENTITY_INSERT [dbo].[speciality] ON 

INSERT [dbo].[speciality] ([id], [enname], [frname], [arname]) VALUES (1, N'asdfasdf', N'asdfasdf', N'asdfasdf')
SET IDENTITY_INSERT [dbo].[speciality] OFF
USE [master]
GO
ALTER DATABASE [PharmacyDB] SET  READ_WRITE 
GO
