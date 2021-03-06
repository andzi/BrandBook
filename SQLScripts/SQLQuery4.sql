USE [brandbook]
GO
/****** Object:  StoredProcedure [dbo].[UserDetails_SaveUserDetails]    Script Date: 02/08/2014 14:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER proc [dbo].[UserDetails_SaveUserDetails]
(
@UserId uniqueidentifier,
@UserDetailsID int output,
@FirsName varchar(50),
@LasName	varchar(50),
@Designation varchar(50),
@DOB date=null,
@Gender varchar(6),
@proPicId int,
@createdDate date
)
as

select @createdDate=GETDATE()

insert into UserDetails(UserId,FirstName,LastName,Designation,DOB,Gender,proPicId,createdDate)
values(@UserId,@FirsName,@LasName,@Designation,@DOB,@Gender,@proPicId,@createdDate)

select @UserDetailsID=@@IDENTITY
