USE [master]
GO
/****** Object:  Database [new]    Script Date: 01/17/2024 14:13:25 ******/
CREATE DATABASE [new] ON  PRIMARY 
( NAME = N'new_Data', FILENAME = N'D:\SQLDATA\new_Data.MDF' , SIZE = 9943616KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'new_Log', FILENAME = N'D:\SQLDATA\new_Log.LDF' , SIZE = 14988608KB , MAXSIZE = 51200000KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [new] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [new].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [new] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [new] SET ANSI_NULLS OFF
GO
ALTER DATABASE [new] SET ANSI_PADDING OFF
GO
ALTER DATABASE [new] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [new] SET ARITHABORT OFF
GO
ALTER DATABASE [new] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [new] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [new] SET AUTO_SHRINK ON
GO
ALTER DATABASE [new] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [new] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [new] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [new] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [new] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [new] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [new] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [new] SET  DISABLE_BROKER
GO
ALTER DATABASE [new] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [new] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [new] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [new] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [new] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [new] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [new] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [new] SET  READ_WRITE
GO
ALTER DATABASE [new] SET RECOVERY FULL
GO
ALTER DATABASE [new] SET  MULTI_USER
GO
ALTER DATABASE [new] SET PAGE_VERIFY TORN_PAGE_DETECTION
GO
ALTER DATABASE [new] SET DB_CHAINING OFF
GO
USE [new]
GO
/****** Object:  User [Гость]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Гость] WITH DEFAULT_SCHEMA=[Гость]
GO
/****** Object:  User [Администратор]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Администратор] WITH DEFAULT_SCHEMA=[Администратор]
GO
/****** Object:  User [Zaknew]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Zaknew] WITH DEFAULT_SCHEMA=[Zaknew]
GO
/****** Object:  User [Yuriy]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Yuriy] WITH DEFAULT_SCHEMA=[Yuriy]
GO
/****** Object:  User [Venera]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Venera] FOR LOGIN [A208CENTER\Venera] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Valentina]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Valentina] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [User]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [User] WITH DEFAULT_SCHEMA=[User]
GO
/****** Object:  User [Tutsy]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Tutsy] FOR LOGIN [A208CENTER\Tutsy] WITH DEFAULT_SCHEMA=[Tutsy]
GO
/****** Object:  User [Tona]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Tona] WITH DEFAULT_SCHEMA=[Tona]
GO
/****** Object:  User [Terminal8]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Terminal8] FOR LOGIN [A208CENTER\Terminal8] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Terminal7]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Terminal7] FOR LOGIN [A208CENTER\Terminal7] WITH DEFAULT_SCHEMA=[Terminal7]
GO
/****** Object:  User [Terminal6]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Terminal6] FOR LOGIN [A208CENTER\Terminal6] WITH DEFAULT_SCHEMA=[Terminal6]
GO
/****** Object:  User [Terminal4]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Terminal4] FOR LOGIN [A208CENTER\Terminal4] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Terminal3]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Terminal3] FOR LOGIN [A208CENTER\Terminal3] WITH DEFAULT_SCHEMA=[Terminal3]
GO
/****** Object:  User [Terminal2]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Terminal2] FOR LOGIN [A208CENTER\Terminal2] WITH DEFAULT_SCHEMA=[Terminal2]
GO
/****** Object:  User [Terminal1]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Terminal1] FOR LOGIN [A208CENTER\Terminal1] WITH DEFAULT_SCHEMA=[Terminal1]
GO
/****** Object:  User [SpravkaK]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [SpravkaK] FOR LOGIN [A208CENTER\SpravkaK] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Spravkac]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Spravkac] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Spravka]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Spravka] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SKLAD\iti]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [SKLAD\iti] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rezeptura]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [rezeptura] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [PupsG]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [PupsG] FOR LOGIN [A208CENTER\PupsG] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Oper2]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Oper2] WITH DEFAULT_SCHEMA=[Oper2]
GO
/****** Object:  User [Oper]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Oper] WITH DEFAULT_SCHEMA=[Oper]
GO
/****** Object:  User [Neptun]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Neptun] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Mars]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Mars] WITH DEFAULT_SCHEMA=[Mars]
GO
/****** Object:  User [MaincompG]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [MaincompG] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Maincomp]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Maincomp] FOR LOGIN [A208CENTER\Maincomp] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [lena3]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [lena3] WITH DEFAULT_SCHEMA=[lena3]
GO
/****** Object:  User [lena1]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [lena1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[lena1]
GO
/****** Object:  User [Lena]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Lena] FOR LOGIN [A208CENTER\Lena] WITH DEFAULT_SCHEMA=[Lena]
GO
/****** Object:  User [le]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [le] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[le]
GO
/****** Object:  User [l]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [l] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[l]
GO
/****** Object:  User [Kassa6]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Kassa6] FOR LOGIN [A208CENTER\Kassa6] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Kassa5]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Kassa5] FOR LOGIN [A208CENTER\Kassa5] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Kassa4]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Kassa4] FOR LOGIN [A208CENTER\Kassa4] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Kassa1]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Kassa1] FOR LOGIN [A208CENTER\Kassa1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Kassa]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Kassa] FOR LOGIN [A208CENTER\Kassa] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Jupiter]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Jupiter] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ita]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [ita] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[db_owner]
GO
/****** Object:  User [Helga]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Helga] FOR LOGIN [A208CENTER\Helga] WITH DEFAULT_SCHEMA=[Helga]
GO
/****** Object:  User [General]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [General] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Gala]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Gala] WITH DEFAULT_SCHEMA=[Gala]
GO
/****** Object:  User [Fitosalon]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Fitosalon] FOR LOGIN [A208CENTER\Fitosalon] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Dasha]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Dasha] WITH DEFAULT_SCHEMA=[Dasha]
GO
/****** Object:  User [Compik]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Compik] WITH DEFAULT_SCHEMA=[Compik]
GO
/****** Object:  User [cash]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [cash] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BUILTIN\Пользователи]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [BUILTIN\Пользователи] FOR LOGIN [BUILTIN\Пользователи]
GO
/****** Object:  User [BUILTIN\Администраторы]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [BUILTIN\Администраторы] FOR LOGIN [BUILTIN\Администраторы]
GO
/****** Object:  User [Antonina]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Antonina] FOR LOGIN [A208CENTER\Antonina] WITH DEFAULT_SCHEMA=[Antonina]
GO
/****** Object:  User [Admin]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [Admin] WITH DEFAULT_SCHEMA=[Admin]
GO
/****** Object:  User [a208center\zakup1]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [a208center\zakup1] FOR LOGIN [A208CENTER\zakup1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [a208center\zakup]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [a208center\zakup] FOR LOGIN [A208CENTER\zakup] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208Center\Vova]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208Center\Vova] FOR LOGIN [A208CENTER\vova] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Valentina]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Valentina] FOR LOGIN [A208CENTER\Valentina] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [a208Center\Uriy]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [a208Center\Uriy] FOR LOGIN [A208CENTER\Uriy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208Center\Uran]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208Center\Uran] FOR LOGIN [A208CENTER\Uran] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Tona]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Tona] FOR LOGIN [A208CENTER\Tona] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Student]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Student] FOR LOGIN [A208CENTER\Student] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\step]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\step] FOR LOGIN [A208CENTER\step] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\SQLServer]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\SQLServer] FOR LOGIN [A208CENTER\SQLServer] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\spravkaz]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\spravkaz] FOR LOGIN [A208CENTER\spravkaz] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Site208]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Site208] FOR LOGIN [A208CENTER\Site208] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\rezeptura]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\rezeptura] FOR LOGIN [A208CENTER\rezeptura] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Renata]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Renata] FOR LOGIN [A208CENTER\Renata] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208Center\Pups]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208Center\Pups] FOR LOGIN [A208CENTER\Pups] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\priemka]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\priemka] FOR LOGIN [A208CENTER\priemka] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Polina]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Polina] FOR LOGIN [A208CENTER\Polina] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Pluton]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Pluton] FOR LOGIN [A208CENTER\Pluton] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\oper2]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\oper2] FOR LOGIN [A208CENTER\oper2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\oper]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\oper] FOR LOGIN [A208CENTER\oper] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Neptun]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Neptun] FOR LOGIN [A208CENTER\Neptun] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Medsprav]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Medsprav] FOR LOGIN [A208CENTER\Medsprav] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Mediz]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Mediz] FOR LOGIN [A208CENTER\Mediz] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Lusy]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Lusy] FOR LOGIN [A208CENTER\Lusy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\larina]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\larina] FOR LOGIN [A208CENTER\larina] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\l.larina]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\l.larina] FOR LOGIN [A208CENTER\l.larina] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\kusnezova]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\kusnezova] FOR LOGIN [A208CENTER\kusnezova] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Kris]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Kris] FOR LOGIN [A208CENTER\Kris] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Katy]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Katy] FOR LOGIN [A208CENTER\Katy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [a208center\kassan]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [a208center\kassan] FOR LOGIN [A208CENTER\KassaN] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Kassa7]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Kassa7] FOR LOGIN [A208CENTER\kassa7] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Kassa3]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Kassa3] FOR LOGIN [A208CENTER\Kassa3] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Kassa2]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Kassa2] FOR LOGIN [A208CENTER\Kassa2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Jupiter]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Jupiter] FOR LOGIN [A208CENTER\Jupiter] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\ital]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\ital] FOR LOGIN [A208CENTER\ital] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Irina]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Irina] FOR LOGIN [A208CENTER\Irina] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208center\HELEN]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208center\HELEN] FOR LOGIN [A208CENTER\Helen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\General]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\General] FOR LOGIN [A208CENTER\General] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Gala]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Gala] FOR LOGIN [A208CENTER\Gala] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\elena]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\elena] FOR LOGIN [A208CENTER\elena] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [a208center\denis]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [a208center\denis] FOR LOGIN [A208CENTER\denis] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\dasha]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\dasha] FOR LOGIN [A208CENTER\dasha] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\compik]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\compik] FOR LOGIN [A208CENTER\compik] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [A208CENTER\Albina]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [A208CENTER\Albina] FOR LOGIN [A208CENTER\Albina] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [3]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [3] WITH DEFAULT_SCHEMA=[3]
GO
/****** Object:  User [2]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [2] WITH DEFAULT_SCHEMA=[2]
GO
/****** Object:  User [1]    Script Date: 01/17/2024 14:13:25 ******/
CREATE USER [1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[1]
GO
/****** Object:  Schema [Гость]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Гость] AUTHORIZATION [Гость]
GO
/****** Object:  Schema [Администратор]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Администратор] AUTHORIZATION [Администратор]
GO
/****** Object:  Schema [Zaknew]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Zaknew] AUTHORIZATION [Zaknew]
GO
/****** Object:  Schema [Yuriy]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Yuriy] AUTHORIZATION [Yuriy]
GO
/****** Object:  Schema [User]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [User] AUTHORIZATION [User]
GO
/****** Object:  Schema [Tutsy]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Tutsy] AUTHORIZATION [Tutsy]
GO
/****** Object:  Schema [Tona]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Tona] AUTHORIZATION [Tona]
GO
/****** Object:  Schema [Terminal7]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Terminal7] AUTHORIZATION [Terminal7]
GO
/****** Object:  Schema [Terminal6]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Terminal6] AUTHORIZATION [Terminal6]
GO
/****** Object:  Schema [Terminal3]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Terminal3] AUTHORIZATION [Terminal3]
GO
/****** Object:  Schema [Terminal2]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Terminal2] AUTHORIZATION [Terminal2]
GO
/****** Object:  Schema [Terminal1]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Terminal1] AUTHORIZATION [Terminal1]
GO
/****** Object:  Schema [REPORTS]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [REPORTS] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [PRICES]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [PRICES] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [otkaz]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [otkaz] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [Oper2]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Oper2] AUTHORIZATION [Oper2]
GO
/****** Object:  Schema [Oper]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Oper] AUTHORIZATION [Oper]
GO
/****** Object:  Schema [Mars]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Mars] AUTHORIZATION [Mars]
GO
/****** Object:  Schema [Maincomp]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Maincomp] AUTHORIZATION [Maincomp]
GO
/****** Object:  Schema [lena3]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [lena3] AUTHORIZATION [lena3]
GO
/****** Object:  Schema [lena1]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [lena1] AUTHORIZATION [lena1]
GO
/****** Object:  Schema [Lena]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Lena] AUTHORIZATION [Lena]
GO
/****** Object:  Schema [le]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [le] AUTHORIZATION [le]
GO
/****** Object:  Schema [l]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [l] AUTHORIZATION [l]
GO
/****** Object:  Schema [Kassa]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Kassa] AUTHORIZATION [Kassa]
GO
/****** Object:  Schema [ita]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [ita] AUTHORIZATION [ita]
GO
/****** Object:  Schema [Helga]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Helga] AUTHORIZATION [Helga]
GO
/****** Object:  Schema [Gala]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Gala] AUTHORIZATION [Gala]
GO
/****** Object:  Schema [Dasha]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Dasha] AUTHORIZATION [Dasha]
GO
/****** Object:  Schema [Compik]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Compik] AUTHORIZATION [Compik]
GO
/****** Object:  Schema [Antonina]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Antonina] AUTHORIZATION [Antonina]
GO
/****** Object:  Schema [Admin]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [Admin] AUTHORIZATION [Admin]
GO
/****** Object:  Schema [ADM]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [ADM] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [3]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [3] AUTHORIZATION [3]
GO
/****** Object:  Schema [2]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [2] AUTHORIZATION [2]
GO
/****** Object:  Schema [1]    Script Date: 01/17/2024 14:13:25 ******/
CREATE SCHEMA [1] AUTHORIZATION [1]
GO
/****** Object:  Table [dbo].[PROD_small1]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROD_small1](
	[LARTICUL] [int] NULL,
	[PARTICUL] [int] NULL,
	[KOEF] [float] NULL,
	[PriceMC] [float] NULL,
	[NameMC] [nvarchar](80) NULL,
	[NameUED] [nvarchar](20) NULL,
	[NameGr] [nvarchar](80) NULL,
	[CountGAL] [float] NULL,
	[TNVED] [nvarchar](20) NULL,
	[ZAPASMIN] [float] NULL,
	[ZAPASMAX] [float] NULL,
	[REMMC] [nvarchar](20) NULL,
	[KOD] [nvarchar](20) NULL,
	[zakup] [float] NULL,
	[Podr] [nvarchar](20) NULL,
	[PriceMCU] [float] NULL,
	[PKolU] [float] NULL,
	[PKol] [float] NULL,
	[Koef1] [nvarchar](10) NULL,
	[Kod1] [nvarchar](10) NULL,
	[Podr1] [nvarchar](10) NULL,
	[KolU1] [float] NULL,
	[Kol1] [float] NULL,
	[Ost] [float] NULL,
	[OstU] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROD_GROUPS]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROD_GROUPS](
	[GR_ID] [int] IDENTITY(1,1) NOT NULL,
	[GR_NAME] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_PROD_GROUPS] PRIMARY KEY NONCLUSTERED 
(
	[GR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROD]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROD](
	[LARTICUL] [int] NULL,
	[PARTICUL] [int] NULL,
	[KOEF] [float] NULL,
	[PriceMC] [float] NULL,
	[NameMC] [nvarchar](80) NULL,
	[NameUED] [nvarchar](20) NULL,
	[NameGR] [nvarchar](80) NULL,
	[CountGAL] [float] NULL,
	[TNVED] [nvarchar](20) NULL,
	[ZAPASMIN] [float] NULL,
	[ZAPASMAX] [float] NULL,
	[REMMC] [nvarchar](20) NULL,
	[KOD] [nvarchar](20) NULL,
	[zakup] [float] NULL,
	[Podr] [nvarchar](20) NULL,
	[PriceMCU] [float] NULL,
	[PKolU] [float] NULL,
	[PKol] [float] NULL,
	[Koef1] [nvarchar](10) NULL,
	[Kod1] [nvarchar](10) NULL,
	[Podr1] [nvarchar](10) NULL,
	[KolU1] [float] NULL,
	[Kol1] [float] NULL,
	[Ost] [float] NULL,
	[OstU] [float] NULL,
	[DataDate] [datetime] NULL,
	[CMC] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRICES_ACTIVE_A16]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRICES_ACTIVE_A16](
	[P_NREC] [bigint] NOT NULL,
	[PRICE_ACTIVE] [money] NOT NULL,
	[DTS_SETPRICE] [datetime] NOT NULL,
	[ISUPDATE] [tinyint] NOT NULL,
	[OENAME] [nvarchar](20) NOT NULL,
	[OEKOEF] [float] NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ид.товара в КИС "Галактика" (KatMC.nRec)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE_A16', @level2type=N'COLUMN',@level2name=N'P_NREC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ключ сеанса "Дата+время изменения цены"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE_A16', @level2type=N'COLUMN',@level2name=N'DTS_SETPRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Флаг обновления записи (1-Запись обновлена / 0-иначе)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE_A16', @level2type=N'COLUMN',@level2name=N'ISUPDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наим.отп.ед.измерения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE_A16', @level2type=N'COLUMN',@level2name=N'OENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Коеф.делимости отп.ед.измерения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE_A16', @level2type=N'COLUMN',@level2name=N'OEKOEF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Прайс-лист по товарам для установки цен на POS-терминалах' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE_A16'
GO
/****** Object:  Table [dbo].[PRICES_REEDIFF]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRICES_REEDIFF](
	[PRU_ID] [int] IDENTITY(1,1) NOT NULL,
	[DTS_SETPRICE] [datetime] NULL,
	[A_ID] [int] NULL,
	[P_NREC] [bigint] NOT NULL,
	[SALDO] [float] NULL,
	[P_PRICE] [money] NULL,
	[A_PRICE] [money] NULL,
	[DELTA_PRICE]  AS ([A_PRICE]-[P_PRICE]),
 CONSTRAINT [PK_PRICES_REEDIFF] PRIMARY KEY CLUSTERED 
(
	[PRU_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PRICES_REEDIFF: DTS_SETPRICE] ON [dbo].[PRICES_REEDIFF] 
(
	[DTS_SETPRICE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ключ сеанса "Дата+время изменения цены"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF', @level2type=N'COLUMN',@level2name=N'DTS_SETPRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Артикул товара' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF', @level2type=N'COLUMN',@level2name=N'A_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ид.товара в КИС "Галактика" (KatMC.nRec)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF', @level2type=N'COLUMN',@level2name=N'P_NREC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Остаток по товару' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF', @level2type=N'COLUMN',@level2name=N'SALDO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Цена на товар по табл. цен на товар (PRICES_ACTIVE.PRICE_ACTIVE)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF', @level2type=N'COLUMN',@level2name=N'P_PRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Цена на артикул по табл. цен на артикул (ARTICLES.P_PRICE)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF', @level2type=N'COLUMN',@level2name=N'A_PRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Разность цен на товар и на артикул' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF', @level2type=N'COLUMN',@level2name=N'DELTA_PRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Реестр изменения цен по сеансам в разрезе товаров и артикулов товаров' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF'
GO
/****** Object:  Table [dbo].[PRICES_FOOTER]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRICES_FOOTER](
	[PF_ID] [int] IDENTITY(1,1) NOT NULL,
	[PF_LEVEL] [int] NULL,
	[PF_HEAD] [nvarchar](50) NULL,
	[PF_NAME] [nvarchar](200) NULL,
 CONSTRAINT [PK_PRICES_FOOTER] PRIMARY KEY CLUSTERED 
(
	[PF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Уровень' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_FOOTER', @level2type=N'COLUMN',@level2name=N'PF_LEVEL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Должность' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_FOOTER', @level2type=N'COLUMN',@level2name=N'PF_HEAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ФИО' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_FOOTER', @level2type=N'COLUMN',@level2name=N'PF_NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Члены комиссии для прейскуранта и его дополнений' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_FOOTER'
GO
/****** Object:  Table [dbo].[PRICES_REEDIFF_A16]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRICES_REEDIFF_A16](
	[PRU_ID] [int] IDENTITY(1,1) NOT NULL,
	[DTS_SETPRICE] [datetime] NULL,
	[A_ID] [int] NULL,
	[P_NREC] [bigint] NOT NULL,
	[SALDO] [float] NULL,
	[P_PRICE] [money] NULL,
	[A_PRICE] [money] NULL,
	[DELTA_PRICE]  AS ([A_PRICE]-[P_PRICE]),
 CONSTRAINT [PK_PRICES_REEDIFF_A16] PRIMARY KEY CLUSTERED 
(
	[PRU_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ключ сеанса "Дата+время изменения цены"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF_A16', @level2type=N'COLUMN',@level2name=N'DTS_SETPRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Артикул товара' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF_A16', @level2type=N'COLUMN',@level2name=N'A_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ид.товара в КИС "Галактика" (KatMC.nRec)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF_A16', @level2type=N'COLUMN',@level2name=N'P_NREC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Остаток по товару' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF_A16', @level2type=N'COLUMN',@level2name=N'SALDO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Цена на товар по табл. цен на товар (PRICES_ACTIVE_A16.PRICE_ACTIVE)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF_A16', @level2type=N'COLUMN',@level2name=N'P_PRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Цена на артикул по табл. цен на артикул (ARTICLES.P_PRICE)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF_A16', @level2type=N'COLUMN',@level2name=N'A_PRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Разность цен на товар и на артикул' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF_A16', @level2type=N'COLUMN',@level2name=N'DELTA_PRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Реестр изменения цен по сеансам в разрезе товаров и артикулов товаров' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEDIFF_A16'
GO
/****** Object:  Table [dbo].[RCP_SOURCES]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCP_SOURCES](
	[RCPS_CODE] [nchar](2) NOT NULL,
	[RCPS_NAME] [nvarchar](255) NULL,
 CONSTRAINT [PK_RCP_SOURCES] PRIMARY KEY NONCLUSTERED 
(
	[RCPS_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RCP_CATEGORIES]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCP_CATEGORIES](
	[RCPC_CODE] [nchar](2) NOT NULL,
	[RCPC_NAME] [nvarchar](255) NULL,
	[RCPC_DISCOUNT] [float] NOT NULL,
 CONSTRAINT [PK_RCP_CATEGORIES] PRIMARY KEY NONCLUSTERED 
(
	[RCPC_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RATE_USER]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RATE_USER](
	[U_ID] [int] IDENTITY(1,1) NOT NULL,
	[S_U] [nvarchar](50) NOT NULL,
	[T_ID] [int] NOT NULL,
 CONSTRAINT [PK_RATE_USER] PRIMARY KEY CLUSTERED 
(
	[U_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RATE]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RATE](
	[R_ID] [int] IDENTITY(1,1) NOT NULL,
	[R_NAME] [nvarchar](50) NOT NULL,
	[R_COURSE] [float] NOT NULL,
 CONSTRAINT [PK_RATE] PRIMARY KEY CLUSTERED 
(
	[R_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROT1]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROT1](
	[PID] [varchar](255) NULL,
	[STIME] [varchar](6) NULL,
	[OPER] [numeric](10, 0) NULL,
	[DEP] [numeric](10, 0) NULL,
	[ARTICUL] [numeric](10, 0) NULL,
	[COUNT] [numeric](10, 6) NULL,
	[PRICE] [numeric](10, 6) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROT]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROT](
	[PID] [varchar](255) NULL,
	[STIME] [varchar](6) NULL,
	[OPER] [numeric](10, 0) NULL,
	[DEP] [numeric](10, 0) NULL,
	[ARTICUL] [numeric](10, 0) NULL,
	[COUNT] [numeric](10, 6) NULL,
	[PRICE] [numeric](10, 6) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCTS_DISCOUNT]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTS_DISCOUNT](
	[PD_ID] [int] IDENTITY(1,1) NOT NULL,
	[P_ID] [int] NOT NULL,
	[PD_FLAG] [int] NOT NULL,
	[PD_DATETIME] [datetime] NOT NULL,
 CONSTRAINT [PK_PRODUCTS_DISCOUNT] PRIMARY KEY NONCLUSTERED 
(
	[PD_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_test]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_test](
	[test] [nvarchar](50) NULL,
	[H_NO] [int] NULL,
	[H_DATE] [datetime] NULL,
	[T_ID] [int] NULL,
	[U_ID] [int] NULL,
	[H_SUM] [int] NULL,
	[H_DISCOUNT] [int] NULL,
	[H_ITEMS] [int] NULL,
	[C_ID] [int] NULL,
	[H_TYPE] [int] NULL,
	[Z_ID] [int] NULL,
	[H_RET] [int] NULL,
	[H_DSUM] [int] NULL,
	[RCP_ID] [int] NULL,
	[H_TIME] [int] NULL,
	[R_COURSE] [float] NULL,
	[R_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table_checks]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_checks](
	[H_ID] [int] NULL,
	[H_NO] [int] NULL,
	[H_DATE] [datetime] NULL,
	[T_ID] [int] NULL,
	[U_ID] [int] NULL,
	[H_SUM] [int] NULL,
	[H_DISCOUNT] [int] NULL,
	[H_ITEMS] [int] NULL,
	[C_ID] [int] NULL,
	[H_TYPE] [int] NULL,
	[Z_ID] [int] NULL,
	[H_RET] [int] NULL,
	[H_DSUM] [int] NULL,
	[RCP_ID] [int] NULL,
	[H_TIME] [int] NULL,
	[R_COURSE] [float] NULL,
	[R_ID] [int] NULL,
	[USER] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[h_id] [int] NULL,
	[c_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t1]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t1](
	[dat] [datetime] NULL,
	[nrec] [bigint] NULL,
	[visible] [char](1) NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[worked] [bit] NULL,
	[cena] [float] NULL,
	[kol] [float] NULL,
 CONSTRAINT [PK_t1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYSPARAMS]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSPARAMS](
	[SP_NAME] [nvarchar](32) NOT NULL,
	[SP_INT] [int] NULL,
	[SP_TID] [int] NOT NULL,
	[SP_STRING] [nvarchar](255) NULL,
	[SP_DATE] [datetime] NULL,
 CONSTRAINT [PK_SYSPARAMS] PRIMARY KEY NONCLUSTERED 
(
	[SP_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP_VES]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SP_VES](
	[ves_id] [int] IDENTITY(1,1) NOT NULL,
	[ves_name] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SP_PROV]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SP_PROV](
	[prov_id] [int] IDENTITY(1,1) NOT NULL,
	[prov_name] [varchar](100) NOT NULL,
	[prov_otdel] [int] NULL,
	[prov_active] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SP_NOTE]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SP_NOTE](
	[note_id] [int] IDENTITY(1,1) NOT NULL,
	[note_name] [varchar](50) NOT NULL,
	[note_level] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SP_FIRM]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP_FIRM](
	[Firm_id] [nvarchar](50) NOT NULL,
	[Firm_NAME] [nvarchar](80) NULL,
	[Firm_ADDR] [nvarchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rezerv]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rezerv](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[a_id] [int] NULL,
	[u_id] [int] NULL,
	[counts] [float] NULL,
	[data] [datetime] NULL,
	[hours] [int] NULL,
	[evaible] [int] NULL,
	[fio] [nvarchar](50) NULL,
 CONSTRAINT [PK_rezerv] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_rezerv] ON [dbo].[rezerv] 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[name] [nvarchar](255) NULL,
	[nrec] [nvarchar](100) NULL,
	[kol] [float] NULL,
	[dat] [datetime] NULL,
	[podr] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRICES_REEUPDATE]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRICES_REEUPDATE](
	[P_NREC] [bigint] NOT NULL,
	[PRICE_ACTIVE] [money] NOT NULL,
	[DTS_SETPRICE] [datetime] NOT NULL,
	[ACTION_FLAG] [int] NOT NULL,
	[OENAME] [nvarchar](20) NOT NULL,
	[OEKOEF] [float] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PRICES_REEUPDATE: DTS_SETPRICE] ON [dbo].[PRICES_REEUPDATE] 
(
	[DTS_SETPRICE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PRICES_REEUPDATE: P_NREC + DTS_SETPRICE] ON [dbo].[PRICES_REEUPDATE] 
(
	[P_NREC] ASC,
	[DTS_SETPRICE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ид.товара в КИС "Галактика" (KatMC.nRec)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE', @level2type=N'COLUMN',@level2name=N'P_NREC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Установленная цена на товар' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE', @level2type=N'COLUMN',@level2name=N'PRICE_ACTIVE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ключ сеанса "Дата+время изменения цены"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE', @level2type=N'COLUMN',@level2name=N'DTS_SETPRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Флаг действия (0-Запись о товаре удалена из прайса/1-Запись по товару добавлена или изменена)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE', @level2type=N'COLUMN',@level2name=N'ACTION_FLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наим.отп.ед.измерения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE', @level2type=N'COLUMN',@level2name=N'OENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Коеф.делимости отп.ед.измерения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE', @level2type=N'COLUMN',@level2name=N'OEKOEF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Протокол изменения цен в прайс-листе' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE'
GO
/****** Object:  Table [dbo].[PRICES_REEUPDATE_A16]    Script Date: 01/17/2024 14:13:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRICES_REEUPDATE_A16](
	[P_NREC] [bigint] NOT NULL,
	[PRICE_ACTIVE] [money] NOT NULL,
	[DTS_SETPRICE] [datetime] NOT NULL,
	[ACTION_FLAG] [int] NOT NULL,
	[OENAME] [nvarchar](20) NOT NULL,
	[OEKOEF] [float] NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ид.товара в КИС "Галактика" (KatMC.nRec)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE_A16', @level2type=N'COLUMN',@level2name=N'P_NREC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Установленная цена на товар' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE_A16', @level2type=N'COLUMN',@level2name=N'PRICE_ACTIVE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ключ сеанса "Дата+время изменения цены"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE_A16', @level2type=N'COLUMN',@level2name=N'DTS_SETPRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Флаг действия (0-Запись о товаре удалена из прайса/1-Запись по товару добавлена или изменена)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE_A16', @level2type=N'COLUMN',@level2name=N'ACTION_FLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наим.отп.ед.измерения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE_A16', @level2type=N'COLUMN',@level2name=N'OENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Коеф.делимости отп.ед.измерения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE_A16', @level2type=N'COLUMN',@level2name=N'OEKOEF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Протокол изменения цен в прайс-листе' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_REEUPDATE_A16'
GO
/****** Object:  StoredProcedure [dbo].[site_katalog_defecture_to_file]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[site_katalog_defecture_to_file]
@path nvarchar(255)
as
begin
	set nocount on;
	declare @Result int ;
	declare @Cmd nvarchar(255) ;  --вызов пакетной выгрузки
		
	--Set @Cmd = N'BCP "EXEC new.dbo.site_katalog_defecture_to_xml' + N'" QUERYOUT "\\A208SQL\OUT\' + @path+N'.XML' + '" -T -c -CACP -S A208SQL'
	--Set @Cmd = N'BCP "EXEC new.dbo.site_katalog_defecture_to_xml' + N'" QUERYOUT "\\A208SQL\OUT\' + @path+N'.XML' + '" -T -c -CUTF-8  -w \\A208SQL\OUT\ \\A208SQL\OUT\' + @path + N'.xml /scs=utf-16 /dcs=utf-8 /replace -S A208SQL'
	Set @Cmd = N'BCP "EXEC new.dbo.site_katalog_defecture_to_xml' + N'" QUERYOUT "\\A208SQL\OUT\' + @path+N'.XML' + N'" -T -c -CUTF-8  -w 
	\\A208SQL\OUT\ \\A208SQL\OUT\' + @path + N'.xml /scs=utf-16 /dcs=utf-8 /replace -S A208SQL'
	

--SELECT @CMD
EXEC @Result = MASTER..XP_CMDSHELL @Cmd	  --выполнение пакетной выгрузки
IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось создать файл', 16,-1)

--Set @Cmd = 	N'E:\UTFconv\UTF_CONVERTER.exe '+ N'\\A208SQL\OUT\' + @path + N'.XML' + N' \\A208SQL\OUT\' + @path+'_ready' + N'.XML'
--Set @Cmd = 	N'E:\UTFconv\UTF_CONVERTER.exe '+ N'\\A208SQL\OUT\' + @path + N'.XML' + N' \\A208SQL\OUT\' + @path+'_ready_'+Convert(nvarchar,getdate(),105)+ N'.XML'
Set @Cmd = 	N'E:\UTFconv\UTF_CONVERTER.exe '+ N'\\A208SQL\OUT\' + @path + N'.XML' + N' \\A208SQL\OUT\' + @path+'_ready'+ N'.XML'
EXEC @Result = MASTER..XP_CMDSHELL @Cmd
IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось сконвертировать файл', 16,-1)


end
GO
/****** Object:  Table [dbo].[site_katalog]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_katalog](
	[IE_XML_ID] [nvarchar](255) NULL,
	[IE_NAME] [nvarchar](255) NOT NULL,
	[IP_PROP67] [nvarchar](255) NOT NULL,
	[IP_PROP69] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_colums]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_colums](
	[IE_XML_ID] [nvarchar](255) NOT NULL,
	[IE_NAME] [nvarchar](255) NOT NULL,
	[IP_PROP67] [nvarchar](255) NOT NULL,
	[IP_PROP69] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[saldomc_arhiv]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saldomc_arhiv](
	[name] [nvarchar](255) NULL,
	[nrec] [nvarchar](50) NULL,
	[kol] [float] NULL,
	[dat] [datetime] NULL,
	[podr] [bigint] NULL,
	[volume] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALDO_SHOWCASE]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALDO_SHOWCASE](
	[SS_ID] [int] IDENTITY(1,1) NOT NULL,
	[P_ID] [int] NULL,
	[SS_OST] [float] NULL,
	[SS_DATE] [datetime] NULL,
 CONSTRAINT [PK_SALDO_SHOWCASE] PRIMARY KEY CLUSTERED 
(
	[SS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[s]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s](
	[name] [nvarchar](100) NULL,
	[nrec] [nvarchar](100) NULL,
	[kol] [float] NULL,
	[dat] [datetime] NULL,
	[podr] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RZKUTPRIH1]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RZKUTPRIH1](
	[NREC] [bigint] NULL,
	[CMC] [bigint] NULL,
	[CPODR] [bigint] NULL,
	[KOL] [float] NULL,
	[KOLFREE] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RZKPR1]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RZKPR1](
	[NREC] [nvarchar](20) NULL,
	[ATL_LASTDA] [smalldatetime] NULL,
	[ATL_LASTTI] [nvarchar](5) NULL,
	[ATL_LASTUS] [nvarchar](20) NULL,
	[ATL_ORIGIN] [float] NULL,
	[LASTUSER] [nvarchar](20) NULL,
	[LASTTIME] [nvarchar](5) NULL,
	[LASTDATE] [smalldatetime] NULL,
	[FILIALNO] [float] NULL,
	[CMC] [nvarchar](20) NULL,
	[NOMER] [nvarchar](20) NULL,
	[DDOC] [smalldatetime] NULL,
	[CORG] [nvarchar](20) NULL,
	[TYPEPRIH] [float] NULL,
	[CSOPR] [nvarchar](20) NULL,
	[CSPDOC] [nvarchar](20) NULL,
	[CKUTRASH] [nvarchar](20) NULL,
	[CPODRFROM] [nvarchar](20) NULL,
	[CMOLFROM] [nvarchar](20) NULL,
	[CPARTYFROM] [nvarchar](20) NULL,
	[CPODR] [nvarchar](20) NULL,
	[CMOL] [nvarchar](20) NULL,
	[CPARTY] [nvarchar](20) NULL,
	[CGROUPMC] [nvarchar](20) NULL,
	[ZKPRICE] [float] NULL,
	[FPRICE] [float] NULL,
	[CVALUT] [nvarchar](20) NULL,
	[VCURSE] [float] NULL,
	[PRICE] [float] NULL,
	[VPRICE] [float] NULL,
	[CVAL] [nvarchar](20) NULL,
	[RPRICE] [float] NULL,
	[SNACEN] [float] NULL,
	[PNACEN] [float] NULL,
	[SNALOG] [float] NULL,
	[PPRICE] [float] NULL,
	[KOL] [float] NULL,
	[COTPED] [nvarchar](20) NULL,
	[OSTATOK] [float] NULL,
	[SELLPROTEC] [bit] NOT NULL,
	[CANEDITED] [bit] NOT NULL,
	[BARCODE] [nvarchar](20) NULL,
	[DATECODE] [smalldatetime] NULL,
	[TIMECODE] [nvarchar](5) NULL,
	[NAMECODE] [nvarchar](20) NULL,
	[NPP] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_pereh]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_pereh](
	[cmc_skl] [nvarchar](25) NULL,
	[bk_skl] [nvarchar](14) NULL,
	[bk_u] [nvarchar](14) NULL,
	[name_skl] [nvarchar](80) NULL,
	[proiz_skl] [nvarchar](80) NULL,
	[cmc_u] [nvarchar](25) NULL,
	[name_u] [nvarchar](80) NULL,
	[proiz_u] [nvarchar](80) NULL,
	[koef] [real] NULL,
	[no] [bit] NOT NULL,
	[uched] [nvarchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_PER]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_PER](
	[CMC_SKL] [nvarchar](25) NULL,
	[BK_SKL] [nvarchar](14) NULL,
	[BK_U] [nvarchar](14) NULL,
	[NAME_SKL] [nvarchar](80) NULL,
	[PROIZ_SKL] [nvarchar](80) NULL,
	[CMC_U] [nvarchar](25) NULL,
	[NAME_U] [nvarchar](80) NULL,
	[PROIZ_U] [nvarchar](80) NULL,
	[KOEF] [float] NULL,
	[NO] [bit] NOT NULL,
	[UCHED] [nvarchar](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[U_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_NAME] [nvarchar](32) NOT NULL,
	[U_PWD] [nvarchar](255) NULL,
	[U_FULLNAME] [nvarchar](255) NULL,
	[U_OTDEL] [int] NULL,
	[U_ACTIVE] [int] NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY NONCLUSTERED 
(
	[U_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_USERS: U_NAME] ON [dbo].[USERS] 
(
	[U_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[site_katalog_doc_to_file]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[site_katalog_doc_to_file]
@path nvarchar(255)
as
begin
	set nocount on;
	declare @Result int ;
	declare @Cmd nvarchar(255) ;  --вызов пакетной выгрузки
		
	--Set @Cmd = N'BCP "EXEC new.dbo.site_katalog_doc_to_xml' + N'" QUERYOUT "\\A208SQL\OUT\' + @path+N'.XML' + '" -T -c -CACP -S A208SQL'
	--Set @Cmd = N'BCP "EXEC new.dbo.site_katalog_doc_to_xml' + N'" QUERYOUT "\\A208SQL\OUT\' + @path+N'.XML' + '" -T -c -CUTF-8  -w \\A208SQL\OUT\ \\A208SQL\OUT\' + @path + N'.xml /scs=utf-16 /dcs=utf-8 /replace -S A208SQL'
	Set @Cmd = N'BCP "EXEC new.dbo.site_katalog_doc_to_xml' + N'" QUERYOUT "\\A208SQL\OUT\' + @path+N'.XML' + N'" -T -c -CUTF-8  -w 
	\\A208SQL\OUT\ \\A208SQL\OUT\' + @path + N'.xml /scs=utf-16 /dcs=utf-8 /replace -S A208SQL'
	

--SELECT @CMD
EXEC @Result = MASTER..XP_CMDSHELL @Cmd	  --выполнение пакетной выгрузки
IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось создать файл', 16,-1)

--Set @Cmd = 	N'E:\UTFconv\UTF_CONVERTER.exe '+ N'\\A208SQL\OUT\' + @path + N'.XML' + N' \\A208SQL\OUT\' + @path+'_ready' + N'.XML'
--Set @Cmd = 	N'E:\UTFconv\UTF_CONVERTER.exe '+ N'\\A208SQL\OUT\' + @path + N'.XML' + N' \\A208SQL\OUT\' + @path+'_ready_'+Convert(nvarchar,getdate(),105)+ N'.XML'
Set @Cmd = 	N'E:\UTFconv\UTF_CONVERTER.exe '+ N'\\A208SQL\OUT\' + @path + N'.XML' + N' \\A208SQL\OUT\' + @path+'_ready'+ N'.XML'
EXEC @Result = MASTER..XP_CMDSHELL @Cmd
IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось сконвертировать файл', 16,-1)


end
GO
/****** Object:  Table [dbo].[TEST1]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[F1] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[UP_DELETE_RZKUTPRIH]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UP_DELETE_RZKUTPRIH]
AS 
	SET NOCOUNT ON
	DELETE FROM RZKUTPRIH
GO
/****** Object:  StoredProcedure [dbo].[UP_INSERT_SALDOMC]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[UP_INSERT_SALDOMC]
	@NAME NVARCHAR(255),
	@NREC BIGINT,
	@KOL FLOAT,
	@DAT DATETIME,
	@PODR BIGINT
AS 
	SET NOCOUNT ON
	
	INSERT INTO SALDOMC ([NAME],NREC,KOL,DAT,PODR)
	VALUES (@NAME,@NREC,@KOL,@DAT,@PODR)
GO
/****** Object:  StoredProcedure [dbo].[UP_INSERT_RZKUTPRIH]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[UP_INSERT_RZKUTPRIH]
	@NREC BIGINT,
	@CMC BIGINT,
	@CPODR BIGINT,
	@KOL FLOAT
AS 
	SET NOCOUNT ON
	
	INSERT INTO RZKUTPRIH (NREC,CMC,CPODR,KOL)
	VALUES (@NREC,@CMC,@CPODR,@KOL)
GO
/****** Object:  Table [dbo].[ZAKAZ]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZAKAZ](
	[Z_ID] [int] IDENTITY(1,1) NOT NULL,
	[Z_NAME] [varchar](100) NOT NULL,
	[Z_MNAME] [varchar](100) NOT NULL,
	[F_ID] [int] NULL,
	[Z_PRICE] [float] NULL,
	[Z_KOL] [float] NULL,
	[ves_id] [int] NULL,
	[Z_DATE_ZAKAZ] [datetime] NOT NULL,
	[Z_NOTE] [varchar](100) NULL,
	[Z_DATE_FACT] [datetime] NULL,
	[U_ID_ZAKAZ] [int] NULL,
	[U_ID_FACT] [int] NULL,
	[H_ID_PREDOPLATA] [int] NULL,
	[H_ID_VOZVRAT] [int] NULL,
	[H_ID_PROD] [int] NULL,
	[Z_FIO] [varchar](100) NULL,
	[Z_TEL] [varchar](50) NULL,
 CONSTRAINT [PK_ZAKAZ] PRIMARY KEY CLUSTERED 
(
	[Z_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Z_REPORTS]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Z_REPORTS](
	[Z_ID] [int] IDENTITY(1,1) NOT NULL,
	[T_ID] [int] NOT NULL,
	[Z_NO] [int] NOT NULL,
	[Z_DATE] [datetime] NULL,
	[Z_SUMA] [int] NOT NULL,
	[Z_SUMB] [int] NOT NULL,
	[H_ID] [int] NULL,
	[R_COURSE] [float] NULL,
	[R_ID] [int] NULL,
 CONSTRAINT [PK_Z_REPORTS] PRIMARY KEY NONCLUSTERED 
(
	[Z_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WORK_BUH_PROD_del]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WORK_BUH_PROD_del](
	[WB_ID] [int] IDENTITY(1,1) NOT NULL,
	[WB_DATE] [datetime] NULL,
	[T_ID] [int] NULL,
	[H_TYPE] [int] NULL,
	[WB_TOTAL_RASH] [float] NULL,
	[WB_TOTAL_ROZN] [float] NULL,
	[WB_TOTAL_ZAK] [float] NULL,
	[WB_TOTAL_ZAV] [float] NULL,
	[WB_NDS_RASH] [float] NULL,
	[WB_NDS_ROZN] [float] NULL,
	[WB_NDS_ZAK] [float] NULL,
	[WB_NDS_ZAV] [float] NULL,
	[WB_TOTAL_Z_RASH] [float] NULL,
	[WB_TOTAL_Z_DISCOUNT] [float] NULL,
	[WB_NDS_Z_RASH] [float] NULL,
	[WB_VOZV_RASH] [float] NULL,
	[WB_VOZV_ROZN] [float] NULL,
	[WB_VOZV_Z_DISCOUNT] [float] NULL,
	[WB_VOZV_Z_RASH] [float] NULL,
 CONSTRAINT [PK_WORK_BUH_PROD] PRIMARY KEY CLUSTERED 
(
	[WB_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CITY]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITY](
	[CITY_NAME] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVENT_RESULT]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENT_RESULT](
	[IRS_ID] [int] IDENTITY(1,1) NOT NULL,
	[INV_ID] [int] NOT NULL,
	[A_ID] [int] NOT NULL,
	[BR_NO] [int] NOT NULL,
	[IRS_FQTY] [float] NOT NULL,
	[IRS_SQTY] [nvarchar](50) NULL,
	[IRS_LOC] [nvarchar](50) NULL,
	[INV_MT] [bit] NULL,
	[INV_A1] [int] NULL,
	[INV_A2] [int] NULL,
	[IRS_TIMESTAMP] [datetime] NOT NULL,
	[IRS_FQTY_old] [float] NULL,
	[IRS_SQTY_old] [nvarchar](50) NULL,
	[IRS_CHANGE] [bit] NULL,
 CONSTRAINT [PK_INVENT_RESULT] PRIMARY KEY NONCLUSTERED 
(
	[IRS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_INVENT_RESULT_A_ID] ON [dbo].[INVENT_RESULT] 
(
	[A_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_INVENT_RESULT_INV_ID] ON [dbo].[INVENT_RESULT] 
(
	[INV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INTERACTION]    Script Date: 01/17/2024 14:13:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTERACTION](
	[I_ID] [int] IDENTITY(1,1) NOT NULL,
	[P_ATC] [nvarchar](50) NULL,
	[I_FOOD] [nvarchar](500) NULL,
	[I_DRUGS] [nvarchar](500) NULL,
 CONSTRAINT [PK_INTERACTION] PRIMARY KEY CLUSTERED 
(
	[I_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[if3_match]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------
create function [dbo].[if3_match] 
(@addr nvarchar, @mt bit, @a1 int, @a2 int)  
returns bit
as  
begin		
 declare @ret bit;
 set @ret = 0;
 return @ret;
end
GO
/****** Object:  Table [dbo].[INVENTS]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTS](
	[INV_ID] [int] IDENTITY(1,1) NOT NULL,
	[INV_CODE] [nvarchar](50) NOT NULL,
	[INV_DATE] [datetime] NOT NULL,
	[INV_CLOSED] [bit] NOT NULL,
	[INV_ADDRESS] [nvarchar](50) NULL,
	[INV_OPEN] [bit] NOT NULL,
	[INV_MT] [bit] NULL,
	[INV_A1] [int] NULL,
	[INV_A2] [int] NULL,
 CONSTRAINT [PK_INVENTS] PRIMARY KEY NONCLUSTERED 
(
	[INV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GZ]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GZ](
	[GZ_CODE] [nvarchar](50) NOT NULL,
	[GZ_NAME] [nvarchar](256) NULL,
	[GZ_TNV] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groupmc]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groupmc](
	[NREC] [nvarchar](20) NULL,
	[ATL_LASTDA] [smalldatetime] NULL,
	[ATL_LASTTI] [nvarchar](5) NULL,
	[ATL_LASTUS] [nvarchar](20) NULL,
	[ATL_ORIGIN] [float] NULL,
	[LASTUSER] [nvarchar](20) NULL,
	[LASTTIME] [nvarchar](5) NULL,
	[LASTDATE] [smalldatetime] NULL,
	[FILIALNO] [float] NULL,
	[KOD] [nvarchar](20) NULL,
	[NAME] [nvarchar](80) NULL,
	[PROCNAC] [float] NULL,
	[CTYPE] [nvarchar](20) NULL,
	[FLAGSUM] [smallint] NULL,
	[FLAGLIST] [bit] NOT NULL,
	[CKASEB] [nvarchar](20) NULL,
	[CKAELEM] [nvarchar](20) NULL,
	[CED] [nvarchar](20) NULL,
	[LKOD] [float] NULL,
	[MAXON] [float] NULL,
	[MAXRN] [float] NULL,
	[MAXORN] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grnal]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grnal](
	[NREC] [nvarchar](20) NULL,
	[ATL_LASTDA] [smalldatetime] NULL,
	[ATL_LASTTI] [nvarchar](5) NULL,
	[ATL_LASTUS] [nvarchar](20) NULL,
	[ATL_ORIGIN] [float] NULL,
	[LASTUSER] [nvarchar](20) NULL,
	[LASTTIME] [nvarchar](5) NULL,
	[LASTDATE] [smalldatetime] NULL,
	[FILIALNO] [float] NULL,
	[KOD] [nvarchar](20) NULL,
	[NAME] [nvarchar](80) NULL,
	[TIP] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXCHECKS]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXCHECKS](
	[H_ID] [int] IDENTITY(1,1) NOT NULL,
	[H_NO]  AS ((10000)*[H_TYPE]+[H_ID]),
	[H_DATE] [datetime] NOT NULL,
	[T_ID] [int] NOT NULL,
	[U_ID] [int] NOT NULL,
	[H_SUM] [int] NOT NULL,
	[H_DISCOUNT] [int] NOT NULL,
	[H_ITEMS] [int] NOT NULL,
	[C_ID] [int] NULL,
	[H_TYPE] [int] NULL,
	[Z_ID] [int] NULL,
	[H_RET] [int] NULL,
	[H_DSUM] [int] NULL,
	[RCP_ID] [int] NULL,
 CONSTRAINT [PK_EXCHECKS] PRIMARY KEY NONCLUSTERED 
(
	[H_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номер иформационного документа' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EXCHECKS', @level2type=N'COLUMN',@level2name=N'H_NO'
GO
/****** Object:  Table [dbo].[EXCHECK_TYPES]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXCHECK_TYPES](
	[TYPE] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Тип информационного документа' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EXCHECK_TYPES', @level2type=N'COLUMN',@level2name=N'TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наименование информационного документа' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EXCHECK_TYPES', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Типы информационных документов' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EXCHECK_TYPES'
GO
/****** Object:  Table [dbo].[ENDED_BALANCE]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENDED_BALANCE](
	[EB_ID] [int] IDENTITY(1,1) NOT NULL,
	[P_ID] [int] NOT NULL,
	[P_NREC] [bigint] NULL,
	[EB_DATE] [datetime] NOT NULL,
	[EB_KOL] [float] NOT NULL,
	[EB_WORKED] [bit] NOT NULL,
 CONSTRAINT [PK_ENDED_BALANCE] PRIMARY KEY CLUSTERED 
(
	[EB_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCUMENTS]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENTS](
	[D_ID] [int] NOT NULL,
	[D_DATE] [datetime] NOT NULL,
	[D_PARENT] [int] NULL,
	[D_MEMO] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCTOR_CODES]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCTOR_CODES](
	[DC_ID] [int] IDENTITY(1,1) NOT NULL,
	[DC_CODE] [nvarchar](50) NULL,
 CONSTRAINT [PK_DOCTOR_CODES] PRIMARY KEY CLUSTERED 
(
	[DC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOC_DETAILS]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_DETAILS](
	[D_ID] [int] NOT NULL,
	[P_NREC] [bigint] NOT NULL,
	[T_QTYU] [float] NOT NULL,
	[T_ID] [int] NOT NULL,
	[T_PARENT] [int] NULL,
	[T_RZKUTPRIH] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[diskont]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diskont](
	[nom] [nvarchar](50) NOT NULL,
	[fio] [nvarchar](50) NOT NULL,
	[data] [smalldatetime] NULL,
	[telef] [nvarchar](50) NULL,
	[addr_rab] [nvarchar](50) NULL,
	[prim] [nvarchar](50) NULL,
	[priznak] [int] NULL,
	[index] [int] NULL,
	[gorod] [nvarchar](50) NULL,
	[addr_dom] [nvarchar](50) NULL,
	[data_poluch] [datetime] NULL,
	[apt] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_SP]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_SP](
	[LOG_ID] [int] IDENTITY(1,1) NOT NULL,
	[SP_NAME] [nvarchar](255) NULL,
	[DTS_START] [datetime] NOT NULL,
	[DTS_END] [datetime] NULL,
	[DTS_LEN]  AS (datediff(second,[DTS_START],[DTS_END])),
	[LOG_USER] [nvarchar](255) NULL,
 CONSTRAINT [PK_LOG_SP] PRIMARY KEY CLUSTERED 
(
	[LOG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Имя хранимой процедуры' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOG_SP', @level2type=N'COLUMN',@level2name=N'SP_NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата+Время старта хранимой процедуры' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOG_SP', @level2type=N'COLUMN',@level2name=N'DTS_START'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата+Время окончания выполнения хранимой процедуры' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOG_SP', @level2type=N'COLUMN',@level2name=N'DTS_END'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Продолжительность выполнения (В секундах) хранимой процедуры' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOG_SP', @level2type=N'COLUMN',@level2name=N'DTS_LEN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Пользователь, от имени которого запущена на выполнение хранимая процедура' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOG_SP', @level2type=N'COLUMN',@level2name=N'LOG_USER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Протокол выполнения хранимых процедур' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOG_SP'
GO
/****** Object:  Table [dbo].[listgood]    Script Date: 01/17/2024 14:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listgood](
	[NREC] [nvarchar](20) NULL,
	[ATL_LASTDA] [smalldatetime] NULL,
	[ATL_LASTTI] [nvarchar](5) NULL,
	[ATL_LASTUS] [nvarchar](20) NULL,
	[ATL_ORIGIN] [float] NULL,
	[LASTUSER] [nvarchar](20) NULL,
	[LASTTIME] [nvarchar](5) NULL,
	[LASTDATE] [smalldatetime] NULL,
	[FILIALNO] [float] NULL,
	[ARTICUL] [float] NULL,
	[NAMEGOODS] [nvarchar](80) NULL,
	[NNUMBER] [nvarchar](20) NULL,
	[CMC] [nvarchar](20) NULL,
	[NAMEED] [nvarchar](20) NULL,
	[BARCODE] [nvarchar](20) NULL,
	[COTPED] [nvarchar](20) NULL,
	[PRICE] [float] NULL,
	[KOL] [float] NULL,
	[DISKRET] [float] NULL,
	[CPODR] [nvarchar](20) NULL,
	[CMOL] [nvarchar](20) NULL,
	[C1] [nvarchar](20) NULL,
	[WEXT] [float] NULL,
	[D1] [smalldatetime] NULL,
	[NPP] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_ARTICULS]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[VW_ARTICULS]
AS

SELECT
    Articul as Articul,
    sum(Kol) as CountALL

  FROM  [NEWDBF]...[ListGood]

WHERE 	cpodr like '%4611919881864392974%' or cpodr like '%4611693923140645959%' 
GROUP BY Articul
HAVING sum(Kol)>0
GO
/****** Object:  Table [dbo].[konkurent]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[konkurent](
	[nrec] [bigint] NOT NULL,
	[cena] [float] NULL,
	[optima] [float] NULL,
	[anna] [float] NULL,
	[a222] [float] NULL,
	[dat] [datetime] NULL,
	[prim] [varchar](150) NULL,
	[36] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[katmcn]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[katmcn](
	[NREC] [nvarchar](20) NULL,
	[ATL_LASTDA] [smalldatetime] NULL,
	[ATL_LASTTI] [nvarchar](5) NULL,
	[ATL_LASTUS] [nvarchar](20) NULL,
	[ATL_ORIGIN] [float] NULL,
	[LASTUSER] [nvarchar](20) NULL,
	[LASTTIME] [nvarchar](5) NULL,
	[LASTDATE] [smalldatetime] NULL,
	[FILIALNO] [float] NULL,
	[NAME] [nvarchar](80) NULL,
	[OBOZN] [nvarchar](50) NULL,
	[BARKOD] [nvarchar](30) NULL,
	[BARKOD2] [nvarchar](30) NULL,
	[REMMC] [nvarchar](50) NULL,
	[CGROUPMC] [nvarchar](20) NULL,
	[KGROUPMC] [nvarchar](20) NULL,
	[TNVED] [nvarchar](20) NULL,
	[CED] [nvarchar](20) NULL,
	[CMASED] [nvarchar](20) NULL,
	[MASSA] [float] NULL,
	[MTARA] [float] NULL,
	[SIZEX] [float] NULL,
	[SIZEY] [float] NULL,
	[SIZEZ] [float] NULL,
	[VOLUME] [float] NULL,
	[CRESHR] [nvarchar](20) NULL,
	[CLASSGR] [float] NULL,
	[ZAPASMIN] [float] NULL,
	[ZAPASMAX] [float] NULL,
	[NORMUB] [float] NULL,
	[PERCENTN] [float] NULL,
	[CTYPE] [nvarchar](20) NULL,
	[CTECH] [nvarchar](20) NULL,
	[PREUTIL] [bit] NOT NULL,
	[DIVIDE] [float] NULL,
	[BASEDSE] [nvarchar](20) NULL,
	[CDEP] [nvarchar](20) NULL,
	[PRICEPU] [float] NULL,
	[CMCMAT] [nvarchar](20) NULL,
	[RET1] [nvarchar](20) NULL,
	[RET2] [nvarchar](20) NULL,
	[PRIOR] [float] NULL,
	[SALE] [float] NULL,
	[CENAMC] [float] NULL,
	[MAXPROCN] [float] NULL,
	[CGRNAL] [nvarchar](20) NULL,
	[OKDP] [nvarchar](20) NULL,
	[KOMPLEKT] [float] NULL,
	[NALPROD] [float] NULL,
	[MAXON] [float] NULL,
	[MAXRN] [float] NULL,
	[MAXORN] [float] NULL,
	[COKP] [nvarchar](20) NULL,
	[KOLDEF] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[katmc]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[katmc](
	[NREC] [nvarchar](20) NULL,
	[ATL_LASTDA] [smalldatetime] NULL,
	[ATL_LASTTI] [nvarchar](5) NULL,
	[ATL_LASTUS] [nvarchar](20) NULL,
	[ATL_ORIGIN] [float] NULL,
	[LASTUSER] [nvarchar](20) NULL,
	[LASTTIME] [nvarchar](5) NULL,
	[LASTDATE] [smalldatetime] NULL,
	[FILIALNO] [float] NULL,
	[NAME] [nvarchar](80) NULL,
	[OBOZN] [nvarchar](50) NULL,
	[BARKOD] [nvarchar](30) NULL,
	[BARKOD2] [nvarchar](30) NULL,
	[REMMC] [nvarchar](50) NULL,
	[CGROUPMC] [nvarchar](20) NULL,
	[KGROUPMC] [nvarchar](20) NULL,
	[TNVED] [nvarchar](20) NULL,
	[CED] [nvarchar](20) NULL,
	[CMASED] [nvarchar](20) NULL,
	[MASSA] [float] NULL,
	[MTARA] [float] NULL,
	[SIZEX] [float] NULL,
	[SIZEY] [float] NULL,
	[SIZEZ] [float] NULL,
	[VOLUME] [float] NULL,
	[CRESHR] [nvarchar](20) NULL,
	[CLASSGR] [float] NULL,
	[ZAPASMIN] [float] NULL,
	[ZAPASMAX] [float] NULL,
	[NORMUB] [float] NULL,
	[PERCENTN] [float] NULL,
	[CTYPE] [nvarchar](20) NULL,
	[CTECH] [nvarchar](20) NULL,
	[PREUTIL] [bit] NOT NULL,
	[DIVIDE] [float] NULL,
	[BASEDSE] [nvarchar](20) NULL,
	[CDEP] [nvarchar](20) NULL,
	[PRICEPU] [float] NULL,
	[CMCMAT] [nvarchar](20) NULL,
	[RET1] [nvarchar](20) NULL,
	[RET2] [nvarchar](20) NULL,
	[PRIOR] [float] NULL,
	[SALE] [float] NULL,
	[CENAMC] [float] NULL,
	[MAXPROCN] [float] NULL,
	[CGRNAL] [nvarchar](20) NULL,
	[OKDP] [nvarchar](20) NULL,
	[KOMPLEKT] [float] NULL,
	[NALPROD] [float] NULL,
	[MAXON] [float] NULL,
	[MAXRN] [float] NULL,
	[MAXORN] [float] NULL,
	[COKP] [nvarchar](20) NULL,
	[KOLDEF] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kated]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kated](
	[NREC] [nvarchar](20) NULL,
	[ATL_LASTDA] [smalldatetime] NULL,
	[ATL_LASTTI] [nvarchar](5) NULL,
	[ATL_LASTUS] [nvarchar](20) NULL,
	[ATL_ORIGIN] [float] NULL,
	[LASTUSER] [nvarchar](20) NULL,
	[LASTTIME] [nvarchar](5) NULL,
	[LASTDATE] [smalldatetime] NULL,
	[FILIALNO] [float] NULL,
	[NAME] [nvarchar](20) NULL,
	[DISKRET] [float] NULL,
	[ABBR] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[katalog_site_output]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Кащенко Т.С.
-- Create date: 2017-09-06
-- Description:	Вывод каталога для сайта

-- EXEC [dbo].[katalog_site_output]
-- =============================================
CREATE procedure [dbo].[katalog_site_output]
as
begin
	set nocount on;
	SET LANGUAGE RUSSIAN;  --Нужно если начинаются проблемы с кодировкой кириллицы	
-- каталог_сайт
DECLARE @Result int ;
DECLARE @Cmd nvarchar(255);  --вызов пакетной выгрузки
	
Set @Cmd = N'BCP "EXEC new.dbo.katalog_site_itog" QUERYOUT "C:\OUT\price_availeble.csv" -T -k -c -t; -CUTF8'
	
EXEC @Result = MASTER..XP_CMDSHELL @Cmd	  --выполнение пакетной выгрузки
IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось создать файл сайт.csv', 16,-1)

END
GO
/****** Object:  Table [dbo].[PRICES_ACTIVE]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRICES_ACTIVE](
	[P_NREC] [bigint] NOT NULL,
	[PRICE_ACTIVE] [money] NOT NULL,
	[DTS_SETPRICE] [datetime] NOT NULL,
	[ISUPDATE] [tinyint] NOT NULL,
	[OENAME] [nvarchar](20) NOT NULL,
	[OEKOEF] [float] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PRICES_ACTIVE: DTS_SETPRICE] ON [dbo].[PRICES_ACTIVE] 
(
	[DTS_SETPRICE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PRICES_ACTIVE: P_NREC] ON [dbo].[PRICES_ACTIVE] 
(
	[P_NREC] ASC
)
INCLUDE ( [PRICE_ACTIVE]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ид.товара в КИС "Галактика" (KatMC.nRec)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE', @level2type=N'COLUMN',@level2name=N'P_NREC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Действующая цена на товар' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE', @level2type=N'COLUMN',@level2name=N'PRICE_ACTIVE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ключ сеанса "Дата+время изменения цены"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE', @level2type=N'COLUMN',@level2name=N'DTS_SETPRICE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Флаг обновления записи (1-Запись обновлена / 0-иначе)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE', @level2type=N'COLUMN',@level2name=N'ISUPDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наим.отп.ед.измерения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE', @level2type=N'COLUMN',@level2name=N'OENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Коеф.делимости отп.ед.измерения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE', @level2type=N'COLUMN',@level2name=N'OEKOEF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Прайс-лист по товарам для установки цен на POS-терминалах' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRICES_ACTIVE'
GO
/****** Object:  Table [dbo].[PRICES_A16]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRICES_A16](
	[NREC] [bigint] NOT NULL,
	[ATL_LASTDATE] [datetime] NULL,
	[ATL_LASTTIME] [datetime] NULL,
	[ATL_LASTUSER] [bigint] NULL,
	[ATL_ORIGINOFFICE] [smallint] NULL,
	[LASTUSER] [varchar](21) NULL,
	[LASTTIME] [datetime] NULL,
	[LASTDATE] [datetime] NULL,
	[FILIALNO] [int] NULL,
	[CKLPRICE] [bigint] NULL,
	[CTHING] [bigint] NULL,
	[TIP] [smallint] NULL,
	[NAME] [varchar](81) NULL,
	[BARKOD] [varchar](26) NULL,
	[BAROTP] [varchar](26) NULL,
	[DISKRET] [smallint] NULL,
	[PRICE] [float] NULL,
	[CVAL] [bigint] NULL,
	[SUMVAL] [float] NULL,
	[DFORM] [datetime] NULL,
	[PRAVT] [smallint] NULL,
	[COTPED] [bigint] NULL,
	[GARANT] [float] NULL,
	[DOPHAR] [varchar](81) NULL,
	[CGROUPMC] [bigint] NULL,
	[KOD] [varchar](21) NULL,
	[PRSORT] [smallint] NULL,
	[CPARTY] [bigint] NULL,
	[NPARTY] [varchar](81) NULL,
	[SRPRICE] [float] NULL,
	[SRVPRICE] [float] NULL,
	[CGRUSL] [bigint] NULL,
 CONSTRAINT [PK__PRICES_A16__NREC] PRIMARY KEY NONCLUSTERED 
(
	[NREC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRICES]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRICES](
	[NREC] [bigint] NOT NULL,
	[ATL_LASTDATE] [datetime] NULL,
	[ATL_LASTTIME] [datetime] NULL,
	[ATL_LASTUSER] [bigint] NULL,
	[ATL_ORIGINOFFICE] [smallint] NULL,
	[LASTUSER] [varchar](21) NULL,
	[LASTTIME] [datetime] NULL,
	[LASTDATE] [datetime] NULL,
	[FILIALNO] [int] NULL,
	[CKLPRICE] [bigint] NULL,
	[CTHING] [bigint] NULL,
	[TIP] [smallint] NULL,
	[NAME] [varchar](81) NULL,
	[BARKOD] [varchar](26) NULL,
	[BAROTP] [varchar](26) NULL,
	[DISKRET] [smallint] NULL,
	[PRICE] [float] NULL,
	[CVAL] [bigint] NULL,
	[SUMVAL] [float] NULL,
	[DFORM] [datetime] NULL,
	[PRAVT] [smallint] NULL,
	[COTPED] [bigint] NULL,
	[GARANT] [float] NULL,
	[DOPHAR] [varchar](81) NULL,
	[CGROUPMC] [bigint] NULL,
	[KOD] [varchar](21) NULL,
	[PRSORT] [smallint] NULL,
	[CPARTY] [bigint] NULL,
	[NPARTY] [varchar](81) NULL,
	[SRPRICE] [float] NULL,
	[SRVPRICE] [float] NULL,
	[CGRUSL] [bigint] NULL,
 CONSTRAINT [PK__PRICES__NREC] PRIMARY KEY NONCLUSTERED 
(
	[NREC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_PRICES: CTHING] ON [dbo].[PRICES] 
(
	[CTHING] ASC
)
INCLUDE ( [PRICE]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perehod_old]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perehod_old](
	[NREC_AX] [nvarchar](255) NULL,
	[NAME_AX] [nvarchar](255) NULL,
	[PRODUC_AX] [nvarchar](255) NULL,
	[NAME_208] [nvarchar](255) NULL,
	[PRODUC_208] [nvarchar](255) NULL,
	[NREC_208] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perehod]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perehod](
	[NREC_AX] [nvarchar](255) NULL,
	[NAME_АХ] [nvarchar](255) NULL,
	[PRODUC_АХ] [nvarchar](255) NULL,
	[PRODUC_А208] [nvarchar](255) NULL,
	[NAME_А208] [nvarchar](255) NULL,
	[NREC_208] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OTKAZ]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OTKAZ](
	[otkaz_id] [int] IDENTITY(1,1) NOT NULL,
	[p_name] [varchar](255) NOT NULL,
	[m_name] [varchar](255) NOT NULL,
	[prov_id] [int] NOT NULL,
	[kassa] [varchar](50) NOT NULL,
	[date] [datetime] NULL,
	[note_text] [varchar](150) NULL,
	[otkaz_volume] [float] NULL,
	[p_nrec] [varchar](150) NULL,
	[note_id] [int] NULL,
	[otkaz_tnved] [varchar](10) NULL,
	[otkaz_min] [float] NULL,
	[otkaz_max] [float] NULL,
	[note_zakup_old] [varchar](100) NULL,
	[note_prov_old] [varchar](50) NULL,
	[otkaz_maxrn] [int] NULL,
	[otkaz_price_price] [float] NULL,
	[note_id_dop] [int] NULL,
	[otkaz_ost_sklad] [float] NULL,
	[note_id_z] [int] NULL,
	[note_text_z_dop] [varchar](150) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ostatok_journal_output]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Кащенко Т.С.
-- Create date: 2017-09-06
-- Description:	Вывод остков аптеки 208 для аптеки 16

-- EXEC [dbo].[ostatok_journal_output]
-- =============================================
CREATE procedure [dbo].[ostatok_journal_output]
as
begin
	set nocount on;
	SET LANGUAGE RUSSIAN;  --Нужно если начинаются проблемы с кодировкой кириллицы	
-- каталог_сайт
DECLARE @Result int ;
DECLARE @Cmd nvarchar(255);  --вызов пакетной выгрузки
	
Set @Cmd = N'BCP "EXEC new.dbo.ostatok_journal" QUERYOUT "C:\Out\АПТЕКА_16\JOURNAL.xml" -T -k -c -CUTF8'
	
EXEC @Result = MASTER..XP_CMDSHELL @Cmd	  --выполнение пакетной выгрузки
IF @Result <> 0								-- если завершилось с ошибкой
	raiserror (N'Не удалось создать файл JOURNAL.xml', 16,-1)

END
GO
/****** Object:  Table [dbo].[ost_journal]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ost_journal](
	[P_NREC] [varchar](50) NULL,
	[Ostatok] [float] NULL,
	[P_ID] [varchar](50) NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NOPOST]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NOPOST](
	[NP_ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [int] NULL,
	[a_id] [int] NULL,
	[h_date] [datetime] NULL,
	[T_ID] [int] NULL,
	[u_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MANUFACTURERS_DOP]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MANUFACTURERS_DOP](
	[MD_ID] [int] IDENTITY(1,1) NOT NULL,
	[MD_NAME] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_MANUFACTURERS_DOP] PRIMARY KEY NONCLUSTERED 
(
	[MD_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MANUFACTURERS]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MANUFACTURERS](
	[M_ID] [int] IDENTITY(1,1) NOT NULL,
	[M_NAME] [nvarchar](255) NOT NULL,
	[M_NREC] [bigint] NULL,
 CONSTRAINT [PK_MANUFACTURERS] PRIMARY KEY NONCLUSTERED 
(
	[M_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MANUFACTURERS: M_NAME] ON [dbo].[MANUFACTURERS] 
(
	[M_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[WORK_CATALOG]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		LEKO
-- Create date: 2012-09-21
-- Description:	Каталог,все классификаторы
--	EXEC [dbo].[WORK_CATALOG]	
-- =============================================
CREATE PROCEDURE [dbo].[WORK_CATALOG]	
AS
BEGIN	
	SET NOCOUNT ON;

	SELECT 
	cast (K.[NREC] as nvarchar(25)) as CMC
	, K.[NAME] as 'Наименование'
	, G.[NAME] as 'Производитель'
	, K.[OKDP] as 'Замена'
	, K.[ZAPASMIN] as 'Min'
	, K.[ZAPASMAX] as 'Max'
	, K.[VOLUME] as 'ГЗ'
	, K.[TNVED] as 'ABC'
	, K.[REMMC] as 'Адрес'
	, K.[SIZEZ] as 'АГ'	
	, K.[SIZEY] as 'Приоритет'
	, K.[SIZEX] as 'Рейтинг'
	, K.[BARKOD2] as 'ПК'
	, K.[MASSA] as 'Склад'
	, K.[MTARA] as 'Маркировка'
	, K.[MAXRN] as 'ЦК'	
	, KR.[NAME] as 'Дубль'
	, T1.[VSTRING] as 'Z'
	, T2.[VSTRING] as 'ASSORT'
	FROM

		[192.168.24.152].GAL208.dbo.KATMC K
		INNER JOIN [192.168.24.152].GAL208.dbo.GROUPMC G ON K.CGROUPMC=G.NREC
		LEFT JOIN [192.168.24.152].GAL208.dbo.KLRESHR KR ON K.CRESHR=KR.NREC
		LEFT JOIN (SELECT [VSTRING],[CREC] FROM [192.168.24.152].GAL208.dbo.ATTRVAL WHERE CATTRNAM='4612128923300419589') T1 on K.NREC=T1.CREC
		LEFT JOIN (SELECT [VSTRING],[CREC] FROM [192.168.24.152].GAL208.dbo.ATTRVAL WHERE CATTRNAM='4612040690631591950') T2 on K.NREC=T2.CREC
	WHERE K.[NAME] NOT LIKE '/'+'%'
	ORDER BY K.[NAME]
	

    
END
GO
/****** Object:  Table [dbo].[atc]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atc](
	[NAME] [nvarchar](80) NULL,
	[VALUE] [nvarchar](20) NULL,
	[NREC] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[articul]    Script Date: 01/17/2024 14:13:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articul](
	[NREC] [nvarchar](20) NULL,
	[ATL_LASTDA] [smalldatetime] NULL,
	[ATL_LASTTI] [nvarchar](5) NULL,
	[ATL_LASTUS] [nvarchar](20) NULL,
	[ATL_ORIGIN] [float] NULL,
	[LASTUSER] [nvarchar](20) NULL,
	[LASTTIME] [nvarchar](5) NULL,
	[LASTDATE] [smalldatetime] NULL,
	[FILIALNO] [float] NULL,
	[ARTICUL] [float] NULL,
	[NAME] [nvarchar](14) NULL,
	[CMC] [nvarchar](20) NULL,
	[COTPED] [nvarchar](20) NULL,
	[DISKRET] [float] NULL,
	[KOEF] [float] NULL,
	[EDMSG] [nvarchar](50) NULL,
	[TAX] [float] NULL,
	[PRICE] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_LISTGOOD]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[VW_LISTGOOD]
AS
  SELECT
    A.articul as Articul,
    A.koef as Koef,
    A.[Price] as PriceMC,
    K.[Name] as NameMC,
    KE.Name as NameUED,
    G.Name as NameGR,
    L.Kol as CountGAL,
    K.TNVED as TNVed,
    K.ZAPASMIN,
    K.ZAPASMAX,
    K.RemMC,
    GR.kod as kod,
    K.volume as zakup,
    L.cpodr as Podr

  FROM  [NEWDBF]...[Articul] A,
	[NEWDBF]...[KatMC] K,
	[NEWDBF]...[KatEd] KE,
	[NEWDBF]...[GroupMC] G,
	[NEWDBF]...[ListGood] L,
	[NEWDBF]...[grnal] GR

WHERE 	A.[cMC] = K.[nRec] and 
	K.[cED] = KE.[nRec] and
       	K.[cGroupMC] = G.[nRec] and 
	A.[Articul] = L.[Articul] and
        GR.[nrec] = K.[cgrnal]
GO
/****** Object:  Table [dbo].[ARTICLES_TEMP]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICLES_TEMP](
	[A_ID] [int] NOT NULL,
	[P_ID] [int] NOT NULL,
	[P_PRICE] [float] NOT NULL,
	[P_NREC] [bigint] NULL,
	[P_PACK] [float] NULL,
	[P_PRICE_begin] [float] NULL,
	[P_PRICE_new] [float] NULL,
	[AT_DT] [datetime] NULL,
	[AT_TYPE] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARTICLES_RES]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICLES_RES](
	[A_ID] [int] NOT NULL,
	[P_ID] [int] NOT NULL,
	[P_PRICE] [float] NOT NULL,
	[P_NREC] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ANKETA]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANKETA](
	[AN_ID] [int] IDENTITY(1,1) NOT NULL,
	[AN_NAME] [nvarchar](40) NOT NULL,
	[AN_DISCOUNT] [float] NOT NULL,
	[AN_CODE] [nvarchar](255) NULL,
	[AN_DATE] [datetime] NULL,
	[AN_FNAME] [nvarchar](40) NULL,
	[AN_SNAME] [nvarchar](40) NULL,
	[AN_BIRTHDAY] [datetime] NULL,
	[AN_INDEX] [nvarchar](10) NULL,
	[AN_PHONE] [nvarchar](50) NULL,
	[AN_MAIL] [nvarchar](40) NULL,
	[AN_CITY] [nvarchar](60) NULL,
	[AN_STREET] [nvarchar](100) NULL,
	[AN_SEX] [nvarchar](10) NULL,
	[AN_REMS] [nvarchar](255) NULL,
	[AN_USERNAME] [nvarchar](50) NULL,
	[AN_DATEZAV] [datetime] NULL,
	[AN_SCHOOLING] [nvarchar](20) NULL,
	[AN_SPHERE] [nvarchar](50) NULL,
	[AN_JOB] [nvarchar](50) NULL,
	[AN_ACTUAL] [nvarchar](50) NULL,
	[AN_COMFORT] [nvarchar](50) NULL,
	[AN_INFORMATION_LIKE] [nvarchar](50) NULL,
	[AN_WHAT_OTHER] [nvarchar](255) NULL,
	[AN_B] [nvarchar](10) NULL,
 CONSTRAINT [PK_ANKETA] PRIMARY KEY CLUSTERED 
(
	[AN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[afn_string2double]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------
CREATE function [dbo].[afn_string2double] 
(@s nvarchar(128))
returns float
as  
begin		
	select @s = ltrim(rtrim(@s))
	declare @r float
	if @s is null or @s = N''
	begin
		select @r = 0.0; 
	end
	else
	begin
		declare @x int
		declare @i int
    select @x = charindex(N'+', @s)
		if @x = 0 or @x is null
		begin
			-- нет плюса, целое число
			set @i = cast(@s as int)
			set @r = cast(@i as float)
		end
		else
		begin
			-- есть плюс
			declare @is nvarchar(128)
			declare @fs nvarchar(128)
			set @is = substring(@s, 1, @x-1)
			set @fs = substring(@s, @x + 1, len(@s)-@x+1)
			declare @if nvarchar(10)
			declare @ff nvarchar(10)
			set @if = substring(@fs, 1, 1)
			set @ff = substring(@fs, 3, 2)
			set @r = cast(@is as float) + cast(@if as float) / cast(@ff as float)
		end
	end
	return @r
end
GO
/****** Object:  UserDefinedFunction [dbo].[afn_incstring]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------
create function [dbo].[afn_incstring] 
(@s nvarchar(128))
returns nvarchar(128) 
as  
begin		
	select @s = ltrim(rtrim(@s))
	declare @r nvarchar(128)
	if @s is null or @s = N''
	begin
		select @r = N'1' 
	end
	else
	begin
		declare @x int
		declare @i int
    select @x = charindex(N'+', @s)
		if @x = 0 or @x is null
		begin
			-- нет плюса, целое число
			set @i = cast(@s as int)
			set @i = @i + 1
			set @r = cast(@i as nvarchar(128))
		end
		else
		begin
			-- есть плюс
			declare @is nvarchar(128)
			declare @fs nvarchar(128)
			set @is = substring(@s, 1, @x-1)
			set @fs = substring(@s, @x, len(@s)-@x+1)
			set @i = cast(@is as int)
			set @i = @i + 1
			set @r = cast(@i as nvarchar(128)) + @fs
		end
	end
	return @r
end
GO
/****** Object:  StoredProcedure [dbo].[ap_customer_isvalid]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ap_customer_isvalid]
@id int
as
begin
	set nocount on;
	-- если все в порядке, то пустая строка, иначе сообщение об ошибке
	if @id = 1
		select N'Ошибка. НЕЛЬЗЯ ДАВАТЬ СКИДКУ';
	else
		select N''
end
GO
/****** Object:  StoredProcedure [dbo].[ap_get_extra]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ap_get_extra]
	@aid int
	as
	set nocount on
		select cast(@aid as nvarchar(255)), N'КОЛ2'
GO
/****** Object:  StoredProcedure [dbo].[ap_extra_columns]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[ap_extra_columns]
	as
	set nocount on
		select N'КОЛ1', 0
		union all
		select N'КОЛ2', 0
GO
/****** Object:  StoredProcedure [dbo].[ap_delete_t1]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[ap_delete_t1] AS
declare @dat datetime

select @dat=getdate()

--delete from t1 where convert(CHAR(20),dat,101) <>convert(char(20),@dat,101)
--delete from t1 where {fn hour(dat)}<8
--delete from t1 where {fn hour(dat)}<8 and { fn minute(dat)}<30
GO
/****** Object:  Table [dbo].[CUSTOMERS_ARCHIVE]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMERS_ARCHIVE](
	[C_ID_A] [int] IDENTITY(1,1) NOT NULL,
	[C_ID] [int] NULL,
	[C_NAME] [nvarchar](40) NULL,
	[C_FNAME] [nvarchar](40) NULL,
	[C_SNAME] [nvarchar](40) NULL,
	[C_DISCOUNT] [float] NULL,
	[C_CODE] [nvarchar](255) NULL,
	[C_DATE] [datetime] NULL,
	[C_BIRTHDAY] [datetime] NULL,
	[C_INDEX] [nvarchar](10) NULL,
	[C_PHONE] [nvarchar](50) NULL,
	[C_MAIL] [nvarchar](40) NULL,
	[C_CITY] [nvarchar](60) NULL,
	[C_STREET] [nvarchar](100) NULL,
	[C_SEX] [nvarchar](50) NULL,
	[C_REMS] [nvarchar](255) NULL,
	[C_CHANGE] [nvarchar](50) NULL,
	[C_ID_NEW] [int] NULL,
	[C_CODE_NEW] [nvarchar](255) NULL,
	[C_DISCOUNT_NEW] [float] NULL,
	[C_DATE_ZAV] [datetime] NULL,
	[C_KOD_ZAV] [int] NULL,
	[C_NOTE] [nvarchar](50) NULL,
	[C_A_DATE] [datetime] NULL,
 CONSTRAINT [PK_CUSTOMERS_ARCHIVE] PRIMARY KEY CLUSTERED 
(
	[C_ID_A] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMERS]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMERS](
	[C_ID] [int] IDENTITY(1,1) NOT NULL,
	[C_NAME] [nvarchar](40) NOT NULL,
	[C_DISCOUNT] [float] NOT NULL,
	[C_SUM] [float] NOT NULL,
	[C_CODE] [nvarchar](255) NULL,
	[C_CHANGED] [bit] NULL,
	[C_NO] [nvarchar](255) NULL,
	[C_DATE] [datetime] NULL,
	[C_FNAME] [nvarchar](40) NULL,
	[C_SNAME] [nvarchar](40) NULL,
	[C_BIRTHDAY] [datetime] NULL,
	[C_INDEX] [nvarchar](10) NULL,
	[C_PHONE] [nvarchar](50) NULL,
	[C_ADDRESS] [nvarchar](40) NULL,
	[C_MAIL] [nvarchar](40) NULL,
	[C_CITY] [nvarchar](60) NULL,
	[C_STREET] [nvarchar](100) NULL,
	[C_HOUSE] [nvarchar](10) NULL,
	[C_APP] [nvarchar](50) NULL,
	[C_SEX] [nvarchar](10) NULL,
	[C_CHANGE] [nvarchar](50) NULL,
	[C_DISCOUNT_NOM] [int] NULL,
	[C_BONUSCODE] [nvarchar](255) NULL,
	[C_PERIOD] [int] NULL,
	[C_KOLPRIHOD] [int] NULL,
	[C_AVGSUM] [int] NULL,
	[C_VOID] [bit] NOT NULL,
	[C_STATUS] [nvarchar](50) NULL,
	[C_REMS] [nvarchar](255) NULL,
	[C_USERNAME] [nvarchar](32) NULL,
	[C_H_NO] [int] NULL,
	[C_DATE_ZAV] [datetime] NULL,
	[C_AN_ID] [int] NULL,
	[C_LACHE] [nvarchar](10) NULL,
 CONSTRAINT [PK_CUSTOMERS] PRIMARY KEY NONCLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CUSTOMERS: C_NAME] ON [dbo].[CUSTOMERS] 
(
	[C_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Фамилия' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Текущая скидка по карте' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_DISCOUNT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Пометка аптеки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_SUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'№карты' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Для измененных данных' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_CHANGED'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Совпадает с C_CODE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_NO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата выдачи карты' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Имя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_FNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Отчество' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_SNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата рождения' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_BIRTHDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Индекс' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_INDEX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Телефоны' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_PHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Адрес' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_ADDRESS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E-mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_MAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Город' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_CITY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Улица' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_STREET'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дом' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_HOUSE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Квартира' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_APP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Пол(мужской-m,женский-f)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_SEX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Примечание' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_CHANGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Номинальная скидка по карте,совпадает с C_DISCOUNT, дибо равна 0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSTOMERS', @level2type=N'COLUMN',@level2name=N'C_DISCOUNT_NOM'
GO
/****** Object:  Table [dbo].[COMPLEX]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPLEX](
	[CX_ID] [int] IDENTITY(1,1) NOT NULL,
	[P_ATC] [nvarchar](50) NULL,
	[CX_VALUE] [nvarchar](50) NULL,
	[CX_TYPE] [int] NULL,
 CONSTRAINT [PK_COMPLEX] PRIMARY KEY CLUSTERED 
(
	[CX_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NULL-ATC,1-cmc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COMPLEX', @level2type=N'COLUMN',@level2name=N'CX_TYPE'
GO
/****** Object:  StoredProcedure [dbo].[ap2_rcpcatsrc_load]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap2_rcpcatsrc_load]
as
set nocount on

select RCPC_CODE, RCPC_NAME, RCPC_DISCOUNT from RCP_CATEGORIES order by RCPC_NAME

select RCPS_CODE, RCPS_NAME from RCP_SOURCES order by RCPS_NAME
GO
/****** Object:  StoredProcedure [dbo].[ap_zreport_getlast]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[ap_zreport_getlast]
@tid int
as
set nocount on
select SP_DATE from dbo.SYSPARAMS where SP_NAME=N'Z_REPORT' + cast(@tid as nvarchar(32)) and SP_TID=@tid
GO
/****** Object:  StoredProcedure [dbo].[ap_user_fullname]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_user_fullname]
@uid nvarchar(255)
as
set nocount on
select U_FULLNAME from USERS where U_NAME=@uid
GO
/****** Object:  StoredProcedure [dbo].[ap_sys_version]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_sys_version]
as
set nocount on
select SP_INT from dbo.SYSPARAMS where SP_NAME=N'VERSION' and SP_TID=0
GO
/****** Object:  StoredProcedure [dbo].[ap_calc_bonuses]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[ap_calc_bonuses]
@cid int
as 
begin
	set nocount on
	declare @sum int
	declare @msum int
	select @sum = 
   sum(
		cast(
			round(I_QTY / 1000.0 * (I_PRICE-I_PRICE*I_DISCOUNT/10000.0)/ 100.0 * I_BONUS / 100.0, 0) 
			as int
	)) 
	from CHECK_ITEMS
	where I_BONUS <> 0
	and H_ID in (select H_ID from CHECKS where C_ID=@cid and H_TYPE<>3)
	select @msum = sum(H_SUM-H_DSUM) from CHECKS where C_ID=@cid and H_TYPE=3
	select @sum - isnull(@msum,0)
end
GO
/****** Object:  StoredProcedure [dbo].[ap_bonus_getinfo]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_bonus_getinfo]
as 
set nocount on
select SP_INT, SP_STRING from SYSPARAMS where SP_NAME=N'BONUS_INFO';
GO
/****** Object:  StoredProcedure [dbo].[ap_notify_item]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ap_notify_item]
@code int,
@artcode int,
@uid int,
@tid int
as
set nocount on
-- @code = 0 -- нулевая цена
-- @code = 1 -- нет цены
-- @code = 2 -- нет на остатке или отрицательный остаток)

-- @artcode -- АРТИКУЛ

-- @uid -- ID пользователя (как в чеке)
-- @tid -- ID терминала  (как в чеке)
insert into nopost (CODE,A_ID,T_ID,U_ID)
  values (@code, @artcode, @tid, @uid)
GO
/****** Object:  StoredProcedure [dbo].[ap_login]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_login]
@uid nvarchar(256),
@pwd nvarchar(256)
as
set nocount on
if exists(select * from USERS where U_NAME=@uid and U_PWD=@pwd)
begin
  declare @userid int
  select @userid = U_ID from USERS where U_NAME=@uid
  return @userid
end
else
  return 0
GO
/****** Object:  StoredProcedure [dbo].[ap_product_getremres]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_product_getremres]
@pid int
as 
set nocount on
select sum(J_RES) from JOURNAL where A_ID=@pid
GO
/****** Object:  StoredProcedure [dbo].[ap_product_getrem]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_product_getrem]
@pid int
as 
set nocount on
select sum(J_QTYU) from JOURNAL where A_ID=@pid
GO
/****** Object:  StoredProcedure [dbo].[ap_customerbonus_find]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE  procedure [dbo].[ap_customerbonus_find]
@code nvarchar(255)
as 
set nocount on
select C_ID, C_CODE, C_NAME, 0, C_DISCOUNT, C_VOID from CUSTOMERS where C_BONUSCODE=@code
GO
/****** Object:  StoredProcedure [dbo].[ap_customer_find]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[ap_customer_find]
@code nvarchar(255)
as 
set nocount on
select C_ID, C_CODE, C_NAME, C_SUM, C_DISCOUNT, C_VOID 
	from CUSTOMERS where C_CODE=@code
order by C_DISCOUNT desc
GO
/****** Object:  StoredProcedure [dbo].[ap_check_lasttype]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[ap_check_lasttype]
@tid int
as
set nocount on
declare @id int
select @id = max(H_ID) from CHECKS where T_ID=@tid
select H_TYPE from CHECKS where H_ID=@id
GO
/****** Object:  StoredProcedure [dbo].[ap_check_insert_extra]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-03-03 17:02:37.857
-- Description:	Вставка информационного документа
-- =============================================
CREATE procedure [dbo].[ap_check_insert_extra]
	@no		int,
	@dt		datetime,
	@tid	int,
	@uid	int,
	@sum	int,
	@disc	int,
	@items	int,
	@cid	int = null,
	@tp		int, -- EXCHECK_TYPES.TYPE
	@fail	bit = 0,
	@dsum	int = 0,
	@rcpid int = null
as
BEGIN
	set nocount on;

	declare @res int;
	select @res = 0;

	insert into EXCHECKS (H_DATE, T_ID, U_ID, H_SUM, H_DISCOUNT, H_ITEMS, C_ID, H_TYPE, Z_ID, H_DSUM, RCP_ID)
	values (@dt, @tid, @uid, @sum, @disc, @items, @cid, @tp, NULL, @dsum, @rcpid);

-- Возврат H_ID для дальнейшей вставки спецификации инф.документа
	select @res = ident_current('EXCHECKS');
	return @res;
END
GO
/****** Object:  StoredProcedure [dbo].[LOG_SP_START]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2009-05-30 12:06:21.310
-- Description:	Регистрация запуска на выполнение хранимой процедуры
-- =============================================
CREATE  PROCEDURE [dbo].[LOG_SP_START] 
	@SP_NAME NVARCHAR(255)
AS
BEGIN
	SET NOCOUNT ON
	INSERT LOG_SP (SP_NAME, LOG_USER) VALUES (@SP_NAME, SUSER_SNAME())
	RETURN SCOPE_IDENTITY( )
END
GO
/****** Object:  StoredProcedure [dbo].[LOG_SP_END]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2009-05-30 12:04:21.310
-- Description:	Регистрация окончания выполнения хранимой процедуры
-- =============================================
CREATE PROCEDURE [dbo].[LOG_SP_END]
	@LOG_ID INT
AS
BEGIN
	SET NOCOUNT ON
	UPDATE LOG_SP SET DTS_END = GETDATE() WHERE LOG_ID = @LOG_ID
END
GO
/****** Object:  StoredProcedure [dbo].[ostatok_journal]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ostatok_journal]
as
begin
SELECT Max(JOURNAL.J_ID) AS [J_ID], Max(JOURNAL.J_DATE) AS [J_DATE], JOURNAL.A_ID, Sum(JOURNAL.J_QTY) AS [J_QTY], Sum(JOURNAL.J_QTYU) AS [J_QTYU], Min(JOURNAL.J_RES) AS [J_RES], Min(JOURNAL.D_ID) AS [D_ID], Min(JOURNAL.J_TYPE) AS [J_TYPE]
FROM JOURNAL
GROUP BY JOURNAL.A_ID
HAVING (((Sum(JOURNAL.J_QTY))>0))

end
GO
/****** Object:  StoredProcedure [dbo].[otkaz_view]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-04-19 14:31:35.653
-- Description:	Информация ою отказах
--
-- EXEC [otkaz_view] 0,0
-- =============================================
CREATE PROCEDURE [dbo].[otkaz_view]
	@date1	datetime = GetDate,
	@date2	datetime = GetDate,
	@txt	nvarchar(255)		-- Фрагмент наименования товаров		
AS
BEGIN
	SET NOCOUNT ON;	
	DECLARE @pat NVARCHAR(255)
	SELECT @pat = N'%' + UPPER(@txt) + N'%' -- вхождение
	
	SELECT 
		otkaz_id,
		p_nrec,
		p_name,
		m_name,
		prov_id,
		prov_name=(select prov_name from sp_prov where sp_prov.prov_id=otkaz.prov_id),
		kassa,
		date,
		otkaz_tnved,
		otkaz_volume,		
		otkaz_min,
		otkaz_max,
		otkaz_maxrn,
		otkaz_price_price,
		note_id,
		note_name=(select note_name from sp_note where sp_note.note_id=otkaz.note_id),
		note_id_dop,
		note_name_dop=(select note_name from sp_note where sp_note.note_id=otkaz.note_id_dop),
		note_text,
		note_id_z,
		note_name_z=(select note_name from sp_note where sp_note.note_id=otkaz.note_id_z),
		note_text_z_dop,		
		otkaz_ost_sklad

	FROM
		otkaz 		
	where date>=@date1 and date<=@date2 and upper(P_NAME) like @pat

	order by p_name,date
	
END
GO
/****** Object:  StoredProcedure [dbo].[otkaz_update]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2011-07-17
-- Description:	Обновление отказа
-- =============================================
CREATE PROCEDURE [dbo].[otkaz_update]
	@otkaz_id			int,
	@note_id_z			int,
	@note_text_z_dop	nvarchar(150) = ''
	
AS
BEGIN	
	SET NOCOUNT ON;

	UPDATE
	otkaz
	SET
		note_id_z = @note_id_z,
		note_text_z_dop = @note_text_z_dop		
	WHERE otkaz_id=@otkaz_id

END
GO
/****** Object:  StoredProcedure [dbo].[otkaz_show_prov]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-04-21 14:31:35.653
-- Description:	Информация о причинах
--
-- select * from sp_prov
-- =============================================
create PROCEDURE [dbo].[otkaz_show_prov]
	@active	int	-- условие для отображения
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
		prov_id
		,prov_name
		,prov_active		
		
	from sp_prov
	where prov_active>=@active

	ORDER BY prov_name

END
GO
/****** Object:  StoredProcedure [dbo].[otkaz_show_note]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-04-19 14:31:35.653
-- Description:	Информация о причинах
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[otkaz_show_note]	
	@level	int	-- условие для отображения
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
		note_id
		,note_name
		,note_level			
		
	from sp_note
	where note_level=@level

	ORDER BY note_name

END
GO
/****** Object:  StoredProcedure [dbo].[katalog_site_itog]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[katalog_site_itog]	
as
begin
SELECT site_colums.* FROM site_colums
UNION ALL select site_katalog.* from site_katalog;
end
GO
/****** Object:  StoredProcedure [dbo].[customers_view]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-10-18 11:48:35.653
-- Description:	Поиск по ФИО клиента
--
-- EXEC 
-- =============================================
CREATE PROCEDURE [dbo].[customers_view]
	
AS
BEGIN
	SET NOCOUNT ON;		
	
	SELECT
		c_id, 
		c_code,
		c_discount,
		c_sum,		
		c_name,
		c_fname,
		c_sname,		
		c_birthday,
		c_phone,
		c_index,
		c_city,
		c_street,
		c_mail,
		c_sex,
		c_rems,
		c_h_no,
		c_change,
		c_date,
		u_fullname
	FROM
		customers left join users on customers.c_username=users.u_id
	WHERE 
		c_date_zav>dateadd(d, datediff(d, 0, GetDate())-1, 0) and c_date_zav<dateadd(d, datediff(d, 0, GetDate())+1, 0)

	ORDER BY u_fullname,c_name,c_fname, c_sname
	
END
GO
/****** Object:  StoredProcedure [dbo].[customers_users]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2011-10-29
-- Description:	Выбор пользователей
-- =============================================
CREATE PROCEDURE [dbo].[customers_users]	
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT u_id,u_fullname,u_otdel 
	FROM users 
	WHERE u_name<>'winnie'
	ORDER BY u_fullname

END
GO
/****** Object:  StoredProcedure [dbo].[customers_update]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2011-10-29
-- Description:	Обновление карточки по коду
-- =============================================
CREATE PROCEDURE [dbo].[customers_update]
	@type_update	int,			
					--0=простое обновление данных, 1=обновление данных и перенос продаж
	@code			nvarchar(40),
	@disc			int,
	@code_old		nvarchar(40),
	@disc_old		int,
	@name			nvarchar(40),
	@fname			nvarchar(40),
	@sname			nvarchar(40),
	@birthday		datetime,
	@sex			nvarchar(10),
	@phone			nvarchar(50),
	@email			nvarchar(40),
	@index			nvarchar(10),
	@city			nvarchar(60),
	@street			nvarchar(40),
	@hno			int,
	@rems			nvarchar(100),
	@date			datetime,
	@date_zav		datetime,
	@user			int,
	@change			nvarchar(50)
AS
BEGIN
	SET NOCOUNT OFF;	

UPDATE
		customers
	SET
		c_name=@name,
		c_fname=@fname,
		c_sname=@sname,
		c_birthday=@birthday,
		c_sex=@sex,
		c_phone=@phone,
		c_mail=@email,
		c_index=@index,
		c_city=@city,
		c_street=@street,
		c_h_no=@hno,
		c_rems=@rems,
		c_date=@date,
		c_date_zav=@date_zav,
		c_username=@user,
		c_change=@change		
	WHERE 
		c_code=@code AND
		c_discount=@disc

IF @type_update=1
BEGIN
	DECLARE @cid		int
	DECLARE @cid_old	int

	SELECT @cid=c_id 
	FROM customers
	WHERE 
		c_code=@code AND
		c_discount=@disc
	
	SELECT @cid_old=c_id
	FROM customers
	WHERE 
		c_code=@code_old AND
		c_discount=@disc_old
	
	UPDATE
		checks
	SET
		c_id=@cid
	WHERE
		c_id=@cid_old
END

END
GO
/****** Object:  StoredProcedure [dbo].[customers_insert_archive]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2012-04-18
-- Description:	Вставка в архив данных по карточкам
-- =============================================
CREATE PROCEDURE [dbo].[customers_insert_archive]	
	@code			nvarchar(40),
	@disc			int,
	@code_new		nvarchar(40),
	@disc_new		int,	
	@note			nvarchar(50)
AS
BEGIN
	SET NOCOUNT OFF;

DECLARE
	@cid			int,
	@cid_new		int,
	@name			nvarchar(40),
	@fname			nvarchar(40),
	@sname			nvarchar(40),
	@date			datetime,
	@birthday		datetime,
	@index			nvarchar(10),
	@phone			nvarchar(50),	
	@email			nvarchar(40),
	@city			nvarchar(60),
	@street			nvarchar(40),
	@sex			nvarchar(10),
	@rems			nvarchar(100),
	@change			nvarchar(50),	
	@date_zav		datetime,
	@kod_zav		int
	
SELECT 
	@cid		= c_id,
	@name		= c_name,
	@fname		= c_fname,
	@sname		= c_sname,
	@date		= c_date,
	@birthday	= c_birthday,
	@index		= c_index,
	@phone		= c_phone,
	@email		= c_mail,
	@city		= c_city,
	@street		= c_street,
	@sex		= c_sex,
	@rems		= c_rems,
	@change		= c_change,
	@date_zav	= c_date_zav,
	@kod_zav	= c_username
	
	FROM customers
	WHERE 
		c_code=@code AND
		c_discount=@disc

SELECT 
	@cid_new	= c_id
	
	FROM customers
	WHERE 
		c_code=@code_new AND
		c_discount=@disc_new

INSERT INTO [new].[dbo].[CUSTOMERS_ARCHIVE]
           ([C_ID]
           ,[C_NAME]
           ,[C_FNAME]
           ,[C_SNAME]
           ,[C_DISCOUNT]
           ,[C_CODE]
           ,[C_DATE]
           ,[C_BIRTHDAY]
           ,[C_INDEX]
           ,[C_PHONE]
           ,[C_MAIL]
           ,[C_CITY]
		   ,[C_STREET]
           ,[C_SEX]
           ,[C_REMS]
           ,[C_CHANGE]
           ,[C_ID_NEW]
           ,[C_CODE_NEW]
           ,[C_DISCOUNT_NEW]           
           ,[C_DATE_ZAV]
           ,[C_KOD_ZAV]
           ,[C_NOTE]
			)
     VALUES
           (@cid
           ,@name
           ,@fname
           ,@sname
		   ,@disc
           ,@code
           ,@date
           ,@birthday
           ,@index
           ,@phone
           ,@email
           ,@city
           ,@street
           ,@sex
           ,@rems
           ,@change
           ,@cid_new
           ,@code_new
           ,@disc_new
           ,@date_zav
           ,@kod_zav
           ,@note
			)


declare @res int
select @res = 0
select @res = ident_current('CUSTOMERS_ARCHIVE')
return @res

END
GO
/****** Object:  StoredProcedure [dbo].[customers_find_change_new]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-10-29 14:52:35.653
-- Description:	Поиск по номеру клиента, новая карта
--
-- EXEC 
-- =============================================
CREATE PROCEDURE [dbo].[customers_find_change_new]
	@code		nvarchar(40),
	@disc		int,
	@result		int output
AS
BEGIN
	SET NOCOUNT OFF;

	SELECT 
		c_code,
		c_discount,
		c_sum,		
		c_name,
		c_fname,
		c_sname,		
		c_birthday,
		c_phone,
		c_index,
		c_city,
		c_street,
		c_mail,
		c_sex,
		c_rems,
		c_h_no,
		c_change,
		c_date,
		c_date_zav		
	FROM
		customers
	WHERE 		
		c_code=@code AND
		c_discount=@disc
	ORDER BY c_name,c_fname, c_sname

	SELECT @result=@@ROWCOUNT
	
END
GO
/****** Object:  StoredProcedure [dbo].[customers_find_change]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-10-20 14:41:35.653
-- Description:	Поиск по номеру клиента
--
-- EXEC 
-- =============================================
CREATE PROCEDURE [dbo].[customers_find_change]	
	@code	nvarchar(40),
	@disc	int,
	@result	int output
AS
BEGIN
	SET NOCOUNT ON;		

	SELECT 
		c_code,
		c_discount,
		c_sum,		
		c_name,
		c_fname,
		c_sname,		
		c_birthday,
		c_phone,
		c_index,
		c_city,
		c_street,
		c_mail,
		c_sex,
		c_rems,
		c_h_no,
		c_change,
		c_date,
		c_date_zav,
		c_username
	FROM
		customers
	WHERE 		
		c_code=@code AND
		c_discount=@disc
	ORDER BY c_name,c_fname, c_sname

	SELECT @result=@@ROWCOUNT
	
END
GO
/****** Object:  StoredProcedure [dbo].[customers_find_all_changes]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-10-20 14:41:35.653
-- Description:	Поиск по номеру клиента
--
-- EXEC [dbo].[customers_find_all_changes] '*350221',''
-- =============================================
CREATE PROCEDURE [dbo].[customers_find_all_changes]
	@code			nvarchar(40),
	@result			int output

AS
BEGIN
	SET NOCOUNT ON;		

	SELECT 
		c_code,
		c_discount,
		c_name,
		c_fname,
		c_sname,
		c_date
	FROM
		customers
	WHERE 		
		c_change like N'%'+@code+N'%' and len(c_code)=6
	
	SELECT @result=@@ROWCOUNT
	
END
GO
/****** Object:  StoredProcedure [dbo].[customers_find]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-09-20 14:31:35.653
-- Description:	Поиск по ФИО клиента
--
-- EXEC 
-- =============================================
CREATE PROCEDURE [dbo].[customers_find]	
	@name		nvarchar(40),		-- Фрагмент фамилии
	@fname		nvarchar(40),		-- Фрагмент имени
	@sname		nvarchar(40),		-- Фрагмент отчества
	@code		nvarchar(40),		-- Номер карты
	@type_find	int					-- Вид поиска. 0=по номеру, 1=по ФИО
AS
BEGIN
	SET NOCOUNT ON;	
	
	IF @type_find=0 
	BEGIN
	
	
		SELECT 
			c.c_id,
			c.c_code,
			c.c_discount,
			c.c_sum,		
			c.c_name,
			c.c_fname,
			c.c_sname,		
			c.c_birthday,
			c.c_phone,
			c.c_index,
			c.c_city,
			c.c_street,
			c.c_mail,
			c.c_sex,
			c.c_rems,
			c.c_h_no,
			c.c_change,			
			c.c_date,
			(case when len (s.c_code)=6 then s.c_code else NULL end) as code_new
		FROM
			customers c left join
			(select  distinct cast(c_change as nvarchar(50)) c_change, c_code from customers
					--where c_code=@code			
					where c_code is not null
					group by c_change, c_code
			) s on s.c_change like cast('%'+c.c_code+'%' as nvarchar(50))

		WHERE 			
			c.c_code=@code
			or (c.c_change like cast('%'+@code+'%' as nvarchar(50)))
		ORDER BY c.c_name,c.c_fname, c.c_sname
	
/*

		SELECT 
			c.c_id,
			--(case when (c.c_code)=@code then c.c_code else @code end) as c_code,
			--@code as c_code,			
			c.c_code,
			c.c_discount,
			c.c_sum,		
			c.c_name,
			c.c_fname,
			c.c_sname,		
			c.c_birthday,
			c.c_phone,
			c.c_index,
			c.c_city,
			c.c_street,
			c.c_mail,
			c.c_sex,
			c.c_rems,
			c.c_h_no,
			c.c_change,			
			c.c_date,
			(case when len (c.c_code)=6 then c.c_code else NULL end) as code_new			
		FROM
			customers c
		WHERE 			
			(c.c_code=@code) 
			or 
			(c.c_change like cast('%'+@code+'%' as nvarchar(50)))
		ORDER BY c.c_name,c.c_fname, c.c_sname
*/

	END

	IF @type_find=1
	BEGIN
	
		SELECT @name = N'%' + UPPER(ISNULL(@name,'')) + N'%' -- вхождение
		SELECT @fname = N'%' + UPPER(ISNULL(@fname,'')) + N'%' -- вхождение
		SELECT @sname = N'%' + UPPER(ISNULL(@sname,'')) + N'%' -- вхождение	
	
		SELECT			
			c.c_id,
			c.c_code,
			c.c_discount,
			c.c_sum,		
			c.c_name,
			c.c_fname,
			c.c_sname,		
			c.c_birthday,
			c.c_phone,
			c.c_index,
			c.c_city,
			c.c_street,
			c.c_mail,
			c.c_sex,
			c.c_rems,
			c.c_h_no,
			c.c_change,
			c.c_date,
			(case when len (s.c_code)=6 then s.c_code else NULL end) as code_new
		FROM
			customers c left join
			(select  distinct cast(c_change as nvarchar(50)) c_change, c_code from customers
					/*where	UPPER (c_name) like @name AND
							UPPER (c_fname) like @fname AND 
							UPPER (c_sname) like @sname AND
					*/
					where	c_code is Not Null
					group by c_change, c_code
			) s on s.c_change like cast('%'+c.c_code+'%' as nvarchar(50))

		WHERE 
			UPPER (c.c_name) like @name AND
			UPPER (c.c_fname) like @fname AND 
			UPPER (c.c_sname) like @sname AND
			c.c_code is Not Null
		ORDER BY c.c_name, c.c_fname, c.c_sname
	END


END
GO
/****** Object:  StoredProcedure [dbo].[ip_setfact]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_setfact]
@aid int,  -- ID артикула
@brno  int,
@key nvarchar(255), -- ключ инвентаризации,
@val float,
@sval nvarchar(255),
@mt bit,
@a1 int,
@a2 int
as
begin
	set nocount on
	declare @invid int;
	select @invid = INV_ID from INVENTS where INV_CODE=@key;
  update INVENT_RESULT set IRS_FQTY=@val, IRS_SQTY=@sval where A_ID=@aid and BR_NO=@brno and INV_ID=@invid and 
	INV_MT=@mt and INV_A1=@a1 and INV_A2=@a2;
end
GO
/****** Object:  StoredProcedure [dbo].[ip_isinvent_open]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_isinvent_open]
@key nvarchar(255)
as
begin
set nocount on
	declare @rv bit;
	set @rv = 0;
	if exists(select * from INVENTS where INV_CODE=@key and INV_CLOSED=0)
		set @rv = 1;
	return @rv;
end
GO
/****** Object:  StoredProcedure [dbo].[K_CLEAR_PROD]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[K_CLEAR_PROD]
AS 
	SET NOCOUNT ON

	DELETE FROM PROD
GO
/****** Object:  StoredProcedure [dbo].[K_INSERT_PROD_small1]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[K_INSERT_PROD_small1]
AS 
SET NOCOUNT ON

INSERT PROD_small 
	(LARTICUL,
	PARTICUL,
	KOEF,
	PriceMC,
	NameMC,
	NameGR,
	NameUED,
	CountGal,
	TNVed,
	ZapasMin,
	ZapasMax,
	RemMc,
	Zakup,
	PriceMCU,
	Kod,
	PKolU,
	PKol,
	Podr,
	Koef1,
	Kod1,
	Podr1,
	KolU1,
	Kol1,
	Ost,
	OstU
	)
(
SELECT
	LARTICUL,
	PARTICUL,
	KOEF,
	PriceMC,
	NameMC,
	NameGR,
	NameUED,
	CountGal,
	TNVed,
	ZapasMin,
	ZapasMax,
	RemMc,
	Zakup,
	PriceMCU,
	Kod,
	PKolU,
	PKol,
	Podr,
	Koef1,
	Kod1,
	Podr1,
	KolU1,
	Kol1,
	Ost,
	OstU


FROM

   PROD
   Where CountGal>0


)
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_load]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_load]
@id int
as
begin
	set nocount on
	select INV_CODE, INV_ADDRESS, INV_DATE, INV_OPEN, INV_CLOSED, INV_MT, INV_A1, INV_A2
		from INVENTS
	where INV_ID=@id;
end
GO
/****** Object:  Table [dbo].[CHECKS]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHECKS](
	[H_ID] [int] IDENTITY(1,1) NOT NULL,
	[H_NO] [int] NOT NULL,
	[H_DATE] [datetime] NOT NULL,
	[T_ID] [int] NOT NULL,
	[U_ID] [int] NOT NULL,
	[H_SUM] [int] NOT NULL,
	[H_DISCOUNT] [int] NOT NULL,
	[H_ITEMS] [int] NOT NULL,
	[C_ID] [int] NULL,
	[H_TYPE] [int] NULL,
	[Z_ID] [int] NULL,
	[H_RET] [int] NULL,
	[H_DSUM] [int] NULL,
	[RCP_ID] [int] NULL,
	[H_TIME] [int] NULL,
	[R_COURSE] [float] NULL,
	[R_ID] [int] NULL,
	[RET_EXIST] [bit] NULL,
 CONSTRAINT [PK_CHECKS] PRIMARY KEY NONCLUSTERED 
(
	[H_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CHECKS: H_DATE] ON [dbo].[CHECKS] 
(
	[H_DATE] ASC
)
INCLUDE ( [T_ID],
[H_TYPE]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CHECKS: T_ID] ON [dbo].[CHECKS] 
(
	[T_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ip_incfact]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_incfact]
@aid int,  -- ID артикула
@brno  int,
@key nvarchar(255), -- ключ инвентаризации
@mt bit,
@a1 int,
@a2 int
as
begin
	set nocount on
	declare @invid int;
	select @invid = INV_ID from INVENTS where INV_CODE=@key;
	declare @val float;
	declare @txt nvarchar(256);
	set @val = 0.0;
	set @txt = N'';

	select @val = IRS_FQTY, @txt = isnull(IRS_SQTY, N'') from INVENT_RESULT where A_ID=@aid and BR_NO=@brno and INV_ID=@invid and INV_MT=@mt and INV_A1=@a1 and INV_A2=@a2;

	set @val = @val + 1.0
	set @txt = dbo.afn_incstring(@txt);
  update INVENT_RESULT set IRS_FQTY=@val, IRS_SQTY=@txt where A_ID=@aid and BR_NO=@brno and INV_ID=@invid and INV_MT=@mt and INV_A1=@a1 and INV_A2=@a2;
end
GO
/****** Object:  StoredProcedure [dbo].[city_find]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-10-18 16:47:35.653
-- Description:	Выборка городов
--
-- EXEC 
-- =============================================
CREATE PROCEDURE [dbo].[city_find]		
AS
BEGIN
	SET NOCOUNT ON;		
	
	SELECT 
		city_name
		
	FROM
		city
	
	ORDER BY city_name
	
END
GO
/****** Object:  StoredProcedure [dbo].[ap_get_extratypes]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-03-03 16:40:50.570
-- Description:	Перечень типов информационных документов
--				EXEC ap_get_extratypes;
-- =============================================
CREATE PROCEDURE [dbo].[ap_get_extratypes]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT [TYPE],[NAME] FROM [new].[dbo].[EXCHECK_TYPES] ORDER By NAME;
END
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_drilldown]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_drilldown]
@inv int,
@aid int
as
begin
	set nocount on;
	select BR_NO, IRS_FQTY, INV_MT, INV_A1, INV_A2 
		from INVENT_RESULT 
		where A_ID=@aid and INV_ID=@inv
		order by BR_NO;
end
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_create]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_create]
@key nvarchar(255),
@mt bit,
@a1 int,
@a2 int
as
begin
set nocount on
	declare @id int;
	set @id = 0;
	if exists(select * from INVENTS where INV_CODE=@key)
	  raiserror(N'Инвентаризация с указанным кодом уже существует', 16, -1)
	else
	begin
		insert into INVENTS (INV_CODE, INV_MT, INV_A1, INV_A2) values (@key, @mt, @a1, @a2)
		select @id = scope_identity();
	end
	select INV_ID, INV_DATE from INVENTS where INV_ID=@id;
end
GO
/****** Object:  View [dbo].[VW_SALDOMC_ARHIV]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_SALDOMC_ARHIV]
AS
SELECT     *
FROM         dbo.saldomc_arhiv
WHERE     (dat > '2008-05-21') AND (dat < '2008-05-23') AND (kol > 0)
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_DISCOUNT_REAL_P]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-08-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_DISCOUNT_REAL] '20130801','20130804'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_DISCOUNT_REAL_P]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;	
	
	SELECT	
		[Дата] = CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0*CAST(ISNULL(C.R_COURSE,1) AS MONEY),2)),0)		
		,C.[T_ID]		
		,[Тип] = C.[H_TYPE]
		,[Скидка_Чек]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)
				
	INTO #TABLE1
	FROM APunkt_temp.dbo.CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,2,3)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DSUM]>0					AND		
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
		
	SELECT
		[Дата]
		,T_ID
		,case
			when [Тип]=1 then N'Наличные'
			when [Тип]=2 then N'К.Карта'
			when [Тип]=3 then N'Бонусы'			
			else N'0' 
		end as WB_TYPE
		,case 
			when t_id = 2 or t_id = 6 then SUM(ISNULL([Скидка],0))
			else SUM(ISNULL([Скидка_Чек],0))
			end as TOTAL_DISCOUNT_POS
		,case
			when T_ID = 2 Or T_ID = 6 then 0
			else SUM(ISNULL([Скидка_Чек],0))
		end as TOTAL_DISCOUNT_POS_CHEKS_R
		,case
			when [t_ID] = 2 or [T_ID] = 6 then SUM(ISNULL([Скидка_Чек],0))
			else 0
		end as TOTAL_DISCOUNT_POS_CHEKS
	FROM #TABLE1
		WHERE [Скидка]<>0
	GROUP BY
		[Дата]
		,T_ID
		,[Тип]
	ORDER BY
		[Дата]
		,T_ID
		,[Тип]
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_DISCOUNT_REAL_a16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tanya
-- Create date: 2017-10-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_DISCOUNT_REAL_a16] '20130801','20130804'
-- =============================================
create PROCEDURE [dbo].[WORK_BUH_INFO_DISCOUNT_REAL_a16]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;	
	
	SELECT	
		[Дата] = CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0*CAST(ISNULL(C.R_COURSE,1) AS MONEY),2)),0)		
		,C.[T_ID]		
		,[Тип] = C.[H_TYPE]
		,[Скидка_Чек]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)
				
	INTO #TABLE1
	FROM A16.dbo.CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,2,3)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DSUM]>0					AND		
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
		
	SELECT
		[Дата]
		,T_ID
		,case
			when [Тип]=1 then N'Наличные'
			when [Тип]=2 then N'К.Карта'
			when [Тип]=3 then N'Бонусы'			
			else N'0' 
		end as WB_TYPE
		,case 
			when t_id = 2 or t_id = 6 then SUM(ISNULL([Скидка],0))
			else SUM(ISNULL([Скидка_Чек],0))
			end as TOTAL_DISCOUNT_POS
		,case
			when T_ID = 2 Or T_ID = 6 then 0
			else SUM(ISNULL([Скидка_Чек],0))
		end as TOTAL_DISCOUNT_POS_CHEKS_R
		,case
			when [t_ID] = 2 or [T_ID] = 6 then SUM(ISNULL([Скидка_Чек],0))
			else 0
		end as TOTAL_DISCOUNT_POS_CHEKS
	FROM #TABLE1
		WHERE [Скидка]<>0
	GROUP BY
		[Дата]
		,T_ID
		,[Тип]
	ORDER BY
		[Дата]
		,T_ID
		,[Тип]
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_DISCOUNT_REAL]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-08-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_DISCOUNT_REAL] '20130801','20130804'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_DISCOUNT_REAL]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;	
	
	SELECT	
		[Дата] = CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0*CAST(ISNULL(C.R_COURSE,1) AS MONEY),2)),0)		
		,C.[T_ID]		
		,[Тип] = C.[H_TYPE]
		,[Скидка_Чек]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)
				
	INTO #TABLE1
	FROM CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,2,3)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DSUM]>0					AND		
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
		
	SELECT
		[Дата]
		,T_ID
		,case
			when [Тип]=1 then N'Наличные'
			when [Тип]=2 then N'К.Карта'
			when [Тип]=3 then N'Бонусы'			
			else N'0' 
		end as WB_TYPE
		,case 
			when t_id = 2 or t_id = 6 then SUM(ISNULL([Скидка],0))
			else SUM(ISNULL([Скидка_Чек],0))
			end as TOTAL_DISCOUNT_POS
		,case
			when T_ID = 2 Or T_ID = 6 then 0
			else SUM(ISNULL([Скидка_Чек],0))
		end as TOTAL_DISCOUNT_POS_CHEKS_R
		,case
			when [t_ID] = 2 or [T_ID] = 6 then SUM(ISNULL([Скидка_Чек],0))
			else 0
		end as TOTAL_DISCOUNT_POS_CHEKS
	FROM #TABLE1
		WHERE [Скидка]<>0
	GROUP BY
		[Дата]
		,T_ID
		,[Тип]
	ORDER BY
		[Дата]
		,T_ID
		,[Тип]
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_DISCOUNT_P]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[WORK_BUH_INFO_DISCOUNT_P]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата (Возврат)],103) AS DATETIME)		
		, [Скидка] =SUM(TR.[Количество]*(TR.[Цена (Продажа)]-TR.[Цена (Возврат)]))
		, [T_ID] = TR.[Терминал]
		, [Тип] = TR.[Тип]

	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Дата (Возврат)]			= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена (Возврат)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (Продажа)]			= 
			(	SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) FROM CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			
		FROM APunkt_temp.dbo.CHECKS C WITH (NOLOCK)
			INNER JOIN APunkt_temp.dbo.CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]
			INNER JOIN APunkt_temp.dbo.[ARTICLES] A WITH (NOLOCK) ON A.[A_ID] = CI.[A_ID] AND A.[P_ID] NOT IN (44379,43472,52464)
			LEFT OUTER JOIN APunkt_temp.dbo.[CHECKS] C2 WITH (NOLOCK) ON C2.[H_ID] = C.[H_RET]
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  @date2		
		
	) TR
	GROUP BY 
		TR.[Дата (Возврат)]
		,TR.[Терминал]
		,TR.[Тип];

	INSERT INTO #TABLE1
	(
	[Дата]	
	,[Скидка]
	,[T_ID]
	,[Тип]
	)
	
	(SELECT
		CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)		
		,C.[T_ID]		
		,C.[H_TYPE]
	FROM APunkt_temp.dbo.CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,2,3)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DSUM]>0					AND
		C.RCP_ID IS NULL				AND
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	)

	INSERT INTO #TABLE1
	(
	[Дата]	
	,[Скидка]
	,[T_ID]
	,[Тип]
	)
	
	(SELECT
		CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,[Скидка]	= -ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)		
		,C.[T_ID]		
		,4
	FROM APunkt_temp.dbo.CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,2,3)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DSUM]>0					AND
		C.RCP_ID IS NOT NULL				AND
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	)
	
	SELECT
		[Дата]
		,T_ID
		,case
			when [Тип]=1 then N'Продажи Наличные'
			when [Тип]=2 then N'Продажи К.Карта'
			when [Тип]=3 then N'Продажи Бонусы'
			when [Тип]=-1 then N'Возвраты Наличные'
			when [Тип]=-2 then N'Возвраты К.Карта'
			when [Тип]=4 then N'Продажи Льготные'
			else N'0' 
		end as WB_TYPE
		,SUM(ISNULL([Скидка],0)) as TOTAL_DISCOUNT_POS
	FROM #TABLE1
		WHERE [Скидка]<>0
	GROUP BY
		[Дата]
		,T_ID
		,[Тип]
	ORDER BY
		[Дата]
		,T_ID
		,[Тип]
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_DISCOUNT_LGOTA]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-08-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_DISCOUNT_LGOTA] '20130801','20130804'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_DISCOUNT_LGOTA]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;
	
	
	SELECT
		[Дата] = CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)		
		,C.[T_ID]		
		,[Тип] = C.[H_TYPE]
	INTO #TABLE1
	FROM CHECKS C WITH (NOLOCK)	
	WHERE
		C.[H_TYPE] IN (1,2,3)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DSUM]>0					AND
		C.RCP_ID IS NOT NULL			AND
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
		
	SELECT
		[Дата]
		,T_ID
		,case
			when [Тип]=1 then N'Наличные'
			when [Тип]=2 then N'К.Карта'
			when [Тип]=3 then N'Бонусы'			
			else N'0' 
		end as WB_TYPE
		,SUM(ISNULL([Скидка],0)) as TOTAL_DISCOUNT_POS
	FROM #TABLE1
		WHERE [Скидка]<>0
	GROUP BY
		[Дата]
		,T_ID
		,[Тип]
	ORDER BY
		[Дата]
		,T_ID
		,[Тип]
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_Z_7]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-10-30

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_Z_7] '20140424','20140424'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_Z_7]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата],103) AS DATETIME)
		,TR.Z_ID
		,TR.H_ID		
		, [Сумма] =SUM(TR.[Количество]*TR.[Цена])
		, [СуммаНеНДС] =SUM(TR.[КоличествоНеНДС]*TR.[ЦенаНеНДС])
		, [СуммаНеНДС7] =SUM(cast(((TR.[КоличествоНеНДС]*TR.[ЦенаНеНДС])/15.285719508471) as money))
		, [СуммаНДС] =SUM(CAST((TR.[КоличествоНДС]*TR.[ЦенаНДС])/6 AS MONEY))
		, [СуммаБезНДС] =SUM(CAST(TR.[КоличествоНДС]*TR.[ЦенаНДС] AS MONEY))/*-CAST((TR.[КоличествоНДС]*TR.[ЦенаНДС])/6 AS MONEY)*/
		, [T_ID] = TR.[Терминал]
		, [Тип] = TR.[Тип]	

	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Z_ID]						= C.Z_ID
			,[Дата]						= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,C.H_DATE
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена]						= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) 
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			) AS MONEY)
			,case
				when CI.P_TAX IS NULL then CAST(CI.[I_QTY]/1000.0 AS MONEY)			
				else 0
			end as [КоличествоНеНДС]
			,case
				when CI.P_TAX IS NULL then 0
				else CAST(CI.[I_QTY]/1000.0 AS MONEY)
			end as [КоличествоНДС]
			,case
				when CI.P_TAX IS NULL then CAST(	
										(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) 
										-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
										) AS MONEY)
				else 0
			end as [ЦенаНеНДС]
			,case
				when CI.P_TAX IS NULL then 0
				else CAST(	
						(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) 
						-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
						) AS MONEY)
			end as [ЦенаНДС]			
			
		FROM CHECKS C WITH (NOLOCK)
			INNER JOIN CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]			
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  DATEADD(dd,1,@date2)
		
	) TR
	
	GROUP BY 
		TR.[Дата]
		,TR.[Терминал]
		,TR.[Тип]
		,TR.Z_ID
		,TR.H_ID

	insert into #TABLE1
	select 
			[Дата]		= CAST(CONVERT(NVARCHAR,tz.Z_DATE,103) AS DATETIME),
			tz.Z_ID
		,	tz.H_ID
		, [Сумма] =cast(round(((tz.Z_SUMA+tz.Z_SUMB)/100.0),2)as money) 
		, [СуммаНеНДС] =cast(round((tz.Z_SUMB/100.0),2)as money)
		, [СуммаНеНДС7]=cast(round(((tz.Z_SUMB/15.285719508471)/100.0),2)as money)
		, [СуммаНДС] =CAST(round(((tz.Z_SUMA/6.0)/100.0),2) as money)
		, [СуммаБезНДС] =cast(round((tz.Z_SUMA/100.0),2)/*-round(((tz.Z_SUMA/6.0)/100.0),2)*/ as money)
		, [T_ID] = Tz.[t_id]
		, [Тип] = 1	
	
			
	from z_reports tz
	
	WHERE
			
			tz.[z_DATE] >= @date1			AND 
			tz.[z_DATE] <  DATEADD(dd,1,@date2)
	
	SELECT
		[Дата]		
		,Z.Z_NO
		,#TABLE1.Z_ID
		,#TABLE1.T_ID
		,case
			when [Тип]>0 then N'Продажи'			
			else N'Возвраты'
		end as WB_TYPE			
		,SUM(ISNULL([Сумма],0)) as TOTAL_Z
		,SUM(ISNULL([СуммаНеНДС],0)) as TOTAL_Z_NO_NDS
		,SUM(ISNULL([СуммаНеНДС7],0)) as TOTAL_Z_NO_NDS7
		,SUM(ISNULL([СуммаБезНДС],0)) as TOTAL_Z_BEZ_NDS
		,SUM(ISNULL([СуммаНДС],0)) as TOTAL_Z_NDS
	
	INTO #TABLE2
	FROM #TABLE1 INNER JOIN Z_REPORTS Z ON #TABLE1.Z_ID=Z.Z_ID
	GROUP BY
		[Дата]
		,#TABLE1.T_ID
		,[Тип]
		,#TABLE1.Z_ID
		,Z.Z_NO

	SELECT
		[Дата]
		,Z_ID
		,Z_NO
		,T_ID
		,WB_TYPE		
		,SUM(ISNULL([TOTAL_Z],0)) as TOTAL_Z
		,SUM(ISNULL([TOTAL_Z_NO_NDS],0)) as TOTAL_Z_NO_NDS
		,SUM(ISNULL([TOTAL_Z_NO_NDS7],0)) as TOTAL_Z_NO_NDS7
		,SUM(ISNULL([TOTAL_Z_BEZ_NDS],0)) as TOTAL_Z_BEZ_NDS
		,SUM(ISNULL([TOTAL_Z_NDS],0)) as TOTAL_Z_NDS

	FROM #TABLE2
	GROUP BY		
		[Дата]
		,T_ID
		,WB_TYPE
		,Z_ID
		,Z_NO


END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_Z]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-10-30

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_Z] '20140424','20140424'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_Z]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата],103) AS DATETIME)
		,TR.Z_ID
		,TR.H_ID		
		, [Сумма] =SUM(TR.[Количество]*TR.[Цена])
		, [СуммаНеНДС] =SUM(TR.[КоличествоНеНДС]*TR.[ЦенаНеНДС])
		, [СуммаНДС] =SUM(CAST((TR.[КоличествоНДС]*TR.[ЦенаНДС])/6 AS MONEY))
		, [СуммаБезНДС] =SUM(CAST(TR.[КоличествоНДС]*TR.[ЦенаНДС] AS MONEY)-CAST((TR.[КоличествоНДС]*TR.[ЦенаНДС])/6 AS MONEY))
		, [T_ID] = TR.[Терминал]
		, [Тип] = TR.[Тип]	

	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Z_ID]						= C.Z_ID
			,[Дата]						= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,C.H_DATE
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена]						= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) 
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			) AS MONEY)
			,case
				when CI.P_TAX IS NULL then CAST(CI.[I_QTY]/1000.0 AS MONEY)			
				else 0
			end as [КоличествоНеНДС]
			,case
				when CI.P_TAX IS NULL then 0
				else CAST(CI.[I_QTY]/1000.0 AS MONEY)
			end as [КоличествоНДС]
			,case
				when CI.P_TAX IS NULL then CAST(	
										(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) 
										-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
										) AS MONEY)
				else 0
			end as [ЦенаНеНДС]
			,case
				when CI.P_TAX IS NULL then 0
				else CAST(	
						(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) 
						-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
						) AS MONEY)
			end as [ЦенаНДС]			
			
		FROM CHECKS C WITH (NOLOCK)
			INNER JOIN CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]			
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  DATEADD(dd,1,@date2)
		
	) TR
	
	GROUP BY 
		TR.[Дата]
		,TR.[Терминал]
		,TR.[Тип]
		,TR.Z_ID
		,TR.H_ID

	insert into #TABLE1
	select 
			[Дата]		= CAST(CONVERT(NVARCHAR,tz.Z_DATE,103) AS DATETIME),
			tz.Z_ID
		,	tz.H_ID
		, [Сумма] =cast(round(((tz.Z_SUMA+tz.Z_SUMB)/100.0),2)as money) 
		, [СуммаНеНДС] =cast(round((tz.Z_SUMB/100.0),2)as money)
		, [СуммаНДС] =CAST(round(((tz.Z_SUMA/6.0)/100.0),2) as money)
		, [СуммаБезНДС] =cast(round((tz.Z_SUMA/100.0),2)-round(((tz.Z_SUMA/6.0)/100.0),2) as money)
		, [T_ID] = Tz.[t_id]
		, [Тип] = 1	
	
			
	from z_reports tz
	
	WHERE
			
			tz.[z_DATE] >= @date1			AND 
			tz.[z_DATE] <  DATEADD(dd,1,@date2)
	
	SELECT
		[Дата]		
		,Z.Z_NO
		,#TABLE1.Z_ID
		,#TABLE1.T_ID
		,case
			when [Тип]>0 then N'Продажи'			
			else N'Возвраты'
		end as WB_TYPE			
		,SUM(ISNULL([Сумма],0)) as TOTAL_Z
		,SUM(ISNULL([СуммаНеНДС],0)) as TOTAL_Z_NO_NDS
		,SUM(ISNULL([СуммаБезНДС],0)) as TOTAL_Z_BEZ_NDS
		,SUM(ISNULL([СуммаНДС],0)) as TOTAL_Z_NDS
	
	INTO #TABLE2
	FROM #TABLE1 INNER JOIN Z_REPORTS Z ON #TABLE1.Z_ID=Z.Z_ID
	GROUP BY
		[Дата]
		,#TABLE1.T_ID
		,[Тип]
		,#TABLE1.Z_ID
		,Z.Z_NO

	SELECT
		[Дата]
		,Z_ID
		,Z_NO
		,T_ID
		,WB_TYPE		
		,SUM(ISNULL([TOTAL_Z],0)) as TOTAL_Z
		,SUM(ISNULL([TOTAL_Z_NO_NDS],0)) as TOTAL_Z_NO_NDS
		,SUM(ISNULL([TOTAL_Z_BEZ_NDS],0)) as TOTAL_Z_BEZ_NDS
		,SUM(ISNULL([TOTAL_Z_NDS],0)) as TOTAL_Z_NDS

	FROM #TABLE2
	GROUP BY		
		[Дата]
		,T_ID
		,WB_TYPE
		,Z_ID
		,Z_NO


END
GO
/****** Object:  StoredProcedure [dbo].[WORK_card_prod_a16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Кащенко Т.С.
-- Create date: 2017-10-06
-- Description:	Продажа препаратов по кредитке
--	EXEC [dbo].[WORK_card_prod_а16] '20120924','20120925'
-- =============================================
create PROCEDURE [dbo].[WORK_card_prod_a16]
	@date1	datetime,
	@date2	datetime
AS
BEGIN	
	SET NOCOUNT ON;

    SELECT
		C.h_id
		, C.h_no
		, C.h_date
		, [Дата]	= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		, C.t_id
		, C.h_sum
		, C.h_dsum
		, cast ( (cast (C.h_sum as float)-cast(C.h_dsum as float)) /100 as float)  as Summa
		, U.U_fullname	
	FROM
		a16.dbo.checks C	INNER JOIN users U ON C.u_id=U.u_id
	WHERE
		C.h_date>=@date1 AND 
		C.h_date<DATEADD(dd,1,@date2) AND
		C.h_type=2
	ORDER by t_id, h_date


END
GO
/****** Object:  StoredProcedure [dbo].[WORK_card_prod]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2013-01-29
-- Description:	Продажа препаратов по кредитке
--	EXEC [dbo].[WORK_card_prod] '20120924','20120925'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_card_prod]
	@date1	datetime,
	@date2	datetime
	
AS
BEGIN	
	SET NOCOUNT ON;

    SELECT
		C.h_id
		, C.h_no
		, C.h_date
		, [Дата]	= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		, C.t_id 
		, C.h_sum
		, C.h_dsum
		, cast ( (cast (C.h_sum as float)-cast(C.h_dsum as float)) /100 as float)  as Summa
		, U.U_fullname	
	FROM
		checks C	INNER JOIN users U ON C.u_id=U.u_id
	WHERE
		C.h_date>=@date1 AND 
		C.h_date<DATEADD(dd,1,@date2) AND
		C.h_type=2 
		
	ORDER by t_id, h_date


END
GO
/****** Object:  StoredProcedure [dbo].[WORK_card_bonus]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2011-07-18
-- Description:	Добавление бонусов на карту
-- =============================================
CREATE PROCEDURE [dbo].[WORK_card_bonus]
	@cid	int,
	@hid	int	
AS
BEGIN	
	SET NOCOUNT ON;

	IF (SELECT C_ID FROM checks WHERE h_id=@hid)=NULL
	BEGIN
		UPDATE checks 
		SET c_id=@cid
		WHERE h_id=@hid;

		UPDATE check_items 
		SET i_bonus=600
		WHERE h_id=@hid;
	END;

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_ZP_VOZV_A16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tanya
-- Create date: 2017-10-31

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_ZP_VOZV_A16] '20130801','20130804',0,24,0
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_ZP_VOZV_A16]
	@date1	DATETIME,
	@date2	DATETIME	

AS
BEGIN
	SET NOCOUNT ON;

--Выборка по дате-времени-виду товара (предоплата)
	select C.h_id, C.u_id,C.H_sum,C.R_COURSE
	into #pred1
	from	
		[A16].[dbo].[CHECKS] C inner join [A16].[dbo].[CHECK_ITEMS] CH on C.H_id=CH.H_id				
	where
		((c.h_type=-1) or (c.h_type=-2))
		and (c.h_date>=@date1)
		and (c.h_date<@date2)		
		and ((ch.a_id=266460) or (ch.a_id=275300)or (ch.a_id=730510))
	group by C.h_id, C.U_id,C.H_sum, C.R_COURSE

	--Выборка по дате-времени-виду товара (пакеты отдельным чеком)
	select C.h_id, C.u_id,C.H_sum,C.R_COURSE
	into #pak1
	from	
		[A16].[dbo].[CHECKS] C inner join [A16].[dbo].[CHECK_ITEMS] CH on C.H_id=CH.H_id					
	where
		((c.h_type=-1) or (c.h_type=-2))
		and (c.h_date>=@date1)
		and (c.h_date<@date2)
		and ((ch.a_id=351380) or (ch.a_id=351390) or (ch.A_ID=560740))
		and c.h_items=1
	group by C.h_id, C.U_id,C.H_sum,C.R_COURSE

--Выборка по дате-времени (все чеки без предоплаты)
	select h_id,C.H_sum,C.R_COURSE,u_id
	INTO #tmp1

	from	[A16].[dbo].[CHECKS] C 
			
	where
		((c.h_type=-1) or (c.h_type=-2))
		and (c.h_date>=@date1)
		and (c.h_date<@date2)
		and h_id not in (select h_id from #pred1)


	--Выборка по дате-времени (все чеки без предоплаты и пакетов)
	select h_id,C.H_sum,C.R_COURSE,u_id
	INTO #tmp2
	from	[A16].[dbo].[CHECKS] C			
	where
		((c.h_type=-1) or (c.h_type=-2))
		and (c.h_date>=@date1)
		and (c.h_date<@date2)	
		and h_id not in ((select h_id from #pred1) union (select h_id from #pak1))


	select 
		u_id
		, sum (#tmp1.h_sum/100.0*isnull(#tmp1.R_COURSE,1)) as 'ВозвратыСумма-ПредоплатаУслуга'
		, count(#tmp1.h_id) as 'ВозвратыКолЧек-ПредоплатаУслуга'
	into #tmp_itog1
	from #tmp1
	group by u_id

	select 
		u_id
		, sum (#tmp2.h_sum/100.0*isnull(#tmp2.R_COURSE,1)) as 'ВозвратыСумма-ПредоплатаУслуга-Пакет' 
		, count(#tmp2.h_id) as 'ВозвратыКолЧек-ПредоплатаУслуга-Пакет'
	into #tmp_itog2
	from #tmp2
	group by u_id

	select 
		u_fullname as 'ФИО'
		, u_otdel as 'Отдел'
		, [ВозвратыСумма-ПредоплатаУслуга]
		, [ВозвратыКолЧек-ПредоплатаУслуга]
		, [ВозвратыСумма-ПредоплатаУслуга-Пакет]
		, [ВозвратыКолЧек-ПредоплатаУслуга-Пакет]
	from 
		#tmp_itog1
		inner join users on #tmp_itog1.u_id=users.u_id
		left join #tmp_itog2 on #tmp_itog1.u_id=#tmp_itog2.u_id
	order by u_fullname 	

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_ZP_VOZV]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-12-04

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_ZP_VOZV] '20130801','20130804',0,24,0
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_ZP_VOZV]
	@date1	DATETIME,
	@date2	DATETIME	

AS
BEGIN
	SET NOCOUNT ON;

--Выборка по дате-времени-виду товара (предоплата)
	select C.h_id, C.u_id,C.H_sum,C.R_COURSE, C.RET_EXIST
	into #pred1
	from	
		checks C inner join check_items CH on C.H_id=CH.H_id				
	where
		((c.h_type=-1) or (c.h_type=-2))
		and (c.h_date>=@date1)
		and (c.h_date<@date2)		
		and ((ch.a_id=266460) or (ch.a_id=275300)or (ch.a_id=730510))
	group by C.h_id, C.U_id,C.H_sum, C.R_COURSE, C.RET_EXIST

	--Выборка по дате-времени-виду товара (пакеты отдельным чеком)
	select C.h_id, C.u_id,C.H_sum,C.R_COURSE, C.RET_EXIST
	into #pak1
	from	
		checks C inner join check_items CH on C.H_id=CH.H_id					
	where
		((c.h_type=-1) or (c.h_type=-2))
		and (c.h_date>=@date1)
		and (c.h_date<@date2)
		and ((ch.a_id=351380) or (ch.a_id=351390) or (ch.A_ID=560740))
		and c.h_items=1
	group by C.h_id, C.U_id,C.H_sum,C.R_COURSE, C.RET_EXIST

--Выборка по дате-времени (все чеки без предоплаты)
	select h_id,C.H_sum,C.R_COURSE,u_id, C.RET_EXIST
	INTO #tmp1

	from	checks C 
			
	where
		((c.h_type=-1) or (c.h_type=-2))
		and (c.h_date>=@date1)
		and (c.h_date<@date2)
		and h_id not in (select h_id from #pred1)


	--Выборка по дате-времени (все чеки без предоплаты и пакетов)
	select h_id,C.H_sum,C.R_COURSE,u_id,C.RET_EXIST
	INTO #tmp2
	from	checks C			
	where
		((c.h_type=-1) or (c.h_type=-2))
		and (c.h_date>=@date1)
		and (c.h_date<@date2)	
		and h_id not in ((select h_id from #pred1) union (select h_id from #pak1))


	select 
		u_id
		, sum (#tmp1.h_sum/100.0*isnull(#tmp1.R_COURSE,1)) as 'ВозвратыСумма-ПредоплатаУслуга'
		, count(#tmp1.h_id) as 'ВозвратыКолЧек-ПредоплатаУслуга'
	into #tmp_itog1
	from #tmp1
	group by u_id
	----//
	select 
		u_id
		, sum (#tmp1.h_sum/100.0*isnull(#tmp1.R_COURSE,1)) as 'ВозвратыСумма-ПредоплатаУслуга_'
		, count(#tmp1.h_id) as 'ВозвратыКолЧек-ПредоплатаУслуга_'
	into #tmp_itog_1
	from #tmp1
	where #tmp1.RET_EXIST=1
	group by u_id
   -----\\\\
	select 
		u_id
		, sum (#tmp2.h_sum/100.0*isnull(#tmp2.R_COURSE,1)) as 'ВозвратыСумма-ПредоплатаУслуга-Пакет' 
		, count(#tmp2.h_id) as 'ВозвратыКолЧек-ПредоплатаУслуга-Пакет'
	into #tmp_itog2
	from #tmp2
	group by u_id
	-------///
	select 
		u_id
		, sum (#tmp2.h_sum/100.0*isnull(#tmp2.R_COURSE,1)) as 'ВозвратыСумма-ПредоплатаУслуга-Пакет_' 
		, count(#tmp2.h_id) as 'ВозвратыКолЧек-ПредоплатаУслуга-Пакет_'
	into #tmp_itog_2
	from #tmp2
	where #tmp2.RET_EXIST=1
	group by u_id
	------\\\\

		--старое
	select 
		u_fullname--- as 'ФИО'
		, u_otdel ---as 'Отдел'
		, [ВозвратыСумма-ПредоплатаУслуга]
		, [ВозвратыКолЧек-ПредоплатаУслуга]
		, [ВозвратыСумма-ПредоплатаУслуга-Пакет]
		, [ВозвратыКолЧек-ПредоплатаУслуга-Пакет]
	into #itog1 ----
	from 
		#tmp_itog1
		inner join users on #tmp_itog1.u_id=users.u_id
		left join #tmp_itog2 on #tmp_itog1.u_id=#tmp_itog2.u_id
	order by u_fullname 
	------///
	select 
		u_fullname---- as 'ФИО'
		, u_otdel ----as 'Отдел'
		, [ВозвратыСумма-ПредоплатаУслуга_]
		, [ВозвратыКолЧек-ПредоплатаУслуга_]
		, [ВозвратыСумма-ПредоплатаУслуга-Пакет_]
		, [ВозвратыКолЧек-ПредоплатаУслуга-Пакет_]
	into #itog2
	from 
		#tmp_itog_1
		inner join users on #tmp_itog_1.u_id=users.u_id
		left join #tmp_itog_2 on #tmp_itog_1.u_id=#tmp_itog_2.u_id
	order by u_fullname 
	-------\\\
	select 
		#itog1.U_FULLNAME as 'ФИО'
		,#itog1.u_otdel as 'Отдел'
		, [ВозвратыСумма-ПредоплатаУслуга]
		, [ВозвратыКолЧек-ПредоплатаУслуга]
		, [ВозвратыСумма-ПредоплатаУслуга-Пакет]
		, [ВозвратыКолЧек-ПредоплатаУслуга-Пакет]	
		, [ВозвратыСумма-ПредоплатаУслуга_]
		, [ВозвратыКолЧек-ПредоплатаУслуга_]
		, [ВозвратыСумма-ПредоплатаУслуга-Пакет_]
		, [ВозвратыКолЧек-ПредоплатаУслуга-Пакет_]	
		from 
		#itog1	
		left join #itog2 on #itog1.U_FULLNAME=#itog2.U_FULLNAME
order by #itog1.U_FULLNAME

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_ZP_PROD_Ap]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tanya
-- Create date: 2017-10-31

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_ZP_PROD_Ap] '20130801','20130804',0,24,0
-- =============================================
create PROCEDURE [dbo].[WORK_BUH_ZP_PROD_Ap]
	@date1	DATETIME,
	@date2	DATETIME,
	@hour1	INT,
	@hour2	INT,
	@day	INT
AS
BEGIN
	SET NOCOUNT ON;	

	--Выборка по дате-времени-виду товара (предоплата,услуга)
	select C.h_id, C.h_date, C.u_id,C.H_sum,C.H_dsum, C.R_COURSE
	into #pred1
	from	
		[APunkt_temp].[dbo].[checks] C inner join [APunkt_temp].[dbo].[CHECK_ITEMS] CH on C.H_id=CH.H_id				
	where
		((c.h_type=1) or (c.h_type=2))	
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)	
		and ((ch.a_id=266460) or (ch.a_id=275300) or (ch.a_id=356891) or (ch.a_id=356892) or (ch.a_id=356893)or (ch.a_id=356896)or (ch.a_id=356895)or (ch.a_id=423780))
	group by C.h_id, C.U_id,C.H_sum,C.H_dsum, C.H_DATE, C.R_COURSE	

	--Выборка по дате-времени-виду товара (пакеты отдельным чеком)
	select C.h_id, C.u_id,C.H_sum,C.H_dsum, C.h_date, C.R_COURSE
	into #pak1
	from	
		[APunkt_temp].[dbo].[CHECKS] C inner join [APunkt_temp].[dbo].[check_items] CH on C.H_id=CH.H_id
	where
		((c.h_type=1) or (c.h_type=2))	
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)
		and ((ch.a_id=351391) or (ch.a_id=351390) or (ch.a_id=351381)or(ch.a_id=351380)or (ch.a_id=560740) or (ch.a_id=351382) or (ch.a_id=351383))
		and c.h_items=1
	group by C.h_id, C.U_id,C.H_sum,C.H_dsum,C.h_date, C.R_COURSE

	if @day<>0
	begin
		DELETE FROM #pred1 WHERE datepart(weekday,h_date)<>@day
		DELETE FROM #pak1 WHERE datepart(weekday,h_date)<>@day
	end

--Выборка по дате-времени (все чеки без предоплаты)
	select h_id,h_sum,h_dsum,u_id,h_date,R_COURSE
	INTO #tmp1
	from	[APunkt_temp].[dbo].[CHECKS] C			
	where
		((c.h_type=1) or (c.h_type=2))
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)
		and h_id not in (select h_id from #pred1)

	--Выборка по дате-времени (все чеки без предоплаты и пакетов)
	select h_id,h_sum,h_dsum,u_id,h_date,R_COURSE
	INTO #tmp2
	from	[APunkt_temp].[dbo].[CHECKS] C
	where
		((c.h_type=1) or (c.h_type=2))
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)	
		and h_id not in ((select h_id from #pred1) union (select h_id from #pak1))

	if @day<>0
	begin
		DELETE FROM #tmp1 WHERE datepart(weekday,h_date)<>@day
		DELETE FROM #tmp2 WHERE datepart(weekday,h_date)<>@day
	end

	select u_id, sum ((#tmp1.h_sum-#tmp1.h_dsum)/100.0 * ISNULL(#tmp1.R_COURSE,1)) as 'Сумма-ПредоплатаУслуга' , count(#tmp1.h_id) as 'КолЧек-ПредоплатаУслуга'
	into #tmp_itog1
	from #tmp1
	group by u_id

	select u_id, sum ((#tmp2.h_sum-#tmp2.h_dsum)/100.0 * ISNULL(#tmp2.R_COURSE,1)) as 'Сумма-ПредоплатаУслуга-Пакет' , count(#tmp2.h_id) as 'КолЧек-ПредоплатаУслуга-Пакет'
	into #tmp_itog2
	from #tmp2
	group by u_id

	select u_fullname as 'ФИО', u_otdel as 'Отдел', [Сумма-ПредоплатаУслуга], [КолЧек-ПредоплатаУслуга], [Сумма-ПредоплатаУслуга-Пакет], [КолЧек-ПредоплатаУслуга-Пакет]
	from #tmp_itog1
		inner join users on #tmp_itog1.u_id=users.u_id
		left join #tmp_itog2 on #tmp_itog1.u_id=#tmp_itog2.u_id
	order by u_fullname 

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_ZP_PROD_A16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tanya
-- Create date: 2017-10-31

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_ZP_PROD_A16] '20130801','20130804',0,24,0
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_ZP_PROD_A16]
	@date1	DATETIME,
	@date2	DATETIME,
	@hour1	INT,
	@hour2	INT,
	@day	INT
AS
BEGIN
	SET NOCOUNT ON;	

	--Выборка по дате-времени-виду товара (предоплата,услуга)
	select C.h_id, C.h_date, C.u_id,C.H_sum,C.H_dsum, C.R_COURSE
	into #pred1
	from	
		[A16].[dbo].[checks] C inner join [A16].[dbo].[CHECK_ITEMS] CH on C.H_id=CH.H_id				
	where
		((c.h_type=1) or (c.h_type=2))	
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)	
		and ((ch.a_id=266460) or (ch.a_id=275300) or (ch.a_id=356891) or (ch.a_id=356892) or (ch.a_id=356893)or (ch.a_id=356896)or (ch.a_id=356895)or (ch.a_id=423780))
	group by C.h_id, C.U_id,C.H_sum,C.H_dsum, C.H_DATE, C.R_COURSE	

	--Выборка по дате-времени-виду товара (пакеты отдельным чеком)
	select C.h_id, C.u_id,C.H_sum,C.H_dsum, C.h_date, C.R_COURSE
	into #pak1
	from	
		[A16].[dbo].[CHECKS] C inner join [A16].[dbo].[check_items] CH on C.H_id=CH.H_id
	where
		((c.h_type=1) or (c.h_type=2))	
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)
		and ((ch.a_id=351391) or (ch.a_id=351390) or (ch.a_id=351381)or(ch.a_id=351380)or (ch.a_id=560740) or (ch.a_id=351382) or (ch.a_id=351383)or (ch.a_id=351384)or (ch.a_id=804180)or (ch.a_id=789420))
		and c.h_items=1
	group by C.h_id, C.U_id,C.H_sum,C.H_dsum,C.h_date, C.R_COURSE

	if @day<>0
	begin
		DELETE FROM #pred1 WHERE datepart(weekday,h_date)<>@day
		DELETE FROM #pak1 WHERE datepart(weekday,h_date)<>@day
	end

--Выборка по дате-времени (все чеки без предоплаты)
	select h_id,h_sum,h_dsum,u_id,h_date,R_COURSE
	INTO #tmp1
	from	[A16].[dbo].[CHECKS] C			
	where
		((c.h_type=1) or (c.h_type=2))
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)
		and h_id not in (select h_id from #pred1)

	--Выборка по дате-времени (все чеки без предоплаты и пакетов)
	select h_id,h_sum,h_dsum,u_id,h_date,R_COURSE
	INTO #tmp2
	from	[A16].[dbo].[CHECKS] C
	where
		((c.h_type=1) or (c.h_type=2))
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)	
		and h_id not in ((select h_id from #pred1) union (select h_id from #pak1))

	if @day<>0
	begin
		DELETE FROM #tmp1 WHERE datepart(weekday,h_date)<>@day
		DELETE FROM #tmp2 WHERE datepart(weekday,h_date)<>@day
	end

	select u_id, sum ((#tmp1.h_sum-#tmp1.h_dsum)/100.0 * ISNULL(#tmp1.R_COURSE,1)) as 'Сумма-ПредоплатаУслуга' , count(#tmp1.h_id) as 'КолЧек-ПредоплатаУслуга'
	into #tmp_itog1
	from #tmp1
	group by u_id

	select u_id, sum ((#tmp2.h_sum-#tmp2.h_dsum)/100.0 * ISNULL(#tmp2.R_COURSE,1)) as 'Сумма-ПредоплатаУслуга-Пакет' , count(#tmp2.h_id) as 'КолЧек-ПредоплатаУслуга-Пакет'
	into #tmp_itog2
	from #tmp2
	group by u_id

	select u_fullname as 'ФИО', u_otdel as 'Отдел', [Сумма-ПредоплатаУслуга], [КолЧек-ПредоплатаУслуга], [Сумма-ПредоплатаУслуга-Пакет], [КолЧек-ПредоплатаУслуга-Пакет]
	from #tmp_itog1
		inner join users on #tmp_itog1.u_id=users.u_id
		left join #tmp_itog2 on #tmp_itog1.u_id=#tmp_itog2.u_id
	order by u_fullname 

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_ZP_PROD]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-10-30

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_ZP_PROD] '20130801','20130804',0,24,0
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_ZP_PROD]
	@date1	DATETIME,
	@date2	DATETIME,
	@hour1	INT,
	@hour2	INT,
	@day	INT
AS
BEGIN
	SET NOCOUNT ON;	

	--Выборка по дате-времени-виду товара (предоплата,услуга)
	select C.h_id, C.h_date, C.u_id,C.H_sum,C.H_dsum, C.R_COURSE
	into #pred1
	from	
		checks C inner join check_items CH on C.H_id=CH.H_id				
	where
		((c.h_type=1) or (c.h_type=2))	
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)	
		and ((ch.a_id=266460) or (ch.a_id=275300) or (ch.a_id=356891) or (ch.a_id=356892) or (ch.a_id=356893)or (ch.a_id=356896)or (ch.a_id=356895) or (ch.a_id=356898) or (ch.a_id=423780) or (ch.a_id=730510))
	group by C.h_id, C.U_id,C.H_sum,C.H_dsum, C.H_DATE, C.R_COURSE	

	--Выборка по дате-времени-виду товара (пакеты отдельным чеком)
	select C.h_id, C.u_id,C.H_sum,C.H_dsum, C.h_date, C.R_COURSE
	into #pak1
	from	
		checks C inner join check_items CH on C.H_id=CH.H_id
	where
		((c.h_type=1) or (c.h_type=2))	
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)		
		and ((ch.a_id=351391) or (ch.a_id=351390) or (ch.a_id=351381)or(ch.a_id=351380)or (ch.a_id=560740) or (ch.a_id=351382)or (ch.a_id=351383)or (ch.a_id=351384)or (ch.a_id=804180)or (ch.a_id=789420))
		and c.h_items=1
	group by C.h_id, C.U_id,C.H_sum,C.H_dsum,C.h_date, C.R_COURSE

	if @day<>0
	begin
		DELETE FROM #pred1 WHERE datepart(weekday,h_date)<>@day
		DELETE FROM #pak1 WHERE datepart(weekday,h_date)<>@day
	end

--Выборка по дате-времени (все чеки без предоплаты)
	select h_id,h_sum,h_dsum,u_id,h_date,R_COURSE
	INTO #tmp1
	from	checks C			
	where
		((c.h_type=1) or (c.h_type=2))
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)
		and h_id not in (select h_id from #pred1)		

	--Выборка по дате-времени (все чеки без предоплаты и пакетов)
	select h_id,h_sum,h_dsum,u_id,h_date,R_COURSE
	INTO #tmp2
	from	checks C
	where
		((c.h_type=1) or (c.h_type=2))
		and (c.h_date>=@date1)
		and (c.h_date<DATEADD(dd,1,@date2))
		and (datepart (hour,h_date)>=@hour1
		and datepart (hour,h_date)<@hour2)	
		and h_id not in ((select h_id from #pred1) union (select h_id from #pak1))
		
	if @day<>0
	begin
		DELETE FROM #tmp1 WHERE datepart(weekday,h_date)<>@day
		DELETE FROM #tmp2 WHERE datepart(weekday,h_date)<>@day
	end

	select u_id, sum ((#tmp1.h_sum-#tmp1.h_dsum)/100.0 * ISNULL(#tmp1.R_COURSE,1)) as 'Сумма-ПредоплатаУслуга' , count(#tmp1.h_id) as 'КолЧек-ПредоплатаУслуга'
	into #tmp_itog1
	from #tmp1
	group by u_id

	select u_id, sum ((#tmp2.h_sum-#tmp2.h_dsum)/100.0 * ISNULL(#tmp2.R_COURSE,1)) as 'Сумма-ПредоплатаУслуга-Пакет' , count(#tmp2.h_id) as 'КолЧек-ПредоплатаУслуга-Пакет'
	into #tmp_itog2
	from #tmp2
	group by u_id

	select u_fullname as 'ФИО', u_otdel as 'Отдел', [Сумма-ПредоплатаУслуга], [КолЧек-ПредоплатаУслуга], [Сумма-ПредоплатаУслуга-Пакет], [КолЧек-ПредоплатаУслуга-Пакет]
	from #tmp_itog1
		inner join users on #tmp_itog1.u_id=users.u_id
		left join #tmp_itog2 on #tmp_itog1.u_id=#tmp_itog2.u_id
	order by u_fullname 

END
GO
/****** Object:  StoredProcedure [dbo].[UP_POSCI]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2009-06-03 11:47:08.340
-- Description:	Продажи на POS-терминалах за дату 
--				по ЧЕКУ (OPER=10) и СПЕЦИФИКАЦИИ (OPER<>10) чеков
--				
--				EXEC UP_POSCI '20090602',0
--
-- =============================================
CREATE PROCEDURE [dbo].[UP_POSCI] 
	@DT		DATETIME,	-- Дата продаж 
	@T_ID	INT			-- Ид.терминала
AS 
BEGIN 
	SET NOCOUNT ON
	
-- Отбросить время если оно есть
	SET @DT = CONVERT(NVARCHAR,@DT,112)

-- Реестр терминалов
	CREATE TABLE #TERMS (TERM INT)

	IF (@T_ID = 0)	-- по всем терминалам
		INSERT #TERMS SELECT DISTINCT T_ID
		FROM CHECKS  WITH (NOLOCK)
	ELSE			-- по одному, заданному параметром, терминалу
		INSERT #TERMS SELECT @T_ID
	
	SELECT
		[P_ID]		= N'HALL1',
		[STIME]		= A.H_DATE,
		[OPER]		= CASE WHEN A.[H_TYPE] > 0 THEN 1 ELSE 2 END, -- 1-Продажа/2-Возврат
		[DEP]		= A.[T_ID],
		[ARTICUL]	= B.[A_ID],
		[COUNT]		= B.[I_QTY],
		[PRICE]		= B.[I_PRICE]-B.[I_PRICE]/100.0*(B.[I_DISCOUNT]/100.0)
	FROM CHECKS A WITH (NOLOCK)
	LEFT JOIN CHECK_ITEMS	B WITH (NOLOCK) ON A.[H_ID] = B.[H_ID] 
--	LEFT JOIN ARTICLES		D WITH (NOLOCK) ON B.[A_ID] = D.[A_ID] 
--	LEFT JOIN PRODUCTS		C WITH (NOLOCK) ON D.[P_ID] = C.[P_ID]
	WHERE
		A.[H_TYPE] IN (1,2,-1,-2)			AND	-- Продажи (1-наличные/2-безналичные) и Возвраты (-1/-2)
		A.[H_DATE] >= @DT					AND -- Дата начало
		A.[H_DATE] <  DATEADD(DAY,1,@DT)	AND -- Дата окончание
		A.[T_ID] IN (SELECT TERM FROM #TERMS)	-- По заданным терминалам

	UNION ALL
	SELECT
		[P_ID]		= N'HALL1',
		[STIME]		= A.[H_DATE],
		[OPER]		= 10,											-- 10-Чек
		[DEP]		= A.[T_ID],
		[ARTICUL]	= NULL,
		[COUNT]		= NULL,
		[PRICE]		= A.[H_SUM]
	FROM CHECKS A WITH (NOLOCK)
	WHERE 
		A.[H_TYPE] IN (1,2,-1,-2)			AND	-- Продажи (1-наличные/2-безналичные) и Возвраты (-1/-2)
		A.[H_DATE] >= @DT					AND -- Дата начало
		A.[H_DATE] <  DATEADD(DAY,1,@DT)	AND -- Дата окончание
		A.[T_ID] IN (SELECT TERM FROM #TERMS)	-- По заданным терминалам
	ORDER BY 4,2,3

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_DISCOUNT_DATE]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.
-- Create date: 2016-06-10
-- Description:	Протокол изменения предоставляемой скидки по дате
--				Формирует отчет "Протокол изменения предоставляемой скидки"

-- EXEC [dbo].[WORK_DISCOUNT_DATE] '2016-06-15 14:55:02.777'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_DISCOUNT_DATE]
	@DT	NVARCHAR(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @DD DATETIME;
	
	IF @DT IS NULL
	   SELECT @DT = CONVERT(NVARCHAR,MAX([PD_DATETIME]),121) FROM [new].[dbo].[PRODUCTS_DISCOUNT];
	
	SELECT @DD=CAST(FLOOR(CAST(CONVERT(DATETIME,@DT,121) AS FLOAT)) AS DATETIME)
	
	SELECT	PD.P_ID
			,P.P_NAME
			,M.M_NAME
			,PD.PD_FLAG
			,PD.PD_DATETIME
			,[DTS_SHOW] = CONVERT(NVARCHAR,PD.PD_DATETIME,121)
	FROM PRODUCTS_DISCOUNT PD 
		INNER JOIN PRODUCTS P
					ON PD.P_ID=P.P_ID
		INNER JOIN MANUFACTURERS M
					ON P.M_ID=M.M_ID
	WHERE	--PD_FLAG=1 AND 
			CAST(FLOOR(CAST(PD.PD_DATETIME AS FLOAT)) AS DATETIME)=@DD		
	ORDER BY P.P_NAME

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_DISCOUNT_CONTROL]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.
-- Create date: 2016-06-29
-- Description:	Проверка правильности формирования действующего списка по скидкам

-- EXEC [dbo].[WORK_DISCOUNT_CONTROL]
-- =============================================
CREATE PROCEDURE [dbo].[WORK_DISCOUNT_CONTROL]	
AS
BEGIN
	SET NOCOUNT ON;	
	
	SELECT	PR.P_ID
			,PR.P_NAME 
	FROM 
		(SELECT P_ID, P_NAME FROM PRODUCTS WHERE P_DISC=0) PR 
		LEFT JOIN 
		(
			SELECT	PD.P_ID
					,P.P_NAME
					,M.M_NAME
					,PD.PD_FLAG
					,PD.PD_DATETIME
					,[DTS_SHOW] = CONVERT(NVARCHAR,PD.PD_DATETIME,121)
			FROM	PRODUCTS_DISCOUNT PD 
					INNER JOIN (SELECT  P_ID, MAX(PD_DATETIME) as DATE_SHOW 
							FROM PRODUCTS_DISCOUNT GROUP BY P_ID) PD_TEMP
						ON (PD.P_ID=PD_TEMP.P_ID) and (PD.PD_DATETIME=PD_TEMP.DATE_SHOW)
					INNER JOIN PRODUCTS P
						ON PD.P_ID=P.P_ID
					INNER JOIN MANUFACTURERS M
						ON P.M_ID=M.M_ID
			WHERE PD_FLAG=1
		) PP
		ON PR.P_ID=PP.P_ID

	WHERE PP.P_ID is NULL

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_DISCOUNT_ALL]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.
-- Create date: 2016-06-10
-- Description:	Действующий список по скидкам 
--				Формирует отчет "Перечень товаров, на который предоставляется скидка"

-- EXEC [dbo].[WORK_DISCOUNT_ALL]
-- =============================================
CREATE PROCEDURE [dbo].[WORK_DISCOUNT_ALL]
AS
BEGIN
	SET NOCOUNT ON;	

	SELECT	PD.P_ID
			,P.P_NAME
			,M.M_NAME
			,PD.PD_FLAG
			,PD.PD_DATETIME
			,[DTS_SHOW] = CONVERT(NVARCHAR,PD.PD_DATETIME,121)
	FROM PRODUCTS_DISCOUNT PD 
		INNER JOIN (SELECT  P_ID, MAX(PD_DATETIME) as DATE_SHOW 
					FROM PRODUCTS_DISCOUNT GROUP BY P_ID) PD_TEMP
					ON (PD.P_ID=PD_TEMP.P_ID) and (PD.PD_DATETIME=PD_TEMP.DATE_SHOW)
		INNER JOIN PRODUCTS P
					ON PD.P_ID=P.P_ID
		INNER JOIN MANUFACTURERS M
					ON P.M_ID=M.M_ID
	WHERE PD_FLAG=1
	ORDER BY P.P_NAME

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_PREPAYMENT_VOZV_a16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tanya(LEKO)
-- Create date: 2017-10-06
-- Description:	Проверка предоплаты
--	EXEC [dbo].[WORK_PREPAYMENT_VOZV_a16] '20171001','20171006'
-- =============================================
create PROCEDURE [dbo].[WORK_PREPAYMENT_VOZV_a16]
	@date1	datetime,
	@date2	datetime
AS
BEGIN	
	SET NOCOUNT ON;
		
	SELECT
		C.h_id
		,h_no
		,h_date
		,t_id
		,(case when (t_id=2) then 2 else 1 end) as otdel
		,i_qtyu
		,u_fullname as fio
		into	#vozv
		from 
			A16.dbo.checks C inner join A16.dbo.check_items CI on C.h_id=CI.h_id
					inner join users U on C.u_id=U.u_id
		where (h_date>=@date1) and
				(h_date<=DATEADD(dd,1,@date2)) and
				(h_type=-1 or h_type=-2) and
				(a_id=275300 Or a_id=266460)

		SELECT	
			otdel
			,t_id
			,h_id
			,h_no
			,h_date
			,fio
			,i_qtyu * 2 as vozv			
			from #vozv
			order by otdel,t_id,h_date
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_PREPAYMENT_VOZV]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
--- Author:		LEKO
-- Create date: 2012-09-26
-- Description:	Проверка предоплаты
--	EXEC [dbo].[WORK_PREPAYMENT_VOZV] '20171001','20171006'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_PREPAYMENT_VOZV]
	@date1	datetime,
	@date2	datetime
AS
BEGIN	
	SET NOCOUNT ON;
		
	SELECT
		C.h_id
		,h_no
		,h_date
		,t_id
		,(case when t_id=5 then 3 else (case when (t_id=3 or t_id=6) then 2 else 1 end) end) as otdel
		,i_qtyu
		,u_fullname as fio
		into	#vozv
		from 
			checks C inner join check_items CI on C.h_id=CI.h_id
					inner join users U on C.u_id=U.u_id
		where (h_date>=@date1) and
				(h_date<=DATEADD(dd,1,@date2)) and
				(h_type=-1 or h_type=-2) and
				(a_id=275300 Or a_id=266460 Or a_id=730510)

		SELECT	
			otdel
			,t_id
			,h_id
			,h_no
			,h_date
			,fio
			,i_qtyu * 2 as vozv			
			from #vozv
			order by otdel,t_id,h_date
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_PREPAYMENT_PROD_a16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tanya(LEKO)
-- Create date: 2017-10-06
-- Description:	Проверка предоплаты
--	EXEC [dbo].[WORK_PREPAYMENT_PROD_a16] '20171001','20171006'
-- =============================================
create PROCEDURE [dbo].[WORK_PREPAYMENT_PROD_a16]
	@date1	datetime,
	@date2	datetime
AS
BEGIN	
	SET NOCOUNT ON;
	
	SELECT
		C.h_id
		,h_no
		,h_date
		,t_id
		,(case when (t_id=2) then 2 else 1 end) as otdel
		,i_qtyu
		,u_fullname as fio
		into	#prod
		from 
			A16.dbo.checks C inner join A16.dbo.check_items CI on C.h_id=CI.h_id
					inner join users U on C.u_id=U.u_id
		where (h_date>=@date1) and
				(h_date<=DATEADD(dd,1,@date2)) and
				(h_type=1 or h_type=2) and
				(a_id=275300 Or a_id=266460)
	
		
		SELECT			
			otdel
			,t_id
			,h_id
			,h_no
			,h_date
			,fio
			,i_qtyu * 2 as prod			
			from #prod		
			order by otdel,t_id,h_date
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_PREPAYMENT_PROD]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		LEKO
-- Create date: 2012-09-26
-- Description:	Проверка предоплаты
--	EXEC [dbo].[WORK_PREPAYMENT_PROD] '20120924','20120924'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_PREPAYMENT_PROD]
	@date1	datetime,
	@date2	datetime
AS
BEGIN	
	SET NOCOUNT ON;
	
	SELECT
		C.h_id
		,h_no
		,h_date
		,t_id
		,(case when t_id=5 then 3 else (case when (t_id=3 or t_id=6) then 2 else 1 end) end) as otdel
		,i_qtyu
		,u_fullname as fio
		into	#prod
		from 
			checks C inner join check_items CI on C.h_id=CI.h_id
					inner join users U on C.u_id=U.u_id
		where (h_date>=@date1) and
				(h_date<=DATEADD(dd,1,@date2)) and
				(h_type=1 or h_type=2) and
				(a_id=275300 Or a_id=266460 Or a_id=730510)
	
		
		SELECT			
			otdel
			,t_id
			,h_id
			,h_no
			,h_date
			,fio
			,i_qtyu * 2 as prod			
			from #prod		
			order by otdel,t_id,h_date
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_PREPAYMENT_OST_a16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tanya(LEKO)
-- Create date: 2017-10-06
-- Description:	Проверка предоплаты
--	EXEC [dbo].[WORK_PREPAYMENT_OST_a16] '20171006'
-- =============================================
create PROCEDURE [dbo].[WORK_PREPAYMENT_OST_a16]
	@date	datetime
AS
BEGIN	
	SET NOCOUNT ON;
		
	SELECT		
		C.h_id
		,t_id
		,(case when (t_id=2) then 2 else 1 end)  as otdel
		,i_qtyu		
		into	#ost
		from 
			a16.dbo.checks C inner join a16.dbo.check_items CI on C.h_id=CI.h_id
		where (h_date<@date) and 
				(h_date>='20080101') and
				(a_id=275300 Or a_id=266460)

	SELECT
		otdel
		, Sum(i_qtyu)*2 as ost
		from #ost
		group by otdel
		order by otdel
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_PREPAYMENT_OST]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		LEKO
-- Create date: 2012-09-26
-- Description:	Проверка предоплаты
--	EXEC [dbo].[WORK_PREPAYMENT_OST] '20120924'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_PREPAYMENT_OST]
	@date	datetime
AS
BEGIN	
	SET NOCOUNT ON;
		
	SELECT		
		C.h_id
		,t_id
		,(case when t_id=5 then 3 else (case when (t_id=3 or t_id=6) then 2 else 1 end) end) as otdel
		,i_qtyu		
		into	#ost
		from 
			checks C inner join check_items CI on C.h_id=CI.h_id
		where (h_date<@date) and 
				(h_date>='20080101') and
				(a_id=275300 Or a_id=266460 Or a_id=730510)

	SELECT
		otdel
		, Sum(i_qtyu)*2 as ost
		from #ost
		group by otdel
		order by otdel
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_OTKAZ_FIO]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-12-04

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_OTKAZ_FIO] '20131201','20131231'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_OTKAZ_FIO]
	@date1	DATETIME,
	@date2	DATETIME	

AS
BEGIN
	SET NOCOUNT ON;

--Выборка по дате-времени-виду товара (предоплата)
	select 
		pr.prov_name 
		, count(pr.prov_id) as kol
		, pr.prov_otdel 
	from	
		otkaz O inner join SP_PROV PR on O.prov_id=PR.prov_id
	where
		(o.date>=@date1)
		and (o.date<DATEADD(dd,1,@date2))				
	
	group by pr.prov_name, pr.prov_otdel
	order by pr.prov_otdel, kol desc
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_customers_find]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2011-07-19
-- Description:	Поиск карточки клиента
-- =============================================
CREATE PROCEDURE [dbo].[WORK_customers_find]
	@code as int,
	@name as nvarchar(25),
	@fname as nvarchar(25),
	@sname as nvarchar(25)
	
AS
BEGIN	
	SET NOCOUNT ON;

    SELECT 
		c_id,
		c_code,
		c_name,
		c_fname,
		c_sname
	FROM
		customers C
	WHERE 
		C.c_code like N'%'+CAST(@code as nvarchar)+'%' or
		C.c_name like N'%'+CAST(@name as nvarchar)+'%' or
		C.c_fname like N'%'+CAST(@fname as nvarchar)+'%' or
		C.c_sname like N'%'+CAST(@sname as nvarchar)+'%'
	ORDER BY c_name
	
		
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_PRODUCTS_UPDATE]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		LEKO
-- Create date: 2013-07-23
-- Description:	Каталог,все классификаторы
--	EXEC [dbo].[WORK_PRODUCTS_UPDATE]	
-- =============================================
CREATE PROCEDURE [dbo].[WORK_PRODUCTS_UPDATE]
AS
BEGIN	
	SET NOCOUNT ON;


select
	K.nrec, ES.VALUE
INTO #T_ATC
FROM [192.168.24.152].GAL208.dbo.KATMC K inner join
		[192.168.24.152].GAL208.dbo.EXCLASSVAL EV on K.nrec=EV.CREC inner join
		[192.168.24.152].GAL208.dbo.EXCLASSSEG ES on EV.CCLASSSEG=ES.NREC
WHERE ((EV.CLASSCODE=9) OR (EV.CLASSCODE is null)) AND (ES.VALUE NOT like 'T%') AND (ES.VALUE NOT like 'Т%')

select 
	CREC AS NREC
	,VSTRING	
INTO #T_BUDGET
FROM [192.168.24.152].GAL208.dbo.ATTRVAL		
WHERE (VSTRING IS NOT NULL) AND (VSTRING<>'') AND (WTABLE=1411) AND (CATTRNAM=4612035785572282659)

select 
	CREC AS NREC
	,VSTRING	
INTO #T_OBOZN
FROM [192.168.24.152].GAL208.dbo.ATTRVAL		
WHERE (VSTRING IS NOT NULL) AND (WTABLE=1411) AND (CATTRNAM=4612025349548250528)

select 
	CREC AS NREC
	,VSTRING	
INTO #T_VOL_16
FROM [192.168.24.152].GAL208.dbo.ATTRVAL		
WHERE (VSTRING IS NOT NULL) AND (WTABLE=1411) AND (CATTRNAM=4612206905805660221)

select 
	CREC AS NREC
	,VSTRING	
INTO #T_ADR_AP
FROM [192.168.24.152].GAL208.dbo.ATTRVAL		
WHERE (VSTRING IS NOT NULL) AND (WTABLE=1411) AND (CATTRNAM=4612039079690425756)

select 
	CREC AS NREC
	,VSTRING	
INTO #T_VOL_AP
FROM [192.168.24.152].GAL208.dbo.ATTRVAL		
WHERE (VSTRING IS NOT NULL) AND (WTABLE=1411) AND (CATTRNAM=4611983380205400893)

--Втягивание из таблицы Katmc	
UPDATE
PRODUCTS

SET 
	PRODUCTS.P_NAME = K.NAME,
	PRODUCTS.P_MIN = K.ZAPASMIN, 
	PRODUCTS.P_MAX = K.ZAPASMAX,
	PRODUCTS.P_REMMC = K.REMMC,
	PRODUCTS.P_TNVED = K.TNVED,
	PRODUCTS.P_VOLUME = K.VOLUME,
	PRODUCTS.P_SIZEX = K.SIZEX,
	PRODUCTS.P_SIZEY = K.SIZEY,
	PRODUCTS.P_SIZEZ = CAST(K.SIZEZ AS INT),
	PRODUCTS.P_ATC = K.BARKOD2,
	PRODUCTS.P_SKLAD = K.MASSA,
	PRODUCTS.P_OKDP = K.OKDP,
	PRODUCTS.P_MAXRN = K.MAXRN
	
FROM [192.168.24.152].GAL208.dbo.KATMC K
WHERE K.NREC = PRODUCTS.P_NREC


--Обновление из Exclassval кода АТС
UPDATE
PRODUCTS
SET	
	PRODUCTS.P_ATC_BASE = #T_ATC.VALUE

FROM #T_ATC
WHERE #T_ATC.NREC = PRODUCTS.P_NREC


--Обновление из Attrval бюджета (льготная цена если есть)
UPDATE
PRODUCTS
SET	
	PRODUCTS.P_BUDGET = 1
FROM #T_BUDGET
WHERE #T_BUDGET.NREC = PRODUCTS.P_NREC

--Обновление из Attrval АДРЕСА ДЛЯ АПТЕКИ 16 
UPDATE
PRODUCTS
SET	
	PRODUCTS.P_OBOZN = #T_OBOZN.VSTRING
FROM #T_OBOZN
WHERE #T_OBOZN.NREC = PRODUCTS.P_NREC

--Обновление из Attrval ГРУППЫ МЕНЕДЖЕРА ДЛЯ АПТЕКИ 16 
UPDATE
PRODUCTS
SET	
	PRODUCTS.P_VOL_16 = #T_VOL_16.VSTRING
FROM #T_VOL_16
WHERE #T_VOL_16.NREC = PRODUCTS.P_NREC

--Обновление из Attrval АДРЕСА ДЛЯ АПТЕЧНОГО ПУНКТА
UPDATE
PRODUCTS
SET	
	PRODUCTS.P_ADR_AP = #T_ADR_AP.VSTRING
FROM #T_ADR_AP
WHERE #T_ADR_AP.NREC = PRODUCTS.P_NREC

--Обновление из Attrval ГРУППЫ МЕНЕДЖЕРА ДЛЯ АП
UPDATE
PRODUCTS
SET	
	PRODUCTS.P_VOL_AP = #T_VOL_AP.VSTRING
FROM #T_VOL_AP
WHERE #T_VOL_AP.NREC = PRODUCTS.P_NREC
    
END
GO
/****** Object:  StoredProcedure [dbo].[UP_GET_YEARS]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- 
--				EXEC [UP_GET_YEARS]
--
-- =============================================
CREATE  PROCEDURE [dbo].[UP_GET_YEARS]
AS
BEGIN 
	SET NOCOUNT ON
	
	SELECT DISTINCT YEAR(H_DATE) AS [YEAR] 
	FROM CHECKS WITH (NOLOCK)
	ORDER BY YEAR(H_DATE) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[UP_GET_TERMINALS]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--
--				EXEC [UP_GET_TERMINALS]
--
-- =============================================
CREATE  PROCEDURE [dbo].[UP_GET_TERMINALS]
AS
BEGIN 
	SET NOCOUNT ON
	
	SELECT 
		  0 AS T_ID
		, '<ВСЕ КАССЫ>' AS T_NAME 
	
	UNION ALL
	SELECT DISTINCT 
		  T_ID
		, N'КАССА №' + CAST(T_ID AS NVARCHAR(3)) AS T_NAME 
	FROM CHECKS  WITH (NOLOCK)
	ORDER BY T_ID
END
GO
/****** Object:  StoredProcedure [dbo].[UP_INSERT_GZ]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[UP_INSERT_GZ] 
	@CODE NVARCHAR(50),
	@NAME NVARCHAR(256) = NULL,
	@TNV NVARCHAR(50) = NULL
AS 
	SET NOCOUNT ON

	INSERT INTO GZ (GZ_CODE, GZ_NAME, GZ_TNV)
	VALUES (@CODE, @NAME, @TNV)
GO
/****** Object:  StoredProcedure [dbo].[UP_CLEAR_SALDOMC]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:	<Author,,Name>
-- ALTER  date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE     PROCEDURE [dbo].[UP_CLEAR_SALDOMC]
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO SALDOMC_ARHIV
		(NAME
		,NREC
		,KOL
		,DAT
		,PODR
		,VOLUME)
	SELECT 
		 NAME
		,NREC
		,KOL
		,DAT
		,PODR
		,VOLUME
	FROM SALDOMC WITH (NOLOCK)

	TRUNCATE TABLE SALDOMC
END
GO
/****** Object:  StoredProcedure [dbo].[UP_CLEAR_GZ]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UP_CLEAR_GZ]
AS 
	SET NOCOUNT ON
	DELETE FROM GZ
GO
/****** Object:  StoredProcedure [dbo].[UP_GET_CHECKS]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--
--				EXEC [UP_GET_CHECKS] 2009,5,24,1
--
-- =============================================
CREATE  PROCEDURE [dbo].[UP_GET_CHECKS] 
	@YEAR INT, 
	@MONTH INT, 
	@DAY INT, 
	@TERM INT
AS 
BEGIN
	SET NOCOUNT ON

-- Реестр терминалов
	CREATE TABLE #TERMS (TERM INT)

	IF (@TERM = 0)	-- по всем терминалам
		INSERT #TERMS SELECT DISTINCT T_ID
		FROM CHECKS  WITH (NOLOCK)
	ELSE			-- по одному, заданному параметром, терминалу
		INSERT #TERMS SELECT @TERM

	SELECT 
		H_DATE,		--0
		H_NO,		--1
		H_SUM,		--2
		T_ID,		--3
		U_ID,		--4
		H_SUM,		--5
		H_DISCOUNT,	--6
		H_ITEMS,	--7
		CASE H_TYPE WHEN -1 THEN -1 ELSE 10 END AS H_TYPE
	FROM CHECKS A WITH (NOLOCK)
	WHERE 
		A.H_TYPE IN (1,2)		AND			-- Только продажи (1-наличные/2-безналичные)
		YEAR(A.H_DATE) = @YEAR	AND 
		MONTH(A.H_DATE)= @MONTH	AND 
		DAY(A. H_DATE) = @DAY	AND 
		A.T_ID IN (SELECT TERM FROM #TERMS)	-- По заданным терминалам
	ORDER BY A.H_NO,A.H_SUM
END
GO
/****** Object:  StoredProcedure [dbo].[rezerv_find_last]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-04-19 14:31:35.653
-- Description:	Ищем последний уже отработанный отказ
--
-- EXEC [otkaz_view] 0,0
-- =============================================
CREATE PROCEDURE [dbo].[rezerv_find_last]
AS
BEGIN
	SET NOCOUNT ON;	
	
	SELECT
		id,
		a_id,		
		counts,
		evaible		
	FROM
		rezerv
	WHERE id in (select max(id) from rezerv where evaible=0)	

END
GO
/****** Object:  Table [dbo].[RECEIPES]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECEIPES](
	[RCP_ID] [int] IDENTITY(1,1) NOT NULL,
	[RCPC_CODE] [nchar](2) NULL,
	[RCPS_CODE] [nchar](2) NULL,
	[RCP_NAME] [nvarchar](255) NULL,
	[RCP_DOCTOR] [nvarchar](255) NULL,
	[RCP_DISCOUNT] [float] NOT NULL,
	[D_ID] [int] NULL,
	[RCP_NO] [nvarchar](64) NULL,
	[RCP_DOCNO] [nvarchar](64) NULL,
	[RI_SUPID] [int] NULL,
	[RI_POLICENO] [nvarchar](255) NULL,
	[CT_ID] [bigint] NULL,
 CONSTRAINT [PK_RECEIPES] PRIMARY KEY NONCLUSTERED 
(
	[RCP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[rezerv_show_useres]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-04-21 14:31:35.653
-- Description:	Информация о причинах
--
-- select * from sp_prov
-- =============================================
CREATE PROCEDURE [dbo].[rezerv_show_useres]	
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT 
		U_ID
		,U_FULLNAME		
		
	from users
	where U_active>=1

	ORDER BY U_FULLNAME

END
GO
/****** Object:  Table [dbo].[USER_TERM]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_TERM](
	[U_ID] [int] NOT NULL,
	[T_ID] [int] NOT NULL,
	[UT_NO] [int] NOT NULL,
	[UT_PWD] [nvarchar](8) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_CASH_P]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-08-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_CASH] '20130801','20130804'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_CASH_P]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;
	

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,C.[H_TYPE]
		,C.[T_ID]
		,[Сумма]	= SUM(	ROUND(CAST(C.H_SUM AS MONEY)/100.0*ISNULL(R_COURSE,1),2))
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0*ISNULL(R_COURSE,1),2)),0)
		,[СуммаРуб] = SUM(	ROUND(CAST(C.H_SUM AS MONEY)/100.0,2))
		,[СкидкаРуб]= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)
		
	INTO #TABLE1
	FROM APunkt_temp.dbo.CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,-1)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	ORDER BY
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]	

	SELECT
		[Дата]
		,T_ID
		,case
			when H_TYPE=1 then N'Продажи'
			when H_TYPE=-1 then N'Возвраты'
			else N'0' 
		end as WB_TYPE
		,case
			when t_id = 2 or t_id = 6 then SUM(ISNULL([Сумма],0)-ISNULL([Скидка],0))
			else SUM(ISNULL([СуммаРуб],0)-ISNULL([СкидкаРуб],0))
			end as TOTAL_RASH_POS
		,case 
		when t_ID = 2 then 0 
		when t_ID = 6 then 0
		 else SUM(ISNULL([СуммаРуб],0)-ISNULL([СкидкаРуб],0)) 
		 end  as TOTAL_RASH_POS_R
		 ,case 
			when T_ID = 2 Or T_ID = 6 then SUM(ISNULL([СуммаРуб],0)-ISNULL([СкидкаРуб],0))
			else 0
		end as TOTAL_RASH_POS_UAH				
	
	FROM #TABLE1
	GROUP BY		
		[Дата]
		,T_ID
		,H_TYPE

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_CASH_a16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tanya
-- Create date: 2013-08-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_CASH_a16] '20130801','20130804'
-- =============================================
create PROCEDURE [dbo].[WORK_BUH_INFO_CASH_a16]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;
	

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,C.[H_TYPE]
		,C.[T_ID]
		,[Сумма]	= SUM(	ROUND(CAST(C.H_SUM AS MONEY)/100.0*ISNULL(R_COURSE,1),2))
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0*ISNULL(R_COURSE,1),2)),0)
		,[СуммаРуб] = SUM(	ROUND(CAST(C.H_SUM AS MONEY)/100.0,2))
		,[СкидкаРуб]= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)
		
	INTO #TABLE1
	FROM A16.dbo.CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,-1)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	ORDER BY
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]	

	SELECT
		[Дата]
		,T_ID
		,case
			when H_TYPE=1 then N'Продажи'
			when H_TYPE=-1 then N'Возвраты'
			else N'0' 
		end as WB_TYPE
		,case
			when t_id = 2 or t_id = 6 then SUM(ISNULL([Сумма],0)-ISNULL([Скидка],0))
			else SUM(ISNULL([СуммаРуб],0)-ISNULL([СкидкаРуб],0))
			end as TOTAL_RASH_POS
		,case 
		when t_ID = 2 then 0 
		when t_ID = 6 then 0
		 else SUM(ISNULL([СуммаРуб],0)-ISNULL([СкидкаРуб],0)) 
		 end  as TOTAL_RASH_POS_R
		 ,case 
			when T_ID = 2 Or T_ID = 6 then SUM(ISNULL([СуммаРуб],0)-ISNULL([СкидкаРуб],0))
			else 0
		end as TOTAL_RASH_POS_UAH				
	
	FROM #TABLE1
	GROUP BY		
		[Дата]
		,T_ID
		,H_TYPE

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_CASH]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-08-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_CASH] '20130801','20130804'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_CASH]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;
	

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,C.[H_TYPE]
		,C.[T_ID]
		,[Сумма]	= SUM(	ROUND(CAST(C.H_SUM AS MONEY)/100.0*ISNULL(R_COURSE,1),2))
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0*ISNULL(R_COURSE,1),2)),0)
		,[СуммаРуб] = SUM(	ROUND(CAST(C.H_SUM AS MONEY)/100.0,2))
		,[СкидкаРуб]= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)
		
	INTO #TABLE1
	FROM CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,-1)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	ORDER BY
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]	

	SELECT
		[Дата]
		,T_ID
		,case
			when H_TYPE=1 then N'Продажи'
			when H_TYPE=-1 then N'Возвраты'
			else N'0' 
		end as WB_TYPE
		,case
			when t_id = 2 or t_id = 6 then SUM(ISNULL([Сумма],0)-ISNULL([Скидка],0))
			else SUM(ISNULL([СуммаРуб],0)-ISNULL([СкидкаРуб],0))
			end as TOTAL_RASH_POS
		,case 
		when t_ID = 2 then 0 
		when t_ID = 6 then 0
		 else SUM(ISNULL([СуммаРуб],0)-ISNULL([СкидкаРуб],0)) 
		 end  as TOTAL_RASH_POS_R
		 ,case 
			when T_ID = 2 Or T_ID = 6 then SUM(ISNULL([СуммаРуб],0)-ISNULL([СкидкаРуб],0))
			else 0
		end as TOTAL_RASH_POS_UAH				
	
	FROM #TABLE1
	GROUP BY		
		[Дата]
		,T_ID
		,H_TYPE

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_CARD_P]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Lena(tanya(leko))
-- Create date: 2013-08-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_CARD] '20130801','20130804'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_CARD_P]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	
	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,C.[H_TYPE]
		,C.[T_ID]
		,[Сумма]	= SUM(	ROUND(CAST(C.H_SUM AS MONEY)/100.0 * ISNULL(R_COURSE,1),2))
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0 * ISNULL(R_COURSE,1),2)),0)

	INTO #TABLE1
	FROM APunkt_temp.dbo.CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (2,-2)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	ORDER BY
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]	

	SELECT
		[Дата]
		,T_ID
		,case
			when H_TYPE=2 then N'Продажи'
			when H_TYPE=-2 then N'Возвраты'
			else N'0' 
		end as WB_TYPE		
		,SUM(ISNULL([Сумма],0)-ISNULL([Скидка],0)) as TOTAL_RASH_POS		
	FROM #TABLE1
	GROUP BY		
		[Дата]
		,T_ID
		,H_TYPE


END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_CARD_a16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tanya(leko)
-- Create date: 2013-08-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_CARD] '20130801','20130804'
-- =============================================
create PROCEDURE [dbo].[WORK_BUH_INFO_CARD_a16]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	
	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,C.[H_TYPE]
		,C.[T_ID]
		,[Сумма]	= SUM(	ROUND(CAST(C.H_SUM AS MONEY)/100.0 * ISNULL(R_COURSE,1),2))
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0 * ISNULL(R_COURSE,1),2)),0)

	INTO #TABLE1
	FROM a16.dbo.CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (2,-2)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	ORDER BY
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]	

	SELECT
		[Дата]
		,T_ID
		,case
			when H_TYPE=2 then N'Продажи'
			when H_TYPE=-2 then N'Возвраты'
			else N'0' 
		end as WB_TYPE		
		,SUM(ISNULL([Сумма],0)-ISNULL([Скидка],0)) as TOTAL_RASH_POS		
	FROM #TABLE1
	GROUP BY		
		[Дата]
		,T_ID
		,H_TYPE


END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_CARD]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-08-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_CARD] '20130801','20130804'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_CARD]
	@date1	DATETIME,
	@date2	DATETIME

AS
BEGIN
	SET NOCOUNT ON;

	
	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,C.[H_TYPE]
		,C.[T_ID]
		,[Сумма]	= SUM(	ROUND(CAST(C.H_SUM AS MONEY)/100.0 * ISNULL(R_COURSE,1),2))
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0 * ISNULL(R_COURSE,1),2)),0)

	INTO #TABLE1
	FROM CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (2,-2)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
		
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	ORDER BY
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]	

	SELECT
		[Дата]
		,T_ID
		,case
			when H_TYPE=2 then N'Продажи'
			when H_TYPE=-2 then N'Возвраты'
			else N'0' 
		end as WB_TYPE		
		,SUM(ISNULL([Сумма],0)-ISNULL([Скидка],0)) as TOTAL_RASH_POS		
	FROM #TABLE1
	GROUP BY		
		[Дата]
		,T_ID
		,H_TYPE


END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_BONUS]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-08-06

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_BONUS] '20130801','20130804'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_BONUS]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,C.[H_TYPE]
		,C.[T_ID]
		,[Сумма]	= SUM(	ROUND(CAST(C.H_SUM AS MONEY)/100.0,2))
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)

	INTO #TABLE1
	FROM CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] =3					AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	ORDER BY
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]	

	SELECT
		[Дата]
		,T_ID
		,case
			when H_TYPE=3 then N'Продажи'			
			else N'0' 
		end as WB_TYPE		
		,SUM(ISNULL([Сумма],0)-ISNULL([Скидка],0)) as TOTAL_RASH_POS		
	FROM #TABLE1
	GROUP BY		
		[Дата]
		,T_ID
		,H_TYPE

END
GO
/****** Object:  Table [dbo].[PRODUCTS]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTS](
	[P_ID] [int] IDENTITY(1,1) NOT NULL,
	[P_PACK] [int] NOT NULL,
	[P_TAX] [nchar](1) NULL,
	[P_NOPACK] [bit] NOT NULL,
	[P_REG] [bit] NOT NULL,
	[P_LS] [bit] NOT NULL,
	[M_ID] [int] NULL,
	[GR_ID] [int] NULL,
	[P_NAME] [nvarchar](255) NOT NULL,
	[P_UNU] [nchar](8) NULL,
	[P_NREC] [bigint] NULL,
	[P_MIN] [float] NULL,
	[P_MAX] [float] NULL,
	[P_REMMC] [varchar](25) NULL,
	[P_TNVED] [varchar](50) NULL,
	[P_VOLUME] [float] NULL,
	[P_ATC] [nvarchar](50) NULL,
	[P_SIZEX] [float] NULL,
	[P_SIZEY] [float] NULL,
	[P_KOEF] [float] NULL,
	[P_OKDP] [nvarchar](50) NULL,
	[P_SIZEZ] [int] NULL,
	[P_DISC] [bit] NOT NULL,
	[P_CENAKL] [int] NULL,
	[P_BONUS] [bit] NOT NULL,
	[P_SKLAD] [int] NULL,
	[P_MAXRN] [float] NULL,
	[P_REG_DATE] [datetime] NULL,
	[P_LAT_NAME] [nvarchar](255) NULL,
	[P_ATC_BASE] [nvarchar](50) NULL,
	[P_BUDGET] [bit] NULL,
	[P_MNN] [nvarchar](100) NULL,
	[P_OBOZN] [nvarchar](25) NULL,
	[P_VOL_16] [nvarchar](25) NULL,
	[P_DISC_16] [bit] NULL,
	[P_ADR_AP] [nvarchar](25) NULL,
	[P_VOL_AP] [nvarchar](25) NULL,
	[MD_ID] [int] NULL,
 CONSTRAINT [PK_PRODUCTS] PRIMARY KEY NONCLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_PRODUCST: P_REMMC] ON [dbo].[PRODUCTS] 
(
	[P_REMMC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PRODUCTS: M_ID] ON [dbo].[PRODUCTS] 
(
	[M_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PRODUCTS: P_NAME] ON [dbo].[PRODUCTS] 
(
	[P_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PRODUCTS: P_NREC] ON [dbo].[PRODUCTS] 
(
	[P_NREC] ASC
)
INCLUDE ( [P_NAME]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate_Term]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate_Term](
	[T_id] [int] NOT NULL,
	[R_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[otkaz_insert]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2011-07-17
-- Description:	Вставка отказа
-- =============================================
CREATE PROCEDURE [dbo].[otkaz_insert]
	@p_id				int = 0,
	@p_name				nvarchar(255) = '',
	@m_name				nvarchar(255) = '',
	@u_id				int,
	@kassa				nvarchar(50) = '',	
	@date				datetime = GetDate,
	@tnved				nvarchar(10),
	@volume				float,
	@min				float,
	@max				float,
	@maxrn				float,
	@price				float,
	@ost				float,
	@note_id			int,
	@note_id_dop		int = 0,
	@note_text			nvarchar(150) = '',
	@note_id_z			int,
	@note_text_z_dop	nvarchar(150) = ''
	
AS
BEGIN	
	SET NOCOUNT ON;

	INSERT INTO 
    otkaz(
		p_nrec,
		p_name,
		m_name,
		prov_id,
		kassa,
		date,
		otkaz_tnved,
		otkaz_volume,
		otkaz_min,
		otkaz_max,
		otkaz_maxrn,
		otkaz_price_price,
		otkaz_ost_sklad,
		note_id,
		note_id_dop,
		note_text,
		note_id_z,
		note_text_z_dop)
	VALUES   (
		@p_id,
		@p_name,
		@m_name,
		@u_id,
		@kassa,
		@date,
		@tnved,
		@volume,
		@min,
		@max,	
		@maxrn,
		@price,
		@ost,
		@note_id,
		@note_id_dop,
		@note_text,
		@note_id_z,
		@note_text_z_dop
		)
	
END
GO
/****** Object:  StoredProcedure [dbo].[otkaz_delete]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2011-07-17
-- Description:	Удаление отказа
-- =============================================
CREATE PROCEDURE [dbo].[otkaz_delete]
	@otkaz_id	int
	
AS
BEGIN	
	SET NOCOUNT ON;

	DELETE FROM otkaz	
	WHERE otkaz_id=@otkaz_id

END
GO
/****** Object:  StoredProcedure [PRICES].[PRICES_REEUPDATE_A16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		TANYA (GARY)
-- Create date: 2017-09-04 14:45:40.193
-- Description:	Протокол изменения цен в прайс-листе
--				Формирует отчет "Протокол изменения цен"
--				ReportService.REE_PRICESUPDATE_A16
--
--				EXEC [PRICES].[PRICES_REEUPDATE_A16] N'2009-10-19 08:57:07.390'
-- =============================================
CREATE PROCEDURE [PRICES].[PRICES_REEUPDATE_A16]
	@DT	NVARCHAR(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[PRICES].[PRICES_REEUPDATE_A16]';

	DECLARE @DREP	DATETIME;

	IF @DT IS NULL
	   SELECT @DT = CONVERT(NVARCHAR,MAX([DTS_SETPRICE]),121) FROM [new].[dbo].[PRICES_REEUPDATE_A16];

	SELECT @DREP = CONVERT(DATETIME,@DT,121);

	SELECT R.[DTS_SETPRICE]
		  ,R.[P_NREC]
		  ,P.[P_NAME]
		  ,M.[M_NAME]
		  ,R.[PRICE_ACTIVE]
		  ,R.[ACTION_FLAG]
		  ,R.[OENAME]
		  ,R.[OEKOEF]
	FROM [new].[dbo].[PRICES_REEUPDATE_A16] R
	INNER JOIN [new].[dbo].[PRODUCTS] P ON P.[P_NREC]=R.[P_NREC]
	INNER JOIN [new].[dbo].[MANUFACTURERS] M ON M.[M_ID] = P.[M_ID]
	WHERE R.[DTS_SETPRICE]=@DREP
	ORDER BY P.[P_NAME],M.[M_NAME];


-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [PRICES].[PRICES_ACTIVE_LOAD_A16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		TANYA (GARY)
-- Create date: 2017-09-01 14:33:24.337
-- Description:	Загрузка прайс-листов в таблицу цен для POS-терминалов аптеки 16
--				EXEC [PRICES].[PRICES_ACTIVE_LOAD_A16]
-- =============================================
CREATE PROCEDURE [PRICES].[PRICES_ACTIVE_LOAD_A16]
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @P_NREC		BIGINT;
	DECLARE @PRICE		MONEY;
	DECLARE @PRICE_OLD	MONEY;
	DECLARE	@DTSKEY		DATETIME;		-- Ключ сеанса "Дата изменеия цены"
	DECLARE @OENAME		NVARCHAR(20);	-- Наим.отп.ед.измерения
	DECLARE @OEKOEF		FLOAT;			-- Коеф.делим.отп.ед.измерения


-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[PRICES].[PRICES_ACTIVE_LOAD_A16]';

-- Установить значение ключа сеанса "Дата изменеия цены"
	SELECT @DTSKEY = GETDATE();

-- Удалить из табл.цен записи удаленные из предварительно загруженного прайс-листа
-- Добавить запись об удаление в протокол изменения цен в прайс-листе
	INSERT INTO [new].[dbo].[PRICES_REEUPDATE_A16]
	SELECT [P_NREC],[PRICE_ACTIVE],@DTSKEY,0,[OENAME],[OEKOEF]
	FROM  [new].[dbo].[PRICES_ACTIVE_A16]
	WHERE [P_NREC] NOT IN (SELECT [CTHING] FROM [new].[dbo].[PRICES_A16]);

	DELETE FROM [new].[dbo].[PRICES_ACTIVE_A16]
	WHERE [P_NREC] NOT IN (SELECT [CTHING] FROM [new].[dbo].[PRICES_A16]);
-----------------------------------------------------------------------------------

	DECLARE CR_PRICE CURSOR FAST_FORWARD FOR
	SELECT CTHING,CAST(PRICE AS MONEY),NPARTY,SRVPRICE 
	FROM [new].[dbo].[PRICES_A16] ORDER BY CTHING;
	
	OPEN CR_PRICE
	FETCH NEXT FROM CR_PRICE INTO @P_NREC,@PRICE,@OENAME,@OEKOEF;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @PRICE_OLD = [PRICE_ACTIVE] 
		FROM [new].[dbo].[PRICES_ACTIVE_A16]
		WHERE [P_NREC] = @P_NREC

-- Записи по товару в таблице цен для POS-терминала НЕТ		
		IF	NOT EXISTS (SELECT [P_NREC] 
						FROM [new].[dbo].[PRICES_ACTIVE_A16] 
						WHERE [P_NREC] = @P_NREC)
		BEGIN
-- Добавить запись в табл.активных цен 
			INSERT INTO [new].[dbo].[PRICES_ACTIVE_A16]
			SELECT @P_NREC,@PRICE,@DTSKEY,1,ISNULL(@OENAME,N''),ISNULL(@OEKOEF,0)	-- товар,цена,ключ сеанса,флаг,отп.ед,коеф.отп.ед
-- Добавить запись об изменении в протокол изменения цен в прайс-листе
			INSERT INTO [new].[dbo].[PRICES_REEUPDATE_A16]
			SELECT @P_NREC,@PRICE,@DTSKEY,2,ISNULL(@OENAME,N''),ISNULL(@OEKOEF,0) -- товар,цена,ключ сеанса,флаг,отп.ед,коеф.отп.ед
		END
-- Запись по товару в таблице цен для POS-терминала ЕСТЬ
		ELSE					
		BEGIN
			IF	@PRICE_OLD <> @PRICE	-- Новая цена по товру отличается от старой
			BEGIN
				UPDATE [new].[dbo].[PRICES_ACTIVE_A16]
				SET	 [PRICE_ACTIVE] = @PRICE	-- цена
					,[DTS_SETPRICE] = @DTSKEY	-- ключ сеанса
					,[ISUPDATE]		= 1			-- флаг
					,[OENAME]		= @OENAME	-- Наим.отп.ед.измерения
					,[OEKOEF]		= @OEKOEF	-- Коеф.делим.отп.ед.измерения
				WHERE [P_NREC] = @P_NREC		-- для товара
-- Добавить запись об изменении в протокол изменения цен в прайс-листе
				INSERT INTO [new].[dbo].[PRICES_REEUPDATE_A16]
				SELECT @P_NREC,@PRICE,@DTSKEY,1,@OENAME,@OEKOEF -- товар,цена,ключ сеанса,флаг,отп.ед,коеф.отп.ед
			END
		END

		FETCH NEXT FROM CR_PRICE INTO @P_NREC,@PRICE,@OENAME,@OEKOEF;
	END

	CLOSE CR_PRICE;
	DEALLOCATE CR_PRICE;

-- Отметка в SYSPARAMS загрузки прайс-листов. Ключ: PRICES_ACTIVE_LOAD
	--РАССКОММЕНТИТЬ ПОТОМ --IF EXISTS (SELECT SP_NAME FROM [new].[dbo].[SYSPARAMS] WHERE [SP_NAME]='PRICES_ACTIVE_LOAD')
		--UPDATE [new].[dbo].[SYSPARAMS]
		--SET [SP_DATE] = @DTSKEY
		--WHERE [SP_NAME]='PRICES_ACTIVE_LOAD'
	--ELSE
		--INSERT INTO [new].[dbo].[SYSPARAMS] ([SP_NAME],[SP_TID],[SP_DATE])
		--VALUES('PRICES_ACTIVE_LOAD',0,@DTSKEY);

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [PRICES].[PRICES_ACTIVE_LOAD]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2009-09-12 10:42:00.337
-- Description:	Загрузка прайс-листов в таблицу цен для POS-терминалов
--				EXEC [PRICES].[PRICES_ACTIVE_LOAD]
-- =============================================
CREATE PROCEDURE [PRICES].[PRICES_ACTIVE_LOAD]
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @P_NREC		BIGINT;
	DECLARE @PRICE		MONEY;
	DECLARE @PRICE_OLD	MONEY;
	DECLARE	@DTSKEY		DATETIME;		-- Ключ сеанса "Дата изменеия цены"
	DECLARE @OENAME		NVARCHAR(20);	-- Наим.отп.ед.измерения
	DECLARE @OEKOEF		FLOAT;			-- Коеф.делим.отп.ед.измерения


-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[PRICES].[PRICES_ACTIVE_LOAD]';

-- Установить значение ключа сеанса "Дата изменеия цены"
	SELECT @DTSKEY = GETDATE();

-- Удалить из табл.цен записи удаленные из предварительно загруженного прайс-листа
-- Добавить запись об удаление в протокол изменения цен в прайс-листе
	INSERT INTO [new].[dbo].[PRICES_REEUPDATE]
	SELECT [P_NREC],[PRICE_ACTIVE],@DTSKEY,0,[OENAME],[OEKOEF]
	FROM  [new].[dbo].[PRICES_ACTIVE]
	WHERE [P_NREC] NOT IN (SELECT [CTHING] FROM [new].[dbo].[PRICES]);

	DELETE FROM [new].[dbo].[PRICES_ACTIVE]
	WHERE [P_NREC] NOT IN (SELECT [CTHING] FROM [new].[dbo].[PRICES]);
-----------------------------------------------------------------------------------

	DECLARE CR_PRICE CURSOR FAST_FORWARD FOR
	SELECT CTHING,CAST(PRICE AS MONEY),NPARTY,SRVPRICE 
	FROM [new].[dbo].[PRICES] ORDER BY CTHING;
	
	OPEN CR_PRICE
	FETCH NEXT FROM CR_PRICE INTO @P_NREC,@PRICE,@OENAME,@OEKOEF;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SELECT @PRICE_OLD = [PRICE_ACTIVE] 
		FROM [new].[dbo].[PRICES_ACTIVE]
		WHERE [P_NREC] = @P_NREC

-- Записи по товару в таблице цен для POS-терминала НЕТ		
		IF	NOT EXISTS (SELECT [P_NREC] 
						FROM [new].[dbo].[PRICES_ACTIVE] 
						WHERE [P_NREC] = @P_NREC)
		BEGIN
-- Добавить запись в табл.активных цен 
			INSERT INTO [new].[dbo].[PRICES_ACTIVE]
			SELECT @P_NREC,@PRICE,@DTSKEY,1,ISNULL(@OENAME,N''),ISNULL(@OEKOEF,0)	-- товар,цена,ключ сеанса,флаг,отп.ед,коеф.отп.ед
-- Добавить запись об изменении в протокол изменения цен в прайс-листе
			INSERT INTO [new].[dbo].[PRICES_REEUPDATE]
			SELECT @P_NREC,@PRICE,@DTSKEY,2,ISNULL(@OENAME,N''),ISNULL(@OEKOEF,0) -- товар,цена,ключ сеанса,флаг,отп.ед,коеф.отп.ед
		END
-- Запись по товару в таблице цен для POS-терминала ЕСТЬ
		ELSE					
		BEGIN
			IF	@PRICE_OLD <> @PRICE	-- Новая цена по товру отличается от старой
			BEGIN
				UPDATE [new].[dbo].[PRICES_ACTIVE]
				SET	 [PRICE_ACTIVE] = @PRICE	-- цена
					,[DTS_SETPRICE] = @DTSKEY	-- ключ сеанса
					,[ISUPDATE]		= 1			-- флаг
					,[OENAME]		= @OENAME	-- Наим.отп.ед.измерения
					,[OEKOEF]		= @OEKOEF	-- Коеф.делим.отп.ед.измерения
				WHERE [P_NREC] = @P_NREC		-- для товара
-- Добавить запись об изменении в протокол изменения цен в прайс-листе
				INSERT INTO [new].[dbo].[PRICES_REEUPDATE]
				SELECT @P_NREC,@PRICE,@DTSKEY,1,@OENAME,@OEKOEF -- товар,цена,ключ сеанса,флаг,отп.ед,коеф.отп.ед
			END
		END

		FETCH NEXT FROM CR_PRICE INTO @P_NREC,@PRICE,@OENAME,@OEKOEF;
	END

	CLOSE CR_PRICE;
	DEALLOCATE CR_PRICE;

-- Отметка в SYSPARAMS загрузки прайс-листов. Ключ: PRICES_ACTIVE_LOAD
	IF EXISTS (SELECT SP_NAME FROM [new].[dbo].[SYSPARAMS] WHERE [SP_NAME]='PRICES_ACTIVE_LOAD')
		UPDATE [new].[dbo].[SYSPARAMS]
		SET [SP_DATE] = @DTSKEY
		WHERE [SP_NAME]='PRICES_ACTIVE_LOAD'
	ELSE
		INSERT INTO [new].[dbo].[SYSPARAMS] ([SP_NAME],[SP_TID],[SP_DATE])
		VALUES('PRICES_ACTIVE_LOAD',0,@DTSKEY);

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [PRICES].[PRICES_ACTIVE_A16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		TANYA (GARY)
-- Create date: 2017-09-01 14:40:48.193
-- Description:	Действующий прайс-лист по товарам.
--				Формирует отчет "Прейскурант рознизных цен"
--				ReportService.REE_PRICESACTIVE
--
--				EXEC [PRICES].[PRICES_ACTIVE_A16]
-- =============================================
CREATE PROCEDURE [PRICES].[PRICES_ACTIVE_A16]
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[PRICES].[PRICES_ACTIVE_A16]';

-- Отчет
	SELECT R.[P_NREC]
		  ,P.[P_NAME]
		  ,M.[M_NAME]
		  ,R.[PRICE_ACTIVE]
		  ,R.[DTS_SETPRICE]
		  ,[DTS_SHOW] = CONVERT(NVARCHAR,R.[DTS_SETPRICE],121)
		  ,R.[OENAME]
		  ,R.[OEKOEF]
	FROM [new].[dbo].[PRICES_ACTIVE_A16] R
	INNER JOIN [new].[dbo].[PRODUCTS] P ON P.[P_NREC]=R.[P_NREC]
	INNER JOIN [new].[dbo].[MANUFACTURERS] M ON M.[M_ID] = P.[M_ID]
	ORDER BY P.[P_NAME],M.[M_NAME];

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [PRICES].[PRICES_ACTIVE]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2009-09-12 21:26:20.193
-- Description:	Действующий прайс-лист по товарам.
--				Формирует отчет "Прейскурант рознизных цен"
--				ReportService.REE_PRICESACTIVE
--
--				EXEC [PRICES].[PRICES_ACTIVE]
-- =============================================
CREATE PROCEDURE [PRICES].[PRICES_ACTIVE]
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[PRICES].[PRICES_ACTIVE]';

-- Отчет
	SELECT R.[P_NREC]
		  ,P.[P_NAME]
		  ,M.[M_NAME]
		  ,R.[PRICE_ACTIVE]
		  ,R.[DTS_SETPRICE]
		  ,[DTS_SHOW] = CONVERT(NVARCHAR,R.[DTS_SETPRICE],121)
		  ,R.[OENAME]
		  ,R.[OEKOEF]
	FROM [new].[dbo].[PRICES_ACTIVE] R
	INNER JOIN [new].[dbo].[PRODUCTS] P ON P.[P_NREC]=R.[P_NREC]
	INNER JOIN [new].[dbo].[MANUFACTURERS] M ON M.[M_ID] = P.[M_ID]
	ORDER BY P.[P_NAME],M.[M_NAME];

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [dbo].[rezerv_view]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2011-07-17
-- Description:	Резервирование позиции
-- =============================================
CREATE PROCEDURE [dbo].[rezerv_view]	
AS
BEGIN	
	SET NOCOUNT ON;

	SELECT    
		rezerv.id, 
		rezerv.a_id,
		PRODUCTS.P_NAME,
		MANUFACTURERS.M_NAME,
		Round(rezerv.counts,4) as counts,
		DATEADD(hh, rezerv.hours, rezerv.data) AS dat_finish,
		USERS.U_FULLNAME,   
		rezerv.fio

	FROM         
		MANUFACTURERS
		INNER JOIN PRODUCTS ON MANUFACTURERS.M_ID = PRODUCTS.M_ID 
		INNER JOIN  ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID 
		INNER JOIN rezerv ON ARTICLES.A_ID = rezerv.a_id 
		INNER JOIN USERS ON rezerv.u_id = USERS.U_ID
	WHERE (rezerv.Evaible = 1)
	order by id
END
GO
/****** Object:  StoredProcedure [PRICES].[PRICES_REEUPDATE]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2009-09-12 21:26:20.193
-- Description:	Протокол изменения цен в прайс-листе
--				Формирует отчет "Протокол изменения цен"
--				ReportService.REE_PRICESUPDATE
--
--				EXEC [PRICES].[PRICES_REEUPDATE] N'2009-10-19 08:57:07.390'
-- =============================================
CREATE PROCEDURE [PRICES].[PRICES_REEUPDATE]
	@DT	NVARCHAR(50) = NULL
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[PRICES].[PRICES_REEUPDATE]';

	DECLARE @DREP	DATETIME;

	IF @DT IS NULL
	   SELECT @DT = CONVERT(NVARCHAR,MAX([DTS_SETPRICE]),121) FROM [new].[dbo].[PRICES_REEUPDATE];

	SELECT @DREP = CONVERT(DATETIME,@DT,121);

	SELECT R.[DTS_SETPRICE]
		  ,R.[P_NREC]
		  ,P.[P_NAME]
		  ,M.[M_NAME]
		  ,R.[PRICE_ACTIVE]
		  ,R.[ACTION_FLAG]
		  ,R.[OENAME]
		  ,R.[OEKOEF]
	FROM [new].[dbo].[PRICES_REEUPDATE] R
	INNER JOIN [new].[dbo].[PRODUCTS] P ON P.[P_NREC]=R.[P_NREC]
	INNER JOIN [new].[dbo].[MANUFACTURERS] M ON M.[M_ID] = P.[M_ID]
	WHERE R.[DTS_SETPRICE]=@DREP
	ORDER BY P.[P_NAME],M.[M_NAME];


-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [PRICES].[PRICES_REEHISTORY_A16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		TANYA (GARY)
-- Create date: 2017-09-04 16:00:08.747
-- Description:	История изменения цен по матценности
--				Формирует отчет "История изменения цены по товару"
--				ReportService.REE_PRICESHISTORY_A16
--
--				EXEC [PRICES].[PRICES_REEHISTORY_A16] 4611895017586485947
-- =============================================
CREATE PROCEDURE [PRICES].[PRICES_REEHISTORY_A16] 
	@P_NREC	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[PRICES].[PRICES_REEHISTORY_A16]';

	SELECT R.[DTS_SETPRICE]
		  ,[DTS_SHOW] = CONVERT(NVARCHAR,R.[DTS_SETPRICE],121)
		  ,R.[P_NREC]
		  ,P.[P_NAME]
		  ,M.[M_NAME]
		  ,R.[PRICE_ACTIVE]
		  ,R.[ACTION_FLAG]
		  ,R.[OENAME]
		  ,R.[OEKOEF]
	FROM [new].[dbo].[PRICES_REEUPDATE_A16] R
	INNER JOIN [new].[dbo].[PRODUCTS] P ON P.[P_NREC]=R.[P_NREC]
	INNER JOIN [new].[dbo].[MANUFACTURERS] M ON M.[M_ID] = P.[M_ID]
	WHERE R.[P_NREC] = @P_NREC
	ORDER BY R.[DTS_SETPRICE] DESC


-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [PRICES].[PRICES_REEHISTORY]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-03-10 10:15:08.747
-- Description:	История изменения цен по матценности
--				Формирует отчет "История изменения цены по товару"
--				ReportService.REE_PRICESHISTORY
--
--				EXEC [PRICES].[PRICES_REEHISTORY] 4611895017586485947
-- =============================================
CREATE PROCEDURE [PRICES].[PRICES_REEHISTORY] 
	@P_NREC	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[PRICES].[PRICES_REEHISTORY]';

	SELECT R.[DTS_SETPRICE]
		  ,[DTS_SHOW] = CONVERT(NVARCHAR,R.[DTS_SETPRICE],121)
		  ,R.[P_NREC]
		  ,P.[P_NAME]
		  ,M.[M_NAME]
		  ,R.[PRICE_ACTIVE]
		  ,R.[ACTION_FLAG]
		  ,R.[OENAME]
		  ,R.[OEKOEF]
	FROM [new].[dbo].[PRICES_REEUPDATE] R
	INNER JOIN [new].[dbo].[PRODUCTS] P ON P.[P_NREC]=R.[P_NREC]
	INNER JOIN [new].[dbo].[MANUFACTURERS] M ON M.[M_ID] = P.[M_ID]
	WHERE R.[P_NREC] = @P_NREC
	ORDER BY R.[DTS_SETPRICE] DESC


-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [REPORTS].[REE_EXCHECKS]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-03-03 20:19:15.000
-- Description:	Реестр инф.документов заданного типа, за дату
--
--				EXEC [REPORTS].[REE_EXCHECKS] '20100303',1
-- =============================================
CREATE PROCEDURE [REPORTS].[REE_EXCHECKS] 
	@DT		DATETIME,
	@TYPE	INT
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[REPORTS].[REE_EXCHECKS]';

	SELECT [H_ID]
		,[H_NO]
		,[H_DATE]
		,[T_ID]
		,[U_ID]
		,[H_SUM]
		,[H_DISCOUNT]
		,[H_ITEMS]
		,EX.[C_ID]
		,[H_TYPE]
		,[Z_ID]
		,[H_RET]
		,[H_DSUM]
		,C.[C_NAME]
	FROM [new].[dbo].[EXCHECKS] EX
	LEFT OUTER JOIN [new].[dbo].[CUSTOMERS] C ON C.[C_ID]=EX.[C_ID]
	WHERE [H_DATE]>=@DT AND [H_DATE]<DATEADD(DAY,1,@DT) AND [H_TYPE] = @TYPE
	ORDER BY [H_ID];

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  View [dbo].[vi907_16]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi907_16]
AS
SELECT     CAST(A.H_NO AS NVARCHAR) AS [Номер чека (Возврат)], A.H_DATE AS [Дата (Возврат)], CAST(A.T_ID AS VARCHAR) AS [Номер терминала(Возврат)], 
                      CAST(CH.H_NO AS NVARCHAR) AS [Номер чека (Продажа)], CH.H_DATE AS [Дата (Продажа)], CAST(CH.T_ID AS VARCHAR) AS [Номер терминала(Продажа)], 
                      B.A_ID AS Артикул, AR.P_NREC AS CMC, - CAST(B.I_QTY / 1000.0 AS MONEY) AS Количество, CAST((ROUND(CAST(B.I_PRICE AS MONEY) 
                      / 100.0 * CAST(ISNULL(B.R_COURSE, 1) AS money), 2) * CAST(B.I_QTY AS MONEY) / 1000.0 - ROUND((CAST(B.I_PRICE AS MONEY) 
                      / 100.0 * CAST(ISNULL(B.R_COURSE, 1) AS money) * CAST(B.I_QTY AS MONEY) / 1000.0) * (CAST(B.I_DISCOUNT AS MONEY) / 10000.0), 2)) 
                      / CAST(B.I_QTY / 1000.0 AS MONEY) AS MONEY) AS [Цена (Возврат)],
                          (SELECT     CAST(I_PRICE / 100.0 AS MONEY) AS Expr1
                            FROM          A16.dbo.CHECK_ITEMS AS CIP
                            WHERE      (H_ID = CH.H_ID) AND (A_ID = B.A_ID)) AS [Цена (Продажа)], - B.I_QTYU AS I_QTYU, A.H_DATE
FROM         A16.dbo.CHECKS AS A WITH (NOLOCK) INNER JOIN
                      A16.dbo.CHECK_ITEMS AS B WITH (NOLOCK) ON B.H_ID = A.H_ID INNER JOIN
                      dbo.ARTICLES AS AR WITH (NOLOCK) ON AR.A_ID = B.A_ID AND AR.P_NREC NOT IN (5469, 6439) LEFT OUTER JOIN
                      A16.dbo.CHECKS AS CH WITH (NOLOCK) ON CH.H_ID = A.H_RET
WHERE     (A.H_TYPE IN (- 1, - 2))
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[16] 2[38] 3) )"
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
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 114
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "AR"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 114
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CH"
            Begin Extent = 
               Top = 6
               Left = 632
               Bottom = 114
               Right = 792
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
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2640
         Alias = 1455
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi907_16'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi907_16'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi907_16'
GO
/****** Object:  View [dbo].[vi907]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vi907]
AS
SELECT     CAST(A.H_NO AS NVARCHAR) AS [Номер чека (Возврат)], A.H_DATE AS [Дата (Возврат)], CAST(A.T_ID AS VARCHAR) AS [Номер терминала(Возврат)], 
                      CAST(CH.H_NO AS NVARCHAR) AS [Номер чека (Продажа)], CH.H_DATE AS [Дата (Продажа)], CAST(CH.T_ID AS VARCHAR) AS [Номер терминала(Продажа)], 
                      B.A_ID AS Артикул, AR.P_NREC AS CMC, - CAST(B.I_QTY / 1000.0 AS MONEY) AS Количество, CAST((ROUND(CAST(B.I_PRICE AS MONEY) 
                      / 100.0 * CAST(ISNULL(B.R_COURSE, 1) AS money), 2) * CAST(B.I_QTY AS MONEY) / 1000.0 - ROUND((CAST(B.I_PRICE AS MONEY) 
                      / 100.0 * CAST(ISNULL(B.R_COURSE, 1) AS money) * CAST(B.I_QTY AS MONEY) / 1000.0) * (CAST(B.I_DISCOUNT AS MONEY) / 10000.0), 2)) 
                      / CAST(B.I_QTY / 1000.0 AS MONEY) AS MONEY) AS [Цена (Возврат)],
                          (SELECT     CAST(I_PRICE / 100.0 AS MONEY) AS Expr1
                            FROM          dbo.CHECK_ITEMS AS CIP
                            WHERE      (H_ID = CH.H_ID) AND (A_ID = B.A_ID)) AS [Цена (Продажа)], - B.I_QTYU AS I_QTYU, A.H_DATE
FROM         dbo.CHECKS AS A WITH (NOLOCK) INNER JOIN
                      dbo.CHECK_ITEMS AS B WITH (NOLOCK) ON B.H_ID = A.H_ID INNER JOIN
                      dbo.ARTICLES AS AR WITH (NOLOCK) ON AR.A_ID = B.A_ID AND AR.P_NREC NOT IN (5469, 6439) LEFT OUTER JOIN
                      dbo.CHECKS AS CH WITH (NOLOCK) ON CH.H_ID = A.H_RET
WHERE     (A.H_TYPE IN (- 1, - 2))
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[16] 2[38] 3) )"
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
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 114
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "AR"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 114
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CH"
            Begin Extent = 
               Top = 6
               Left = 632
               Bottom = 114
               Right = 792
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
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2640
         Alias = 1455
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi907'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi907'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vi907'
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_DIFFERENT_PROD]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		LEKO
-- Create date: 2012-11-16
-- Description:	Проверка продажи услуги и основных средств
--	EXEC [dbo].[WORK_BUH_DIFFERENT_PROD] '20121001','20121010',0
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_DIFFERENT_PROD]
	@date1	datetime,
	@date2	datetime,
	@param	int	-- 0=услуга,1=основные

AS
BEGIN	
	SET NOCOUNT ON;

	DECLARE @description nvarchar(50)

	IF @param=0
	BEGIN		
		SELECT @description=N'Отчет по оплате за услуги'

		SELECT
			@description
			,P.p_id
			,P.p_name
			,'ШТ' as ed
			,SUM(CI.i_qtyu) as kol
			,CAST(CAST(CI.i_price as float)*CAST(P.P_pack as float)/100 as float) as price
			,SUM(CAST(CAST(CI.i_qty as float)*CAST(CI.i_price as float)/100000 as float)) as summa			
		FROM
			checks C	INNER JOIN check_items CI ON C.h_id=CI.h_id
						INNER JOIN articles A ON CI.a_id=A.a_id
						INNER JOIN products P ON A.p_id=P.p_id
		WHERE
			C.h_date>=@date1 AND 
			C.h_date<DATEADD(dd,1,@date2) AND
			P.p_id=52464
		GROUP BY 
			P.p_id,
			P.p_name,			
			CI.i_price,
			P.p_pack
		ORDER BY P.p_name

	END

	IF @param=1
	BEGIN		
		SELECT @description=N'Отчет по оплате за основные средства'

		SELECT
			@description
			,P.p_id
			,P.p_name
			,'ШТ' as ed
			,SUM(CI.i_qtyu) as kol
			,CAST(CAST(CI.i_price as float)*CAST(P.P_pack as float)/100 as float) as price
			,SUM(CAST(CAST(CI.i_qty as float)*CAST(CI.i_price as float)/100000 as float)) as summa			
		FROM
			checks C	INNER JOIN check_items CI ON C.h_id=CI.h_id
						INNER JOIN articles A ON CI.a_id=A.a_id
						INNER JOIN products P ON A.p_id=P.p_id
		WHERE
			C.h_date>=@date1 AND 
			C.h_date<DATEADD(dd,1,@date2) AND
			P.p_name like '/ %'
		GROUP BY 
			P.p_id,
			P.p_name,
			CI.i_price,
			P.p_pack
		ORDER BY P.p_name

	END
    
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BONUSECODE_PROD_UNION]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-12-04

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BONUSECODE_PROD_UNION] '100632'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BONUSECODE_PROD_UNION]

	@c_bcode as nvarchar(50)
	

AS
BEGIN
	SET NOCOUNT ON;


declare @c_idn as int

--Выбираем ID карты, с номером БК 100632 и скидкой =0

select 
 @c_idn=C_ID 
 from CUSTOMERS 
 where C_BONUSCODE=@c_bcode and C_DISCOUNT=0
 
 --Выбираем чеки, по которым была просканирована БК 100632 и скидкой не 0

 select 
 c.h_id 
 into #table1
 
 from CHECKS c inner join CUSTOMERS ca on c.C_ID=ca.C_ID 
 where @c_bcode=ca.C_BONUSCODE and ca.C_DISCOUNT<>0 

update
checks
set c_id=@c_idn
from #table1
where (checks.h_id=#table1.h_id) 

select * from CHECKS inner join #table1 on CHECKS.H_ID=#table1.H_ID
where (checks.h_id=#table1.h_id) 

	
	
END
GO
/****** Object:  StoredProcedure [dbo].[rezerv_insert]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2011-07-17
-- Description:	Резервирование позиции
-- =============================================
CREATE  PROCEDURE [dbo].[rezerv_insert]
	@a_id	int,
	@u_id	int,
	@count	int,
	@countd	int,
	@hours	int,
	@fio	nvarchar(50)
	
AS
BEGIN	
	SET NOCOUNT ON;
	
	DECLARE 
		@pack int,
		@kol float

	SELECT @pack = (SELECT PRODUCTS.P_PACK FROM PRODUCTS INNER JOIN
                      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID
					WHERE     (ARTICLES.A_ID = @a_id))

	SET @kol = CAST(CAST(@count AS FLOAT)+CAST(@countd AS FLOAT)/CAST(@pack AS FLOAT) AS FLOAT)
	
	INSERT INTO rezerv (
		a_id,
		u_id,
		counts,
		hours,
		fio)
	VALUES (
		@a_id,
		@u_id,
		@kol,
		@hours,
		@fio)

	INSERT INTO JOURNAL (
		a_id,
		j_qty,
		j_qtyu,
		j_type)
	VALUES (
		@a_id,
		-(@count*@pack+@countd)*1000,
		-@kol,
		3)
END
GO
/****** Object:  StoredProcedure [REPORTS].[REE_EXCHECK_INFO]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-03-03 20:19:15.000
-- Description:	Информационный документ (Шапка)
--
--				EXEC [REPORTS].[REE_EXCHECK_INFO] 4
-- =============================================
CREATE PROCEDURE [REPORTS].[REE_EXCHECK_INFO] 
	@HID	INT
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[REPORTS].[REE_EXCHECK_INFO]';

	SELECT [H_ID]
		,[H_NO]
		,[H_DATE]
		,[T_ID]
		,[U_ID]
		,[H_SUM]
		,[H_DISCOUNT]
		,[H_ITEMS]
		,EX.[C_ID]
		,[H_TYPE]
		,[Z_ID]
		,[H_RET]
		,[H_DSUM]
		,C.[C_NAME]
	FROM [new].[dbo].[EXCHECKS] EX
	LEFT OUTER JOIN [new].[dbo].[CUSTOMERS] C ON C.[C_ID]=EX.[C_ID]
	WHERE [H_ID] = @HID;

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_fill]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_fill]
@key nvarchar(255),
@brno int,
@mt bit,
@a1 int,
@a2 int
as
begin
set nocount on
	declare @invid int;
	select @invid = INV_ID from INVENTS where INV_CODE=@key;
	select irs.A_ID, a.P_ID, P_NAME, M_NAME, P_PACK, p.P_REMMC, a.P_PRICE, irs.IRS_SQTY, irs.IRS_FQTY
		from INVENT_RESULT irs inner join ARTICLES a on irs.A_ID=a.A_ID and irs.BR_NO=@brno and irs.INV_ID=@invid
		inner join PRODUCTS p on a.P_ID=p.P_ID 
		left join MANUFACTURERS m on m.M_ID=p.M_ID
	where irs.INV_ID=@invid and irs.INV_MT=@mt and irs.INV_A1=@a1 and irs.INV_A2=@a2;
end
GO
/****** Object:  StoredProcedure [dbo].[UP_GET_DEFECTURASTOREDTZ]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	ПРОЦЕДУРА ВЫДАЕТ ДЕФЕКТУРУ ТОРОГОВОГО ЗАЛА
-- =============================================
CREATE   PROCEDURE [dbo].[UP_GET_DEFECTURASTOREDTZ]
AS 
	SET NOCOUNT ON

	DECLARE @DATE DATETIME
	DECLARE @SKL BIGINT     --NREC СКЛАД
	DECLARE @TZ BIGINT     --NREC ТОРГОВОГО ЗАЛА
	SET @SKL = 4611693923140645959
	SET @TZ = 4611919881864392974
	SET @DATE = CAST(CONVERT(NVARCHAR(8),GETDATE(),112) AS DATETIME)

	SELECT 
		  A.P_NREC
		, -SUM(I_QTYU) AS QTYU 
	INTO #T1 
	FROM CHECKS C 
	INNER JOIN CHECK_ITEMS CC ON C.H_ID = CC.H_ID
	INNER JOIN ARTICLES A ON A.A_ID = CC.A_ID 
	WHERE H_TYPE IN (1,2) AND H_DATE > @DATE 
	GROUP BY A.P_NREC
	
	UNION ALL
	
	SELECT 
		  NREC
		, SUM(KOL) 
	FROM SALDOMC
	WHERE PODR = @TZ
	GROUP BY NREC
	
	UNION ALL
	
	SELECT 
		  P_NREC
		, SUM(J_QTYU) 
	FROM JOURNAL J
	JOIN ARTICLES A ON A.A_ID = J.A_ID
	WHERE  J_DATE > @DATE AND J_TYPE = 1
	GROUP BY P_NREC

--УДАЛИМ ИЗ ОБРАБОТКИ ТОВАРЫ УОТОРЫЕ НЕ ДОЛЖНЫ ХРАНИТЬСЯ В ТОРГОВОМ ЗАЛЕ
	DELETE FROM #T1
	WHERE P_NREC IN (SELECT P_NREC FROM PRODUCTS WHERE ISNULL(P_KOEF,0) <> 1)

--ОБЩАЯ ДЕФЕКТУРА
	SELECT 
		  P.P_NREC
		, P_NAME
		, M_NAME
		, P_MIN
		, P_MAX
		, SUM(ISNULL(QTYU,0)) AS REM
		, ROUND(P_MAX*ISNULL(P_KOEF,1) - SUM(ISNULL(QTYU,0)),0) AS ZAKAZ
		, P_KOEF 
	INTO #T2
	FROM PRODUCTS P 
	LEFT JOIN #T1 ON #T1.P_NREC = P.P_NREC
	LEFT JOIN MANUFACTURERS M ON M.M_ID = P.M_ID
	WHERE ISNULL(P_KOEF,1) = 1
	GROUP BY P.P_NREC, P_NAME, M_NAME, P_MIN, P_MAX, P_KOEF
	HAVING SUM(ISNULL(QTYU,0)) <= P_MIN*ISNULL(P_KOEF,1)
	ORDER BY P_NAME, M_NAME

	SELECT * FROM #T2
GO
/****** Object:  StoredProcedure [dbo].[UP_GET_CHECK_ITEMS]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
--
--				EXEC UP_GET_CHECK_ITEMS 2009,6,2,2
--
-- =============================================
CREATE   PROCEDURE [dbo].[UP_GET_CHECK_ITEMS] 
	@YEAR INT, 
	@MONTH INT , 
	@DAY INT, 
	@TERM INT
AS 
BEGIN 
	SET NOCOUNT ON

-- Реестр терминалов
	CREATE TABLE #TERMS (TERM INT)

	IF (@TERM = 0)	-- по всем терминалам
		INSERT #TERMS SELECT DISTINCT T_ID
		FROM CHECKS  WITH (NOLOCK)
	ELSE			-- по одному, заданному параметром, терминалу
		INSERT #TERMS SELECT @TERM
	
	SELECT
		A.H_TYPE ,		--0
		A.H_DATE ,		--1
		A.H_NO ,		--2
		B.I_QTYU ,		--3
		A.H_SUM ,		--4
		A.T_ID ,		--5
		A.U_ID ,		--6
		A.H_DISCOUNT,	--7
		A.H_ITEMS ,		--8
		B.I_QTY ,		--9 количество в ученых единицах
		B.I_PRICE - B .I_PRICE/100.0 *( I_DISCOUNT/ 100.0) AS I_PRICE ,--10 цена за отпускную еидиницу
		C.P_NAME ,		--11
		D.A_ID ,		--12
		H_DSUM,			--13
		H_TYPE AS OPCODE, --14
		I_PRICE/ 100.0*B .P_PACK - ( I_PRICE/ 100.0*B .P_PACK )/100.0 *(I_DISCOUNT /100.0) AS I_PRICEUF --15 цена за учетную единицу
	FROM CHECKS A WITH (NOLOCK)
	LEFT JOIN CHECK_ITEMS	B WITH (NOLOCK) ON A .H_ID =B. H_ID 
	LEFT JOIN ARTICLES		D WITH (NOLOCK) ON B .A_ID =D. A_ID 
	LEFT JOIN PRODUCTS		C WITH (NOLOCK) ON D .P_ID =C. P_ID
	WHERE
		A.H_TYPE IN (1,2)		AND			-- Только продажи (1-наличные/2-безналичные)
		YEAR(A.H_DATE) = @YEAR	AND 
		MONTH(A.H_DATE)= @MONTH	AND 
		DAY(A. H_DATE) = @DAY	AND 
		A.T_ID IN (SELECT TERM FROM #TERMS)	-- По заданным терминалам
	ORDER BY A.H_NO ,A .H_SUM
END
GO
/****** Object:  StoredProcedure [dbo].[UP_INSERT_ARTICLE]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER  date: 2009-09-16 16:35:58.560
-- Description:	ПРОЦЕДУРА ВСТАВКИ АРТИКУЛА В RETAIL
-- =============================================
CREATE   PROCEDURE [dbo].[UP_INSERT_ARTICLE]
	@ARTCODE	INT ,
	@MNAME	NVARCHAR (255 ),
	@PACK	FLOAT ,
	@PNAME	NVARCHAR (255 ),
	@PUNU	NVARCHAR (8 ),
	@PTAX	NVARCHAR (2 ),
	@PNREC	BIGINT ,
	@MIN	INT ,
	@MAX	INT ,
	@REMMC	NVARCHAR (255 ),
	@PRICE	FLOAT ,
	@QTY	INT ,
	@QTYU	FLOAT ,
	@KOEF	FLOAT = 1 ,
	@OKDP	NVARCHAR (50 ),
	@TNVED	NVARCHAR (50 )
AS 
SET NOCOUNT ON

DECLARE @MID INT
DECLARE @PID INT
DECLARE @PROD_PACK INT

BEGIN TRAN

--ЕСЛИ НЕТ ТАКОГО ПРОИЗВОДИТЕЛЯ => ВСТАВИТЬ
 IF NOT EXISTS (SELECT M_ID FROM MANUFACTURERS WITH (NOLOCK) WHERE M_NAME = @MNAME )
    INSERT INTO MANUFACTURERS (M_NAME) VALUES (@MNAME)
--НАЙДЕМ СУЩЕСТВУЮЩЕГО ПРОИЗВОДИТЕЛЯ
 SELECT @MID = M_ID FROM MANUFACTURERS WHERE M_NAME = @MNAME

/*
SELECT Max(M_ID)
	FROM MANUFACTURERS M WITH (NOLOCK)  
		left join [192.168.23.150].GAL208.dbo.KATMC K on M.M_NREC=K.CGROUPMC
WHERE M_NAME like '%PFIZ%' 

*/


--ЕСЛИ НЕТ ТАКОГО АРТИКУЛА
 IF NOT EXISTS (SELECT A_ID FROM ARTICLES WITH (NOLOCK) WHERE A_ID = @ARTCODE)
 BEGIN
--ЕСЛИ НЕТ ТАКОГО ТОВАРА => ВСТАВИТЬ
    IF NOT EXISTS (SELECT P_NREC FROM PRODUCTS WITH (NOLOCK) WHERE P_NREC = @PNREC )
       INSERT INTO PRODUCTS (P_PACK , P_NAME , P_UNU , P_TAX , P_NREC , M_ID, P_MIN, P_MAX, P_REMMC , P_KOEF , P_OKDP , P_TNVED )
       VALUES (CAST (ROUND(1 /@PACK,1) AS INT ), @PNAME , @PUNU , (CASE WHEN @PTAX='1' then 'A' else NULL end) , @PNREC , @MID, @MIN, @MAX, @REMMC , @KOEF , @OKDP , @TNVED )
    ELSE
--ИНАЧЕ ОБНОВИМ ТОВАР
       UPDATE PRODUCTS SET
         P_PACK	= CAST( ROUND(1/@PACK,1) AS INT),
         P_NAME = @PNAME,
         P_UNU  = @PUNU,
         P_TAX  = (CASE WHEN @PTAX='1' then 'A' else NULL end),
         M_ID   = @MID ,
         P_MIN	= @MIN,
         P_MAX	= @MAX,
         P_REMMC= @REMMC,
         P_KOEF = @KOEF,
         P_TNVED= @TNVED,
         P_OKDP = @OKDP
       WHERE P_NREC = @PNREC 
         AND (ISNULL(P_PACK, 0)<> ISNULL( CAST(ROUND(1 /@PACK,1) AS INT ),0 ) 
         OR  ISNULL (P_NAME ,'' )<>ISNULL (@PNAME ,'' ) 
         OR  ISNULL (P_UNU, '')<> ISNULL( @PUNU, '') 
         OR  ISNULL (P_TAX, '')<> ISNULL( @PTAX, '') 
         OR  ISNULL (M_ID, 0)<> ISNULL( @MID,0 ) 
         OR  ISNULL (P_MIN, 0)<> ISNULL( @MIN,0 ) 
         OR  ISNULL (P_MAX, 0)<> ISNULL( @MAX,0 ) 
         OR  ISNULL (P_REMMC ,'' )<>ISNULL (@REMMC ,'' ) 
         OR  ISNULL (P_OKDP ,'' )<>ISNULL (@OKDP ,'' ) 
         OR  ISNULL (P_TNVED ,'' )<>ISNULL (@TNVED ,'' )
         OR  ISNULL (P_KOEF ,0 )<>ISNULL (@KOEF ,0 ))
--НАЙДЕМ СУЩЕСТВУЮЩИЙ ТОВАР
    SELECT @PID = P_ID FROM PRODUCTS WITH (NOLOCK) WHERE P_NREC = @PNREC   
    
--НАЙДЕМ ДЕЛИМОСТЬ ИЗ PRODUCTS (ТА, КОТОРАЯ ПЕРЕДАЕТСЯ ИЗ ТАБЛИЦЫ ARTICLES, МАЛО ЗНАКОВ ПОСЛЕ ЗАПЯТОЙ)
    SELECT @PROD_PACK = P_PACK FROM PRODUCTS WITH (NOLOCK) WHERE P_NREC = @PNREC       
    
--ВСТАВИМ АРТИКУЛ
    INSERT INTO ARTICLES (A_ID ,P_ID, P_PRICE, P_NREC)
    VALUES (@ARTCODE , @PID, ROUND(@PRICE*@PROD_PACK,5), @PNREC)

/*--ВСТАВИМ АРТИКУЛ по-старому2
    INSERT INTO ARTICLES (A_ID ,P_ID, P_PRICE, P_NREC)
    VALUES (@ARTCODE , @PID, ROUND(@PRICE/ @PACK,5), @PNREC)
 */

 
/*--ВСТАВИМ АРТИКУЛ по-старому
    INSERT INTO ARTICLES (A_ID ,P_ID, P_PRICE, P_NREC)
    VALUES (@ARTCODE , @PID, @PRICE/ @PACK, @PNREC)
*/    
--для теста
	--INSERT INTO ARTICLES_TEMP (A_ID ,P_ID, P_PRICE, P_PRICE_NEW, P_NREC, P_PACK, P_PRICE_BEGIN, AT_DT, AT_TYPE)
    --VALUES (@ARTCODE , @PID, @PRICE/ @PACK, ROUND(@PRICE/ @PACK,5), @PNREC, @PACK, @PRICE, GETDATE(),'INS')
    
    INSERT INTO ARTICLES_TEMP (A_ID ,P_ID, P_PRICE, P_PRICE_NEW, P_NREC, P_PACK, P_PRICE_BEGIN, AT_DT, AT_TYPE)
    VALUES (@ARTCODE , @PID, @PRICE/ @PACK, ROUND(@PRICE*@PROD_PACK,5), @PNREC, @PACK, @PRICE, GETDATE(),'INS')
        
 END
 ELSE
 BEGIN
--ВОЗЬМЕМ СУЩЕСТВУЮЩИЙ ТОВАР
    SELECT @PID = P_ID FROM ARTICLES WITH (NOLOCK) WHERE A_ID = @ARTCODE
    
--НАЙДЕМ ДЕЛИМОСТЬ ИЗ PRODUCTS (ТА, КОТОРАЯ ПЕРЕДАЕТСЯ ИЗ ТАБЛИЦЫ ARTICLES, МАЛО ЗНАКОВ ПОСЛЕ ЗАПЯТОЙ)
    SELECT @PROD_PACK = P_PACK FROM PRODUCTS WITH (NOLOCK) WHERE P_NREC = @PNREC       
    
--ОБНОВИМ ЦЕНУ ПО ТОВАРУ
    UPDATE ARTICLES  
    SET P_PRICE = ROUND(@PRICE*@PROD_PACK,5)
    WHERE A_ID = @ARTCODE


/*--ОБНОВИМ ЦЕНУ ПО ТОВАРУ по-старому
    UPDATE ARTICLES  
    SET P_PRICE = @PRICE /@PACK
    WHERE A_ID = @ARTCODE
 */  
  --для теста
	--INSERT INTO ARTICLES_TEMP (A_ID ,P_ID, P_PRICE, P_PRICE_NEW, P_NREC, P_PACK, P_PRICE_BEGIN, AT_DT, AT_TYPE)
    --VALUES (@ARTCODE , @PID, @PRICE/ @PACK, ROUND(@PRICE/ @PACK,5), @PNREC, @PACK, @PRICE, GETDATE(),'UPD')
    
    INSERT INTO ARTICLES_TEMP (A_ID ,P_ID, P_PRICE, P_PRICE_NEW, P_NREC, P_PACK, P_PRICE_BEGIN, AT_DT, AT_TYPE)
    VALUES (@ARTCODE , @PID, @PRICE/ @PACK, ROUND(@PRICE*@PROD_PACK,5), @PNREC, @PACK, @PRICE, GETDATE(),'UPD')
    
    
    
    UPDATE PRODUCTS 
    SET P_NAME=@PNAME,
		P_PACK = CAST( ROUND(1/@PACK,1) AS INT),
		P_TAX = (CASE WHEN @PTAX='1' then 'A' else NULL end)
    WHERE P_ID=@PID
 END
--ВСТАВИМ В ЖУРНАЛ
 INSERT INTO JOURNAL ( A_ID, J_QTY, J_QTYU , J_TYPE )
 VALUES ( @ARTCODE, @QTYU*1000 , @QTYU *@PACK, 1)

COMMIT TRAN
GO
/****** Object:  StoredProcedure [dbo].[UP_GET_DEFECTURAZG]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[UP_GET_DEFECTURAZG] @DID1 INT, @DID2 INT
AS SET NOCOUNT ON

create TABLE #T100 (NREC BIGINT, CMC BIGINT, KOL FLOAT, T_PARENT INT) 

DECLARE @PNREC BIGINT
DECLARE @QTYU FLOAT
DECLARE @NQTYU FLOAT
DECLARE @REM FLOAT

DECLARE @INREC BIGINT
DECLARE @CMC BIGINT
DECLARE @KOL FLOAT
DECLARE @TID INT
DECLARE @CNT INT
DECLARE @FETCH1 INT
DECLARE @FETCH2 INT
DECLARE @OKDP NVARCHAR(50)

DECLARE #TMPCRS CURSOR LOCAL FAST_FORWARD READ_ONLY FOR
	SELECT T1.P_NREC, P_OKDP, ISNULL(Q1,0) - ISNULL(Q2,0), T1.T_ID FROM 
	(SELECT P_NREC, T_QTYU AS Q1, T_ID FROM DOC_DETAILS WHERE D_ID = @DID1) T1 LEFT JOIN 
	(SELECT P_NREC, SUM(T_QTYU) AS Q2 FROM DOC_DETAILS WHERE D_ID = @DID2 GROUP BY P_NREC) T2 ON T1.P_NREC = T2.P_NREC
	INNER JOIN PRODUCTS P ON P.P_NREC = T1.P_NREC
	ORDER BY 3
OPEN #TMPCRS
FETCH NEXT FROM #TMPCRS INTO @PNREC, @OKDP, @QTYU, @TID
WHILE @@FETCH_STATUS = 0
  BEGIN
	 SET @NQTYU = @QTYU
	 
     DECLARE #INTERNALCRS CURSOR LOCAL FAST_FORWARD READ_ONLY FOR
		SELECT R.NREC, R.CMC, KOL - ISNULL(KOLFREE,0) FROM RZKUTPRIH R 
		INNER JOIN PRODUCTS P ON R.CMC = P.P_NREC AND P.P_OKDP = @OKDP 
		--AND P.P_OKDP <> ''
		WHERE R.CMC <> @PNREC AND KOL > ISNULL(KOLFREE,0)
		

	 OPEN #INTERNALCRS
	 FETCH NEXT FROM #INTERNALCRS INTO @INREC, @CMC, @KOL
	 WHILE (@NQTYU > 0 AND @@FETCH_STATUS = 0)

	 BEGIN
		IF (@NQTYU = @KOL)	
		BEGIN
			INSERT INTO #T100 (CMC, KOL, NREC, T_PARENT)
			VALUES (@CMC, @KOL, @INREC, @TID)
			SET @NQTYU = 0
			UPDATE RZKUTPRIH
			SET KOLFREE = ISNULL(KOLFREE,0) + @KOL
			WHERE NREC = @INREC
		END
		ELSE IF (@NQTYU < @KOL) AND (@NQTYU <> 0)
		BEGIN
			INSERT INTO #T100 (CMC, KOL, NREC, T_PARENT)
			VALUES (@CMC, @NQTYU, @INREC, @TID)
			SET @NQTYU = 0
			UPDATE RZKUTPRIH
			SET KOLFREE = ISNULL(KOLFREE,0) + @NQTYU
			WHERE NREC = @INREC
		END
		ELSE IF (@NQTYU > @KOL)
		BEGIN
			INSERT INTO #T100 (CMC, KOL, NREC, T_PARENT)
			VALUES (@CMC, @KOL, @INREC, @TID)
			SET @NQTYU = @NQTYU - @KOL
			UPDATE RZKUTPRIH
			SET KOLFREE = ISNULL(KOLFREE,0) + @KOL
			WHERE NREC = @INREC
		END
		FETCH NEXT FROM #INTERNALCRS INTO @INREC,@CMC,@KOL
     END
	 CLOSE #INTERNALCRS
	 DEALLOCATE #INTERNALCRS

     FETCH NEXT FROM #TMPCRS INTO @PNREC, @OKDP, @QTYU, @TID
  END
CLOSE #TMPCRS
DEALLOCATE #TMPCRS

DECLARE @DID3 INT
IF EXISTS (SELECT * FROM #T100)
BEGIN
	INSERT INTO DOCUMENTS (D_DATE, D_PARENT, D_MEMO)
	VALUES (GETDATE(), @DID1, 'ВНУТРЕННЕЕ ПЕРЕМЕЩЕНИЕ ПО ГРУППЕ ЗАМЕН')
	SET @DID3 = SCOPE_IDENTITY()
	INSERT INTO DOC_DETAILS (D_ID,P_NREC,T_QTYU, T_RZKUTPRIH, T_PARENT)
	SELECT @DID3, CMC, KOL, NREC, T_PARENT FROM #T100 WHERE KOL > 0
END
RETURN @DID3
GO
/****** Object:  StoredProcedure [dbo].[WORK_PRODUCTS_REG]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2011-12-21
-- Description:	Отчет о регистрации препаратов
-- =============================================
CREATE PROCEDURE [dbo].[WORK_PRODUCTS_REG]
	@date1		datetime = '2012/01/01',
	@date2		datetime = '2013/01/01',
	@date_sp	datetime = '2013/01/01',
	@param		int -- 0=период, 1=список	
	 
AS
BEGIN	
	SET NOCOUNT ON;	

	if @param=0
	begin	

	SELECT
		P.p_id
		, a.a_id
		, p.p_name
		, m.m_name
		, p.p_remmc
		, Q=Round(Sum(ISNULL(J.J_QTYU,0)),4)
		, Q_GAL_SKLAD=ISNULL(tzs.qsklad,0)		
		, P.p_reg_date
		, tzs.DataDate
		, N'Остаток препаратов с регистрацией' as Tit
		, N'Период вывода данных: с '+ CONVERT(NVARCHAR,@date1,104)+' по '++ CONVERT(NVARCHAR,@date2,104) as Tit_date
	into #p1

	FROM PRODUCTS P
			inner join MANUFACTURERS M ON P.m_id=M.m_id
			inner join ARTICLES A ON P.p_id=A.p_id
			left  join PRICES_ACTIVE PA on P.P_NREC=PA.P_NREC			
			left join JOURNAL J ON A.A_ID=J.A_ID			
			left join 
				(select
					CMC
					, LArticul
					, Max(DataDate) as DataDate
					, Round(sum(CountGal*KOEF),4) as QSKLAD
					from PROD 
				where PROD.podr like '%4611919881864%' AND COUNtGAL>0
				group by CMC,LArticul
				) TZS on a.a_id=TZS.LArticul
		
	WHERE P.P_REG_DATE>=@date1 AND P.P_REG_DATE<=@date2
	GROUP BY 
		a.a_id
		, p.p_id
		, p.p_name
		, p.p_nrec
		, m.m_name
		, p_price
		, tzs.qsklad
		, tzs.datadate
		, p.p_reg_date
		, p.p_remmc		
	order by p_name

	end

	if @param=1 
	begin	
 
	SELECT
		P.p_id
		, a.a_id
		, p.p_name
		, m.m_name
		, p.p_remmc
		, Q=Round(Sum(ISNULL(J.J_QTYU,0)),4)
		, Q_GAL_SKLAD=ISNULL(tzs.qsklad,0)		
		, P.p_reg_date
		, tzs.DataDate
		, N'Список препаратов с заданной датой регистрации' as Tit
		, N'Дата регистрации: '+ CONVERT(NVARCHAR,@date_sp,104) as Tit_date
	into #p2

	FROM PRODUCTS P
			inner join MANUFACTURERS M ON P.m_id=M.m_id
			inner join ARTICLES A ON P.p_id=A.p_id
			left  join PRICES_ACTIVE PA on P.P_NREC=PA.P_NREC			
			left join JOURNAL J ON A.A_ID=J.A_ID			
			left join 
				(select
					CMC
					, LArticul
					, Max(DataDate) as DataDate
					, Round(sum(CountGal*KOEF),4) as QSKLAD
					from PROD 
				where PROD.podr like '%4611919881864%' AND COUNtGAL>0
				group by CMC,LArticul
				) TZS on a.a_id=TZS.LArticul
		
	WHERE P.P_REG_DATE=@date_sp
	GROUP BY a.a_id, p.p_id, p.p_name, p.p_nrec, m.m_name, p_price, tzs.qsklad, tzs.datadate, p.p_reg_date, p.p_remmc
	order by p_name
	end
	
	if @param=0 
	begin
		select * from #p1
		where Q>0.001 or Q_Gal_Sklad>0.001
	end;

	if @param=1 
	begin
		select * from #p2		
	end

	
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_PRODUCTS_prod_name]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2013-12-19
-- Description:	Продажа препарата по наименованию (подробный)
-- =============================================
CREATE PROCEDURE [dbo].[WORK_PRODUCTS_prod_name]
	@name	NVARCHAR(255)
AS
BEGIN	
	SET NOCOUNT ON;

	DECLARE @pat NVARCHAR(255)
	SELECT @pat = N'%' + UPPER(@name) + N'%' -- вхождение

    SELECT 
		C.h_id,
		C.h_no as [Чек],
		C.h_type as [Тип],
		C.h_discount/100 as [Скидка],
		C.h_date as [ДатаВремя],
		C.t_id as [Касса],
		CAST(CAST(C.h_sum as float)/100-CAST(C.h_dsum as float)/100 as float) as [СуммаЧека],
		CI.a_id as [Артикул],
		CAST(CI.i_qty as float)/1000 as [КолОтп],
		round(CI.i_qtyu,3) as [КолУч],
		CAST(CAST(CI.i_price as float)/100 as float) as [ЦенаОтп],
		CAST(CAST(CI.i_price as float)*CAST(P.P_pack as float)/100 as float) as [ЦенаУч],
		P.p_name as [Наименование],
		M.m_name as [Производитель],
		C.h_items as [КолПоз],
		U.u_fullname as [ФИО],
		c.c_id as [КартаID],
		cu.c_code as [КартаДисконт],
		cu.c_bonuscode as [КартаБонус],
		cu.c_discount as [Карта%]
		
	FROM
		Checks C	INNER JOIN check_items CI ON C.h_id=CI.h_id
					INNER JOIN users U ON C.u_id=U.u_id
					INNER JOIN articles A ON CI.a_id=A.a_id
					INNER JOIN products P ON A.p_id=P.p_id
					INNER JOIN manufacturers M ON P.m_id=M.m_id
					LEFT JOIN customers CU ON C.c_id=cu.c_id
	WHERE		
		(upper(P.P_NAME) like @pat) and h_date>'01/01/2010'

	ORDER BY C.h_date DESC
	
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_PRODUCTS_prod]    Script Date: 01/17/2024 14:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2011-07-18
-- Description:	Продажа препарата по артикулу (подробный)
-- =============================================
CREATE PROCEDURE [dbo].[WORK_PRODUCTS_prod]
	@aid	int,
	@date1	datetime,
	@date2	datetime
AS
BEGIN	
	SET NOCOUNT ON;
	
	DECLARE @pid	int

	SELECT @pid=p_id
	FROM articles
	WHERE a_id=@aid

    SELECT 
		C.h_id,
		C.h_no as [Чек],
		C.h_type as [Тип],
		C.h_discount/100 as [Скидка],
		C.h_date as [ДатаВремя],
		C.t_id as [Касса],
		CAST(CAST(C.h_sum as float)/100-CAST(C.h_dsum as float)/100 as float) as [СуммаЧека],
		CI.a_id as [Артикул],
		CAST(CI.i_qty as float)/1000 as [КолОтп],
		CI.i_qtyu as [КолУч],
		CAST(CAST(CI.i_price as float)/100 as float) as [ЦенаОтп],
		CAST(CAST(CI.i_price as float)*CAST(P.P_pack as float)/100 as float) as [ЦенаУч],
		P.p_name as [Наименование],
		M.m_name as [Производитель],
		C.h_items as [КолПоз],
		U.u_fullname as [ФИО],
		c.c_id as [Карта]
		
	FROM
		checks C	INNER JOIN check_items CI ON C.h_id=CI.h_id
					INNER JOIN users U ON C.u_id=U.u_id
					INNER JOIN articles A ON CI.a_id=A.a_id
					INNER JOIN products P ON A.p_id=P.p_id
					INNER JOIN manufacturers M ON P.m_id=M.m_id
	WHERE
		C.h_date>=@date1 AND 
		C.h_date<DATEADD(dd,1,@date2) AND
		P.p_id=@pid

	ORDER BY C.h_date
	
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_products_bonus]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2011-07-18
-- Description:	Пометка позиция как бонусной
-- =============================================
CREATE PROCEDURE [dbo].[WORK_products_bonus]
	@a_id	int,
	@b		bit	
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @p_id int
	
	SELECT @p_id=p_id FROM ARTICLES WHERE a_id=@a_id
	
	UPDATE PRODUCTS
	SET	p_bonus=@b
	WHERE p_id=@p_id
    
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_PRICELIST_SHOWCASE]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-02-03 14:31:35.653
-- Description:	Информация о товарах по фрагменту наименования
--
-- EXEC [dbo].[WORK_PRICELIST_SHOWCASE] 1
-- =============================================
CREATE PROCEDURE [dbo].[WORK_PRICELIST_SHOWCASE]
	@kolday		int				
AS
BEGIN
	SET NOCOUNT ON;

	--Выбираем позиции, которые в прайсе
	SELECT	
		P.P_ID
		,P.P_NAME
		,M.M_NAME
		,P.P_REMMC
		,PA.PRICE_ACTIVE
		,PA.DTS_SETPRICE
		,P.P_SIZEZ		
	INTO #T_MC	
	FROM
		PRODUCTS P 
			INNER JOIN PRICES_ACTIVE PA ON PA.P_NREC = P.P_NREC
			INNER JOIN MANUFACTURERS M ON M.M_ID = P.M_ID

	--Выбираем по всем позициям остатки
	select
		A.P_ID
		,Q=sum(J_QTYU)
	INTO #T_OST
	from JOURNAL j INNER join ARTICLES a on j.A_ID=a.A_ID		      
	GROUP BY A.P_ID
	
	--Ощищаем таблиуц статков с данными более, чем за 10 дней
	DELETE FROM SALDO_SHOWCASE
	WHERE SS_DATE<DATEADD(dd,-10,CAST(FLOOR(CAST(GETDATE() AS FLOAT)) AS DATETIME))	-- Дата окончание
	
	--Сохраняем остатки >0 позиций, который в прайсе
	INSERT INTO SALDO_SHOWCASE
	(P_ID
	,SS_OST
	,SS_DATE)
	SELECT
	O.P_ID
	,Q
	,GETDATE()
	FROM #T_OST O INNER JOIN #T_MC MC ON O.P_ID=MC.P_ID
	WHERE Q>0
	
	
	

--CAST(FLOOR(CAST(GETDATE() AS FLOAT)) AS DATETIME)

	
	
END
GO
/****** Object:  StoredProcedure [REPORTS].[Z_REPORT_INFO]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-02-24 12:47:36.110
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [REPORTS].[Z_REPORT_INFO] 
	@DT DATETIME
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[REPORTS].[Z_REPORT_INFO] ';

	SET @DT = DATEADD(DAY,-DAY(@DT)+1,@DT);

	SELECT 
		 [Z_ID]
		,[H_ID]
		,[T_ID]
		,[Z_NO]
		,[Z_DATE] = CONVERT(NVARCHAR,[Z_DATE],103)
		,[Z_DAY]	= [Z_DATE]
		,[Z_SUMA] = CAST([Z_SUMA]/100.0 AS MONEY)
		,[Z_TAX]	= CAST([Z_SUMA]/100.0/6 AS MONEY)
		,[Z_SUMB] = CAST([Z_SUMB]/100.0 AS MONEY)
		,[Z_TOTAL]	= CAST(([Z_SUMA]+[Z_SUMB])/100.0 AS MONEY)
	FROM [new].[dbo].[Z_REPORTS]
	WHERE	[Z_DATE] >= @DT						AND -- Дата начало
			[Z_DATE] <  DATEADD(MONTH,1,@DT)		-- Дата окончание
	ORDER BY [Z_DATE],[T_ID]

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_vozvrati_itog_p]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tanya
-- Create date: 2017-06-21

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_vozvrati_itog_p] '20140101','20140110'
-- =============================================
create PROCEDURE [dbo].[WORK_vozvrati_itog_p]
	@date1	DATETIME,
	@date2	DATETIME	

AS
BEGIN
	SET NOCOUNT ON;


	select 
		C.h_id,
		c.h_date,
		c.h_type,
		ch.I_QTYU,
		ch.I_PRICE,
		c.h_ret,
		p.P_ID,
		p.P_NREC,
		a.A_ID,
		p.P_NAME,
		p.P_PACK,
		m.M_NAME,
		ch.r_course
		
				 
		into #table1

	from	
		apunkt_temp.dbo.CHECKS C inner join apunkt_temp.dbo.CHECK_ITEMS CH on c.H_ID=ch.H_ID
				 inner join ARTICLES A on A.A_ID=ch.A_ID
		         inner join PRODUCTS P on p.P_ID=A.P_ID	   
		         inner join MANUFACTURERS M on P.M_ID=M.M_ID     	        
	where
		(c.H_DATE>=@date1)
		and (c.H_DATE<DATEADD(dd,1,@date2))	
		and (H_TYPE=-1 or H_TYPE=-2) 
		and (a.A_ID<>266460 and a.A_ID<>275300)	
	
	select 
		#table1.H_ID,
		h_date,
		h_type,
		#table1.I_QTYU,
		#table1.I_PRICE as 'ПродPos',
		h_ret,
		P_ID,
		P_NREC,
		p_name,
		#table1.A_ID,
		ch.I_PRICE as 'ПродСкидкаPos',
		#table1.P_PACK,
		M_NAMe
	
	into #table2
	
	from  
			#table1 inner join apunkt_temp.dbo.CHECK_ITEMS ch on (#table1.H_RET=ch.h_id ) and (#table1.A_ID=ch.A_ID)
		
	select 		
		P_NREC,
		p_name,
		M_NAME,
		sum(I_QTYU) as 'kol',
		sum(cast(P_PACK*I_QTYU*[ПродPos]/100.0 as money)) as 'prod',
		sum(cast(P_PACK*I_QTYU*[ПродСкидкаPos]/100.0 as money)) as 'skid'
	into #table3
	from #table2
	
	group by
	P_NREC,
	P_NAME,
	M_NAME
	
	order by p_name
	
	SELECT
		[cmc]
		,[СуммаРозн]		= CAST([RPRICE]*[KOL] AS MONEY)
		,[СуммаПрод]		= CAST([PPRICE]*[KOL] AS MONEY)
		,[Дата]	= [DDOC]
		,KOL
	INTO #TABLE4
	FROM [192.168.24.152].GAL208.dbo.[RZSPDOC] WITH (NOLOCK)	
	INNER JOIN [192.168.24.152].GAL208.dbo.KATMC K WITH (NOLOCK) ON K.NREC = CMC AND K.NREC NOT IN (5469,6439)
	WHERE CSOPR IN (SELECT NREC FROM [192.168.24.152].GAL208.dbo.[RZDOC] WITH (NOLOCK) WHERE DDOC>=@date1 AND DDOC<=@date2 AND TYPEMOVE = 907 AND CPODRTO=4611924583836706197)
	
	select
		 cmc
		,sum(СуммаРозн) as 'srg'	
		,sum(СуммаПрод)	as 'spg'
		,sum(KOL) as 'kolg'
		
		into #table5
		from #TABLE4
		group by cmc

	select
			t3.p_name,
			t3.M_NAME,
			t5.kolg,
			t5.srg,
			t5.spg,
			t3.kol,
			t3.skid,
			t3.prod
			
	from #table3 t3 inner join #table5 t5 on t3.P_NREC=t5.cmc	
		

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_vozvrati_itog_a16]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tanya
-- Create date: 2017-06-21

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_vozvrati_itog_p] '20140101','20140110'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_vozvrati_itog_a16]
	@date1	DATETIME,
	@date2	DATETIME	

AS
BEGIN
	SET NOCOUNT ON;


	select 
		C.h_id,
		c.h_date,
		c.h_type,
		ch.I_QTYU,
		ch.I_PRICE,
		c.h_ret,
		p.P_ID,
		p.P_NREC,
		a.A_ID,
		p.P_NAME,
		p.P_PACK,
		m.M_NAME,
		ch.r_course
		
				 
		into #table1

	from	
		A16.dbo.CHECKS C inner join A16.dbo.CHECK_ITEMS CH on c.H_ID=ch.H_ID
				 inner join ARTICLES A on A.A_ID=ch.A_ID
		         inner join PRODUCTS P on p.P_ID=A.P_ID	   
		         inner join MANUFACTURERS M on P.M_ID=M.M_ID     	        
	where
		(c.H_DATE>=@date1)
		and (c.H_DATE<DATEADD(dd,1,@date2))	
		and (H_TYPE=-1 or H_TYPE=-2) 
		and (a.A_ID<>266460 and a.A_ID<>275300)	
	
	select 
		#table1.H_ID,
		h_date,
		h_type,
		#table1.I_QTYU,
		#table1.I_PRICE as 'ПродPos',
		h_ret,
		P_ID,
		P_NREC,
		p_name,
		#table1.A_ID,
		ch.I_PRICE as 'ПродСкидкаPos',
		#table1.P_PACK,
		M_NAMe
	
	into #table2
	
	from  
			#table1 inner join A16.dbo.CHECK_ITEMS ch on (#table1.H_RET=ch.h_id ) and (#table1.A_ID=ch.A_ID)
		
	select 		
		P_NREC,
		p_name,
		M_NAME,
		sum(I_QTYU) as 'kol',
		sum(cast(P_PACK*I_QTYU*[ПродPos]/100.0 as money)) as 'prod',
		sum(cast(P_PACK*I_QTYU*[ПродСкидкаPos]/100.0 as money)) as 'skid'
	into #table3
	from #table2
	
	group by
	P_NREC,
	P_NAME,
	M_NAME
	
	order by p_name
	
	SELECT
		[cmc]
		,[СуммаРозн]		= CAST([RPRICE]*[KOL] AS MONEY)
		,[СуммаПрод]		= CAST([PPRICE]*[KOL] AS MONEY)
		,[Дата]	= [DDOC]
		,KOL
	INTO #TABLE4
	FROM [192.168.24.152].GAL208.dbo.[RZSPDOC] WITH (NOLOCK)	
	INNER JOIN [192.168.24.152].GAL208.dbo.KATMC K WITH (NOLOCK) ON K.NREC = CMC AND K.NREC NOT IN (5469,6439)
	WHERE CSOPR IN (SELECT NREC FROM [192.168.24.152].GAL208.dbo.[RZDOC] WITH (NOLOCK) WHERE DDOC>=@date1 AND DDOC<=@date2 AND TYPEMOVE = 907 AND CPODRTO = 4612140463409331791)
	
	select
		 cmc
		,sum(СуммаРозн) as 'srg'	
		,sum(СуммаПрод)	as 'spg'
		,sum(KOL) as 'kolg'
		
		into #table5
		from #TABLE4
		group by cmc

	select
			t3.p_name,
			t3.M_NAME,
			t5.kolg,
			t5.srg,
			t5.spg,
			t3.kol,
			t3.skid,
			t3.prod
			
	from #table3 t3 inner join #table5 t5 on t3.P_NREC=t5.cmc	
		

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_vozvrati_itog]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-12-04

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_vozvrati_itog] '20140101','20140110'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_vozvrati_itog]
	@date1	DATETIME,
	@date2	DATETIME	

AS
BEGIN
	SET NOCOUNT ON;


	select 
		C.h_id,
		c.h_date,
		c.h_type,
		ch.I_QTYU,
		ch.I_PRICE,
		c.h_ret,
		p.P_ID,
		p.P_NREC,
		a.A_ID,
		p.P_NAME,
		p.P_PACK,
		m.M_NAME,
		ch.r_course
		
				 
		into #table1

	from	
		CHECKS C inner join CHECK_ITEMS CH on c.H_ID=ch.H_ID
				 inner join ARTICLES A on A.A_ID=ch.A_ID
		         inner join PRODUCTS P on p.P_ID=A.P_ID	   
		         inner join MANUFACTURERS M on P.M_ID=M.M_ID     	        
	where
		(c.H_DATE>=@date1)
		and (c.H_DATE<DATEADD(dd,1,@date2))	
		and (H_TYPE=-1 or H_TYPE=-2) 
		and (a.A_ID<>266460 and a.A_ID<>275300)	
	
	select 
		#table1.H_ID,
		h_date,
		h_type,
		#table1.I_QTYU,
		#table1.I_PRICE as 'ПродPos',
		h_ret,
		P_ID,
		P_NREC,
		p_name,
		#table1.A_ID,
		ch.I_PRICE as 'ПродСкидкаPos',
		#table1.P_PACK,
		M_NAMe
	
	into #table2
	
	from  
			#table1 inner join CHECK_ITEMS ch on (#table1.H_RET=ch.h_id ) and (#table1.A_ID=ch.A_ID)
		
	select 		
		P_NREC,
		p_name,
		M_NAME,
		sum(I_QTYU) as 'kol',
		sum(cast(P_PACK*I_QTYU*[ПродPos]/100.0 as money)) as 'prod',
		sum(cast(P_PACK*I_QTYU*[ПродСкидкаPos]/100.0 as money)) as 'skid'
	into #table3
	from #table2
	
	group by
	P_NREC,
	P_NAME,
	M_NAME
	
	order by p_name
	
	SELECT
		[cmc]
		,[СуммаРозн]		= CAST([RPRICE]*[KOL] AS MONEY)
		,[СуммаПрод]		= CAST([PPRICE]*[KOL] AS MONEY)
		,[Дата]	= [DDOC]
		,KOL
	INTO #TABLE4
	FROM [192.168.24.152].GAL208.dbo.[RZSPDOC] WITH (NOLOCK)	
	INNER JOIN [192.168.24.152].GAL208.dbo.KATMC K WITH (NOLOCK) ON K.NREC = CMC AND K.NREC NOT IN (5469,6439)
	WHERE CSOPR IN (SELECT NREC FROM [192.168.24.152].GAL208.dbo.[RZDOC] WITH (NOLOCK) WHERE DDOC>=@date1 AND DDOC<=@date2 AND TYPEMOVE = 907 AND CPODRTO=4611693923140645959)
	
	select
		 cmc
		,sum(СуммаРозн) as 'srg'	
		,sum(СуммаПрод)	as 'spg'
		,sum(KOL) as 'kolg'
		
		into #table5
		from #TABLE4
		group by cmc

	select
			t3.p_name,
			t3.M_NAME,
			t5.kolg,
			t5.srg,
			t5.spg,
			t3.kol,
			t3.skid,
			t3.prod
			
	from #table3 t3 inner join #table5 t5 on t3.P_NREC=t5.cmc	
		

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_vozvrat_pozic]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2014-01-09
-- Description:	Общий отчет
--				EXEC [dbo].[WORK_vozvrat_pozic] '20131201','20131231'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_vozvrat_pozic]
	@d1	DATETIME,
	@d2	DATETIME	
	
AS
BEGIN
	SET NOCOUNT ON;

--Выборка по дате-времени-виду товара (предоплата)
select C.h_id, C.u_id,C.H_sum
into #pred1
from	
	checks C inner join check_items CH on C.H_id=CH.H_id
				
where
	((c.h_type=-1) or (c.h_type=-2))
	and (c.h_date>=@d1)
	and (c.h_date<DATEADD(dd,1,@d2))	
	and ((ch.a_id=266460) or (ch.a_id=275300))
	--	and u_id=36
group by C.h_id, C.U_id,C.H_sum

--Выборка по дате-времени-виду товара (пакеты отдельным чеком)
select C.h_id, C.u_id,C.H_sum
into #pak1
from	
	checks C inner join check_items CH on C.H_id=CH.H_id
				
where
	((c.h_type=-1) or (c.h_type=-2))
	and (c.h_date>=@d1)
	and (c.h_date<DATEADD(dd,1,@d2))
	and ((ch.a_id=351380) or (ch.a_id=351390))
	and c.h_items=1
group by C.h_id, C.U_id,C.H_sum


--Выборка по дате-времени (все чеки без предоплаты и пакетов)

select 
	C.h_id
	,u_id
	,P.P_NAME
	,C.h_no
	,I_QTY
	,I_PRICE
	,C.H_DATE	
	
INTO #tmp

	from	checks C inner join check_items CH on C.H_ID=CH.H_ID
					inner join articles A on CH.A_ID=A.A_ID
					inner join products P on A.P_ID=P.P_ID
			
where	--((t_id = 1) or (t_id = 2) or (t_id = 4) or (t_id = 7)) 
--	and 
	((c.h_type=-1) or (c.h_type=-2))
	and (c.h_date>=@d1)
	and (c.h_date<DATEADD(dd,1,@d2))
	and C.h_id not in ((select h_id from #pred1) union (select h_id from #pak1))


select 
		u_fullname as 'ФИО'
		,P_NAME as 'Наименование'
		,H_NO as '№Чека'
		,I_QTY/1000.0 as 'Кол'
		,I_PRICE/100.0 as 'Цена'
		,H_DATE as 'Дата'
		, I_QTY/1000.0*I_PRICE/100.0 as 'Сумма'
		
from #tmp
		inner join users on #tmp.u_id=users.u_id		
order by u_fullname, h_date

	
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_lgotnoe]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-12-04

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_lgotnoe] '20131219','20131219'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_lgotnoe]
	@date1	DATETIME,
	@date2	DATETIME	

AS
BEGIN
	SET NOCOUNT ON;

--отбираем нужные поля
	select 
		C.h_id,
		c.h_date,
		c.RCP_ID,
		c.h_type,
		c.h_sum,
		c.h_dsum,
		ch.A_ID,
		ch.I_QTY,
		ch.I_QTYU,
		ch.I_PRICE,
		p.P_NAME,
		m.M_NAME,
		p.P_PACK,
		C.U_ID,
		ch.P_TAX,
		cat.RCPC_NAME,
		cat.RCPC_DISCOUNT,
		s.RCPS_NAME
		
	into #table1
	from	
		CHECKS C inner join CHECK_ITEMS CH on c.H_ID=ch.H_ID
		         inner join RECEIPES rec on c.RCP_ID=rec.RCP_ID
		         inner join RCP_CATEGORIES cat on rec.RCPC_CODE=cat.RCPC_CODE
		         inner join RCP_SOURCES S on rec.RCPS_CODE=S.RCPS_CODE
		         inner join ARTICLES A on A.A_ID=ch.A_ID
		         inner join PRODUCTS P on p.P_ID=A.P_ID
		         inner join MANUFACTURERS M on P.M_ID=M.M_ID
	where
		(c.H_DATE>=@date1)
		and (c.H_DATE<DATEADD(dd,1,@date2))	and (H_TYPE=1 or H_TYPE=2) 			
	
	
-- отбираем из таблицы #table1 поля и суммируем по кол-ву в таблицу #table2	
	select 
	H_ID,
		h_date,
		RCP_ID,
		h_type,
		h_sum,
		h_dsum,
		A_ID,
		sum(I_QTY) as [KolO],
		sum(I_QTYU) as [KolU],
		I_PRICE,
		P_NAME,
		M_NAME,
		P_PACK,
		U_ID,
		P_TAX,
		RCPC_NAME,
		RCPC_DISCOUNT,
		RCPS_NAME
		
	into #table2
	
	from #table1
	
	group by 
		h_id,
		h_date,
		RCP_ID,
		h_type,
		h_sum,
		h_dsum,
		A_ID,
		I_PRICE,
		P_NAME,
		M_NAME,
		P_PACK,
		U_ID,
		P_TAX,
		RCPC_NAME,
		RCPC_DISCOUNT,
		RCPS_NAME
	
--вывод полей	
	select 
		RCPS_NAME as 'Организация',
		RCPC_NAME as 'Категория',
		RCPC_DISCOUNT as 'Скидка',
		P_NAME as 'Наименование',
		M_NAME as 'Производитель',
			round(([kolu]),3) as 'Кол',
			Round(cast ([I_PRICE] as float)/100*p_pack,2) as 'Цена',
			Round(cast ([I_PRICE] as float)*[kolo]/100000,2) as 'Сумма',
			
			case
				when P_TAX IS NULL then 0	
				else (Round(cast([I_PRICE] as float)*[kolo]/100000,2))/6
			end as 'СуммаНДС',
			
			Round(([kolo]*[I_PRICE]*[RCPC_DISCOUNT]/10000000.0),2) As 'СуммаСкидка'
			
		
		
	from #table2
	
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_defectars_prod]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2011-07-20
-- Description:	Продажи дефектарам
-- =============================================
CREATE PROCEDURE [dbo].[WORK_defectars_prod]
	@date1	datetime,
	@date2	datetime,
	@hour1	int,
	@hour2	int,
	@otdel	int	-- 0=все отделы, 1=рецептура, 2=нетрадиционка, 3=медизделия
AS
BEGIN	
	SET NOCOUNT ON;

	DECLARE @description	nvarchar(50)
	
	CREATE TABLE #AG (AG INT);

	INSERT #AG SELECT DISTINCT p_sizez FROM products;	
	
	IF @otdel=1
	BEGIN
		DELETE FROM #AG WHERE AG<>1 AND AG<>6
		SELECT @description=N'Продажи отдела ЛС'
	END
	IF @otdel=2
	BEGIN
		DELETE FROM #AG WHERE AG<=2 OR AG=6
		SELECT @description=N'Продажи отдела НДС'
	END
	IF @otdel=3
	BEGIN
		DELETE FROM #AG WHERE AG<>2
		SELECT @description=N'Продажи отдела МИ'
	END
	IF (@otdel<0 OR @otdel>3)
	BEGIN
		DELETE FROM #AG
		SELECT @description=N'Продажи по всем отделам'
	END
	
	SELECT
		@description,	
		P.p_remmc,
		CI.a_id,
		P.p_name,
		M.m_name,
		ROUND(SUM(CI.i_qtyu),4) as prod_kol,
		ROUND(PROD.OstU,4) as OstU
	FROM	checks C 
			INNER JOIN check_items CI ON C.h_id=CI.h_id
			INNER JOIN articles A ON CI.a_id=A.a_id
			INNER JOIN products P ON A.p_id=P.p_id
			INNER JOIN MANUFACTURERS M ON P.m_id=M.m_id
			LEFT JOIN PROD ON CI.a_id=PROD.larticul			
	WHERE
			C.h_date>=DATEADD(hh,@hour1,@date1) AND
			C.h_date<=DATEADD(hh,@hour2,@date2) AND			
			(C.h_type=1 OR C.h_type=2 OR C.h_type=3) AND
			PROD.Podr1 like '%Аптека%' AND
			P.p_sizez IN (SELECT AG FROM #AG)	-- По заданной АГ
			
	GROUP BY		
		P.p_remmc,
		CI.a_id,
		P.p_name,
		M.m_name,		
		PROD.OstU,
		P.p_sizez
	ORDER BY P.p_remmc,P.p_name
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_DISCOUNT_VOZV]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_DISCOUNT_VOZV]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата (Возврат)],103) AS DATETIME)		
		, [Скидка] =SUM(TR.[Количество]*(TR.[Цена (Продажа)]-TR.[Цена (Возврат)]))
		, [T_ID] = TR.[Терминал]
		, [Тип] = TR.[Тип]
		, [СкидкаЧек] =SUM(TR.[Количество]*(TR.[Цена (ПродажаЧек)]-TR.[Цена (ВозвратЧек)]))
	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Дата (Возврат)]			= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= -CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена (Возврат)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0 * CAST(ISNULL(CI.R_COURSE,1) AS MONEY)
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0 * CAST(ISNULL(CI.R_COURSE,1) AS MONEY) * CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (Продажа)]			= 
			(	SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) * CAST(ISNULL(CI2.R_COURSE,1) AS MONEY) FROM CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			,[Цена (ВозвратЧек)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (ПродажаЧек)]			= 
			(SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) FROM CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			
	
		FROM CHECKS C WITH (NOLOCK)
			INNER JOIN CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]
			INNER JOIN [ARTICLES] A WITH (NOLOCK) ON A.[A_ID] = CI.[A_ID] AND A.[P_ID] NOT IN (44379,43472,52464)
			LEFT OUTER JOIN [CHECKS] C2 WITH (NOLOCK) ON C2.[H_ID] = C.[H_RET]
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  DATEADD(dd,1,@date2)
		
	) TR
	GROUP BY 
		TR.[Дата (Возврат)]
		,TR.[Терминал]
		,TR.[Тип];

	SELECT
		[Дата]
		,T_ID
		,case
			when [Тип]=-1 then N'Наличные'
			when [Тип]=-2 then N'К.Карта'			
			else N'0' 
		end as WB_TYPE
		,SUM(ISNULL([СкидкаЧек],0)) as TOTAL_DISCOUNT_POS
		,case
			when T_ID = 2 or T_ID=6 then 0
			else SUM(ISNULL([СкидкаЧек],0))
			end as TOTAL_DISCOUNT_POS_R
		,case
			when T_ID = 2 or T_ID=6 then SUM(ISNULL([СкидкаЧек],0))
			else 0
			end as TOTAL_DISCOUNT_POS_UAH 
	FROM #TABLE1
		WHERE Round([СкидкаЧек],2)>0 
	GROUP BY
		[Дата]
		,T_ID
		,[Тип]
	ORDER BY
		[Дата]
		,T_ID
		,[Тип]
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_DISCOUNT]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_DISCOUNT]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата (Возврат)],103) AS DATETIME)		
		, [Скидка] =SUM(TR.[Количество]*(TR.[Цена (Продажа)]-TR.[Цена (Возврат)]))
		, [T_ID] = TR.[Терминал]
		, [Тип] = TR.[Тип]

	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Дата (Возврат)]			= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена (Возврат)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (Продажа)]			= 
			(	SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) FROM CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			
		FROM CHECKS C WITH (NOLOCK)
			INNER JOIN CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]
			INNER JOIN [ARTICLES] A WITH (NOLOCK) ON A.[A_ID] = CI.[A_ID] AND A.[P_ID] NOT IN (44379,43472,52464)
			LEFT OUTER JOIN [CHECKS] C2 WITH (NOLOCK) ON C2.[H_ID] = C.[H_RET]
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  @date2		
		
	) TR
	GROUP BY 
		TR.[Дата (Возврат)]
		,TR.[Терминал]
		,TR.[Тип];

	INSERT INTO #TABLE1
	(
	[Дата]	
	,[Скидка]
	,[T_ID]
	,[Тип]
	)
	
	(SELECT
		CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)		
		,C.[T_ID]		
		,C.[H_TYPE]
	FROM CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,2,3)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DSUM]>0					AND
		C.RCP_ID IS NULL				AND
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	)

	INSERT INTO #TABLE1
	(
	[Дата]	
	,[Скидка]
	,[T_ID]
	,[Тип]
	)
	
	(SELECT
		CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,[Скидка]	= -ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)		
		,C.[T_ID]		
		,4
	FROM CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,2,3)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DSUM]>0					AND
		C.RCP_ID IS NOT NULL				AND
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	)
	
	SELECT
		[Дата]
		,T_ID
		,case
			when [Тип]=1 then N'Продажи Наличные'
			when [Тип]=2 then N'Продажи К.Карта'
			when [Тип]=3 then N'Продажи Бонусы'
			when [Тип]=-1 then N'Возвраты Наличные'
			when [Тип]=-2 then N'Возвраты К.Карта'
			when [Тип]=4 then N'Продажи Льготные'
			else N'0' 
		end as WB_TYPE
		,SUM(ISNULL([Скидка],0)) as TOTAL_DISCOUNT_POS
	FROM #TABLE1
		WHERE [Скидка]<>0
	GROUP BY
		[Дата]
		,T_ID
		,[Тип]
	ORDER BY
		[Дата]
		,T_ID
		,[Тип]
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_bonus_prod]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- Create date: 2012-08-26
-- Description:	Продажа препаратов за бонусы
--	EXEC [dbo].[WORK_BONUS_prod] '20120924','20120925'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_bonus_prod]
	@date1	datetime,
	@date2	datetime
AS
BEGIN	
	SET NOCOUNT ON;

    SELECT 
		P.p_id
		,P.p_name
		,M.m_name
		,'УП' as ed
		,SUM(CI.i_qtyu) as kol
		,SUM(CAST(CAST(CI.i_price as float)*CAST(P.P_pack as float)/100 as float)) as price
		,SUM(CAST(CAST(CI.i_qty as float)*CAST(CI.i_price as float)/100000 as float)) as summa
		,(case when P.p_tax is not NULL then SUM(CAST(CAST(CI.i_qty as float)*CAST(CI.i_price as float)/600000 as float)) else NULL end) as nds
	FROM
		checks C	INNER JOIN check_items CI ON C.h_id=CI.h_id
					INNER JOIN articles A ON CI.a_id=A.a_id
					INNER JOIN products P ON A.p_id=P.p_id
					INNER JOIN manufacturers M ON P.m_id=M.m_id
	WHERE
		C.h_date>=@date1 AND 
		C.h_date<DATEADD(dd,1,@date2) AND
		C.h_type=3
	GROUP BY 
		P.p_id,
		P.p_name,
		M.m_name,
		P.p_tax
	ORDER BY P.p_name
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_VOZV_P]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-08-09

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_VOZV] '20130801','20130808'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_VOZV_P]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
		[BARKOD]
		,[СуммаГал]		= CAST([RPRICE]*[KOL] AS MONEY)
		,[Дата]	= [DDOC]
	INTO #TABLE0
	FROM [192.168.24.152].GAL208.dbo.[RZSPDOC] WITH (NOLOCK)	
	INNER JOIN [192.168.24.152].GAL208.dbo.KATMC K WITH (NOLOCK) ON K.NREC = CMC AND K.NREC NOT IN (5469,6439,4612148931695030093)
	WHERE CSOPR IN (SELECT NREC FROM [192.168.24.152].GAL208.dbo.[RZDOC] WITH (NOLOCK) WHERE DDOC>=@date1 AND DDOC<=@date2 AND TYPEMOVE = 907 AND CPODRTO=4611924583836706197)

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата (Возврат)],103) AS DATETIME)
		,[СуммаВозврата]=SUM(TR.[Количество]*TR.[Цена (Возврат)])
		, [СуммаПродажи] =SUM(TR.[Количество]*TR.[Цена (Продажа)])
		,[СуммаГал] = CAST(0 as MONEY)
	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Дата (Возврат)]			= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= -CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена (Возврат)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0 * CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (Продажа)]			= 
			(	SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) FROM apunkt_temp.dbo.CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			
		FROM aPunkt_temp.dbo.CHECKS C WITH (NOLOCK)
			INNER JOIN aPunkt_temp.dbo.CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]
			INNER JOIN [ARTICLES] A WITH (NOLOCK) ON A.[A_ID] = CI.[A_ID] AND A.[P_ID] NOT IN (44379,43472,52464,89853)
			LEFT OUTER JOIN apunkt_temp.dbo.CHECKS C2 WITH (NOLOCK) ON C2.[H_ID] = C.[H_RET]
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  DATEADD(dd,1,@date2)
		
	) TR
	GROUP BY 
		TR.[Дата (Возврат)]

	INSERT #TABLE1
	([Дата]
	,[СуммаВозврата]
	,[СуммаПродажи]
	,[СуммаГал])
	(SELECT
		[Дата]
		,0
		,0
		,SUM([СуммаГал])		
	FROM #TABLE0
	GROUP BY [Дата]
	)

	SELECT
		[Дата]		
		,SUM(ISNULL([СуммаГал],0)) as TOTAL_VOZV_GAL
		,SUM(ISNULL([СуммаВозврата],0)) as TOTAL_VOZV_POS
		,SUM(ISNULL([СуммаПродажи],0)) as TOTAL_VOZV_REAL
	FROM #TABLE1		
	GROUP BY
		[Дата]		
	ORDER BY
		[Дата]

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_VOZV_a16]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		tanya
-- Create date: 2017-10-09

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_VOZV_a16] '20130801','20130808'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_VOZV_a16]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
		[BARKOD]
		,[СуммаГал]		= CAST([RPRICE]*[KOL] AS MONEY)
		,[Дата]	= [DDOC]
	INTO #TABLE0
	FROM [192.168.24.152].GAL208.dbo.[RZSPDOC] WITH (NOLOCK)	
	INNER JOIN [192.168.24.152].GAL208.dbo.KATMC K WITH (NOLOCK) ON K.NREC = CMC AND K.NREC NOT IN (5469,6439)
	WHERE CSOPR IN (SELECT NREC FROM [192.168.24.152].GAL208.dbo.[RZDOC] WITH (NOLOCK) WHERE DDOC>=@date1 AND DDOC<=@date2 AND TYPEMOVE = 907 AND CPODRTO = 4612140463409331791)

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата (Возврат)],103) AS DATETIME)
		,[СуммаВозврата]=SUM(TR.[Количество]*TR.[Цена (Возврат)])
		, [СуммаПродажи] =SUM(TR.[Количество]*TR.[Цена (Продажа)])
		,[СуммаГал] = CAST(0 as MONEY)
	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Дата (Возврат)]			= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= -CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена (Возврат)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0 * CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (Продажа)]			= 
			(	SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) FROM A16.dbo.CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			
		FROM A16.dbo.CHECKS C WITH (NOLOCK)
			INNER JOIN A16.dbo.CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]
			INNER JOIN [ARTICLES] A WITH (NOLOCK) ON A.[A_ID] = CI.[A_ID] AND A.[P_ID] NOT IN (44379,43472,52464)
			LEFT OUTER JOIN A16.dbo.CHECKS C2 WITH (NOLOCK) ON C2.[H_ID] = C.[H_RET]
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  DATEADD(dd,1,@date2)
		
	) TR
	GROUP BY 
		TR.[Дата (Возврат)]

	INSERT #TABLE1
	([Дата]
	,[СуммаВозврата]
	,[СуммаПродажи]
	,[СуммаГал])
	(SELECT
		[Дата]
		,0
		,0
		,SUM([СуммаГал])		
	FROM #TABLE0
	GROUP BY [Дата]
	)

	SELECT
		[Дата]		
		,SUM(ISNULL([СуммаГал],0)) as TOTAL_VOZV_GAL
		,SUM(ISNULL([СуммаВозврата],0)) as TOTAL_VOZV_POS
		,SUM(ISNULL([СуммаПродажи],0)) as TOTAL_VOZV_REAL
	FROM #TABLE1		
	GROUP BY
		[Дата]		
	ORDER BY
		[Дата]

END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_VOZV]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-08-09

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BUH_INFO_VOZV] '20130801','20130808'
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_VOZV]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
		[BARKOD]
		,[СуммаГал]		= CAST([RPRICE]*[KOL] AS MONEY)
		,[Дата]	= [DDOC]
	INTO #TABLE0
	FROM [192.168.24.152].GAL208.dbo.[RZSPDOC] WITH (NOLOCK)	
	INNER JOIN [192.168.24.152].GAL208.dbo.KATMC K WITH (NOLOCK) ON K.NREC = CMC AND K.NREC NOT IN (5469,6439,4612148931695030093)
	WHERE CSOPR IN (SELECT NREC FROM [192.168.24.152].GAL208.dbo.[RZDOC] WITH (NOLOCK) WHERE DDOC>=@date1 AND DDOC<=@date2 AND TYPEMOVE = 907 AND CPODRTO=4611693923140645959)

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата (Возврат)],103) AS DATETIME)
		,[СуммаВозврата]=SUM(TR.[Количество]*TR.[Цена (Возврат)])
		, [СуммаПродажи] =SUM(TR.[Количество]*TR.[Цена (Продажа)])
		,[СуммаГал] = CAST(0 as MONEY)
	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Дата (Возврат)]			= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= -CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена (Возврат)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0 * CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (Продажа)]			= 
			(	SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) FROM CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			
		FROM CHECKS C WITH (NOLOCK)
			INNER JOIN CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]
			INNER JOIN [ARTICLES] A WITH (NOLOCK) ON A.[A_ID] = CI.[A_ID] AND A.[P_ID] NOT IN (44379,43472,52464,89853)
			LEFT OUTER JOIN [CHECKS] C2 WITH (NOLOCK) ON C2.[H_ID] = C.[H_RET]
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  DATEADD(dd,1,@date2)
		
	) TR
	GROUP BY 
		TR.[Дата (Возврат)]

	INSERT #TABLE1
	([Дата]
	,[СуммаВозврата]
	,[СуммаПродажи]
	,[СуммаГал])
	(SELECT
		[Дата]
		,0
		,0
		,SUM([СуммаГал])		
	FROM #TABLE0
	GROUP BY [Дата]
	)

	SELECT
		[Дата]		
		,SUM(ISNULL([СуммаГал],0)) as TOTAL_VOZV_GAL
		,SUM(ISNULL([СуммаВозврата],0)) as TOTAL_VOZV_POS
		,SUM(ISNULL([СуммаПродажи],0)) as TOTAL_VOZV_REAL
	FROM #TABLE1		
	GROUP BY
		[Дата]		
	ORDER BY
		[Дата]

END
GO
/****** Object:  StoredProcedure [dbo].[ip_incfact_result]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_incfact_result]
@aid int,  -- ID артикула
@brno  int,
@key nvarchar(255), -- ключ инвентаризации
@mt bit,
@a1 int,
@a2 int
as
begin
	set nocount on;
	declare @invid int;
	select @invid = INV_ID from INVENTS where INV_CODE=@key;
	exec dbo.ip_incfact @aid, @brno, @key, @mt, @a1, @a2;
	select IRS_FQTY, IRS_SQTY from INVENT_RESULT where A_ID=@aid and BR_NO=@brno and INV_ID=@invid and INV_MT=@mt and INV_A1=@a1 and INV_A2=@a2;
end
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_fillmatchdiff]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE  procedure [dbo].[ip_invent_fillmatchdiff]
@id int
as
begin
	set nocount on;
	select ir.A_ID, P_NAME, M_NAME, p.P_PACK, PRICE=cast(a.P_PRICE as money), 0, 0, 
	ir.INV_MT, ir.INV_A1, ir.INV_A2, sum(IRS_FQTY), p.P_REMMC
	from INVENT_RESULT ir
	inner join ARTICLES a on ir.A_ID=a.A_ID
	inner join PRODUCTS p on a.P_ID=p.P_ID
	left join MANUFACTURERS m on p.M_ID=m.M_ID
	where INV_ID=@id
	group by ir.A_ID, P_NAME, M_NAME, p.P_PACK, a.P_PRICE, ir.INV_MT, ir.INV_A1, ir.INV_A2, p.P_REMMC
	having round(abs(sum(IRS_FQTY)), 4) > 0.0
	order by P_NAME, ir.A_ID;
	end;
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_findsimple]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_findsimple]
@art int
as
begin
	set nocount on;
	declare @pid int;
	select @pid = P_ID from ARTICLES where A_ID=@art;
	select P_NAME, P_PACK from PRODUCTS where P_ID=@pid;
end
GO
/****** Object:  StoredProcedure [dbo].[katalog_site]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Кащенко Т.С. and  Ганебная Е.А.
-- Create date: 2017-09-05
-- Description:	Каталог для сайта
-- EXEC [dbo].[katalog_site]
-- =============================================
CREATE PROCEDURE [dbo].[katalog_site]
as
begin
DELETE FROM [new].[dbo].[site_katalog]
insert into [new].[dbo].[site_katalog]
([IE_XML_ID]
,[IE_NAME]
,[IP_PROP67])
				select --TOP 5
				p.p_nrec "NREC"
				,substring(p_name,0,charindex('|',p_name)) "NAME"
				,case when charindex('|',m_name)>0 then substring(m_name,0,charindex('|',m_name)) else m_name end "MANUFACTURE"
												
				from products P
					inner join manufacturers m on p.m_id=m.m_id
					inner join ARTICLES a on a.P_ID=p.P_ID
					inner join JOURNAL j on j.A_ID=a.A_ID
	Group by 
				p.p_nrec,
				p.p_name,
				m.m_name,
				p.p_volume
				having
				((p.p_volume<>2222)and (p.p_volume<>6) and ((ROUND(SUM(j.j_qtyu),4)>0)))
		
order by p.p_name
	update [new].[dbo].[site_katalog]
	set [IP_prop69] = 'есть в наличии'
	where [IP_prop69] is null 
END
GO
/****** Object:  StoredProcedure [dbo].[K_SELECT_ENDED_BALANCE]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[K_SELECT_ENDED_BALANCE]
	@date1	datetime = GetDate,		--дата отображения
	@date2	datetime = GetDate,		--дата отображения
	@txt	nvarchar(255)		-- Фрагмент наименования товаров	

AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @pat NVARCHAR(255)
	SELECT @pat = N'%' + UPPER(@txt) + N'%' -- вхождение

	--Выбор сегодняшних продаж
	select 
		A.p_id,
		sum(CI.i_qtyu) as kol
	into #p1
	from	checks C 
			inner join check_items CI ON C.h_id=CI.h_id
			inner join articles A ON CI.a_id=A.a_id
	where C.h_date>convert(datetime,round(convert (float,getdate()),0,1))
	group by a.p_id


	SELECT 
		eb.p_id,
		p.p_name,
		m.m_name,
		p.p_volume,
		p.p_min,
		p.p_max,
		p.p_okdp,
		eb.eb_date,
		eb.eb_worked,
		Round(eb.eb_kol,2) as eb_kol,
		pa.price_active,
		Q=ISNULL(Round(sum(j_qtyu),2),0),
		tz.DataDate,
		Q_GAL_APTEKA=Round(ISNULL(tz.qapteka,0)-ISNULL(#p1.kol,0),2),
		Q_GAL_SKLAD=ISNULL(Round(tzs.qsklad,2),0),
		Q_TOTAL=Round(ISNULL(tz.qapteka,0)-ISNULL(#p1.kol,0)+ISNULL(tzs.qsklad,0),2)
	
	FROM ENDED_BALANCE EB inner join PRODUCTS P ON EB.p_id=P.p_id
			inner join MANUFACTURERS M ON P.m_id=M.m_id
			left  join PRICES_ACTIVE PA on P.P_NREC=PA.P_NREC
			inner join ARTICLES A ON EB.p_id=A.p_id			
			left join #p1 on EB.p_id=#p1.p_id
			left join JOURNAL J ON A.A_ID=J.A_ID
			left join 
				(select
					CMC,
					Max(DataDate) as DataDate,
					Round(sum(CountGal*KOEF),2) as QAPTEKA
					from PROD
				where PROD.podr like '%461169392314%' AND COUNtGAL>0
				group by CMC
				) TZ on p.p_NREC=TZ.CMC
			left join 
				(select
					CMC,
					Round(sum(CountGal*KOEF),2) as QSKLAD
					from PROD 
				where PROD.podr like '%4611919881864%' AND COUNtGAL>0
				group by CMC
				) TZS on p.p_NREC=TZS.CMC			
		
	WHERE EB_DATE>=@date1 AND EB_DATE<=@date2 AND upper(P_NAME) like @pat 
	--WHERE upper(P_NAME) like @pat

	GROUP BY eb.p_id,p.p_name, m.m_name, p.p_volume, p.p_min, p.p_max, p.p_okdp, eb.eb_date, eb.eb_worked, eb.eb_kol, pa.price_active, tz.qapteka, tz.DataDate, tzs.qsklad, #p1.kol
	order by p_name, eb_date

END
GO
/****** Object:  StoredProcedure [dbo].[otkaz_product_poslike1]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-04-19 14:31:35.653
-- Description:	Информация о товарах по фрагменту наименования
--
-- EXEC [ap_product_poslike_PL] N'ВАЛИДОЛ%ТАБ',0
-- =============================================
CREATE PROCEDURE [dbo].[otkaz_product_poslike1]
	@txt	nvarchar(255)	-- Фрагмент наименования товаров	
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @pat NVARCHAR(255)
	SELECT @pat = N'%' + UPPER(@txt) + N'%' -- вхождение

	SELECT top 301 
			a.A_ID
		, (CASE when ISNULL(P.p_sklad,0)<1 THEN p.p_name ELSE p.P_NAME+' ['+CAST(ISNULL(P.P_SKLAD,0) AS VARCHAR)+']' END) AS p_name
		, p.p_name  as p_name_otkaz
		, p.p_id
		, p.p_tnved
		, p.p_volume
		, p.p_min
		, p.p_max		
		, p.p_maxrn
		, a.P_PRICE as P_PRICE_ART
		, PA.PRICE_ACTIVE as P_PRICE_PRICE
		, Q=ISNULL(Round(sum(J_QTYU),2),0)
		, QSKLAD=ISNULL(Round(sum(J_QTYU),2),0)
		, M_NAME
		, P_info = cast (p.p_volume as varchar) + '(' + cast(p.p_min as varchar) + ';' + cast(p.p_max as varchar)+')(' + cast(p.p_tnved as varchar)+ ')'+cast(p.p_disc as varchar)
		
	from JOURNAL j right join ARTICLES a on j.A_ID=a.A_ID
				inner join PRODUCTS p on p.P_ID=a.P_ID
				inner join MANUFACTURERS m on p.M_ID=m.M_ID
				left  join PRICES_ACTIVE PA on P.P_NREC=PA.P_NREC
				left join PROD on p.p_NREC=PROD.CMC

	where upper(P_NAME) like @pat
	group by a.A_ID, p.P_NAME, a.P_PRICE, m.M_NAME, p.p_sizex, p.p_volume, p.p_min, p.p_max, p.p_tnved, p.p_remmc, p.p_disc,p.p_sklad, P.p_nrec, PRICE_ACTIVE,p.p_id, p.p_maxrn, PROD.CMC

	ORDER BY P_NAME, p_price DESC

END
GO
/****** Object:  StoredProcedure [dbo].[otkaz_product_poslike]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2010-04-19 14:31:35.653
-- Description:	Информация о товарах по фрагменту наименования
--
-- EXEC [ap_product_poslike_PL] N'ВАЛИДОЛ%ТАБ',0
-- =============================================
CREATE  PROCEDURE [dbo].[otkaz_product_poslike]
	@txt	nvarchar(255)	-- Фрагмент наименования товаров	
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @pat NVARCHAR(255)
	SELECT @pat = N'%' + UPPER(@txt) + N'%' -- вхождение

	SELECT top 301 
		p.p_id
		--, p.p_nrec
		, CAST(p.p_id AS BIGINT) as p_nrec
		, (CASE when ISNULL(P.p_sklad,0)<1 THEN p.p_name ELSE p.P_NAME+' ['+CAST(ISNULL(P.P_SKLAD,0) AS VARCHAR)+']' END) AS p_name
		, (CASE when ISNULL(P.p_sklad,0)<1 THEN p.p_name ELSE p.P_NAME+' ['+CAST(ISNULL(P.P_SKLAD,0) AS VARCHAR)+']' END)  as p_name_otkaz		
		, p.p_tnved
		, p.p_volume
		, p.p_min
		, p.p_max		
		, p.p_maxrn		
		, PA.PRICE_ACTIVE as P_PRICE_PRICE
		, Q=ISNULL(Round(sum(J_QTYU),2),0)
		, QSKLAD=ISNULL(Round(PP.QSKLAD,2),0)
		, M_NAME
		, P_info = cast (p.p_volume as varchar) + '(' + cast(p.p_min as varchar) + ';' + cast(p.p_max as varchar)+')(' + cast(p.p_tnved as varchar)+ ')'+cast(p.p_disc as varchar)
		
	from JOURNAL j right join ARTICLES a on j.A_ID=a.A_ID
				inner join PRODUCTS p on p.P_ID=a.P_ID
				inner join MANUFACTURERS m on p.M_ID=m.M_ID
				left  join PRICES_ACTIVE PA on P.P_NREC=PA.P_NREC
				left join 
				(select
					CMC,
					Round(sum(CountGal*KOEF),2) as QSKLAD
					from PROD 
				where PROD.podr like '%4611919881864%' AND COUNtGAL>0
				group by CMC
				) PP on p.p_NREC=PP.CMC

	where upper(P_NAME) like @pat
	group by a.A_ID, p.P_NAME, a.P_PRICE, m.M_NAME, p.p_sizex, p.p_volume, p.p_min, p.p_max, p.p_tnved, p.p_remmc, p.p_disc,p.p_sklad, P.p_nrec, PRICE_ACTIVE,p.p_id, p.p_maxrn, PP.QSKLAD

	ORDER BY P_NAME

END
GO
/****** Object:  Table [dbo].[ARTICLES]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICLES](
	[A_ID] [bigint] NOT NULL,
	[P_ID] [int] NOT NULL,
	[P_PRICE] [float] NOT NULL,
	[P_NREC] [bigint] NULL,
 CONSTRAINT [PK_ARTICLES] PRIMARY KEY NONCLUSTERED 
(
	[A_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ARTICLES_P_ID] ON [dbo].[ARTICLES] 
(
	[P_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ap4_receipe_create]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap4_receipe_create]
@cat nchar(2),
@src nchar(2),
@name nvarchar(255),
@doctor nvarchar(255),
@disc float,
@no nvarchar(255)
--@docno nvarchar(255)
as
set nocount on
declare @rv int
insert into RECEIPES (RCPC_CODE, RCPS_CODE, RCP_NAME, RCP_DOCTOR, RCP_DISCOUNT, RCP_NO/*, RCP_DOCNO*/) 
values (@cat, @src, @name, @doctor, @disc, @no/*, @docno*/)
select @rv = SCOPE_IDENTITY()
return @rv
GO
/****** Object:  StoredProcedure [dbo].[ap4_get_receipe_sum]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap4_get_receipe_sum]
@code nvarchar(255)
as
begin
	set nocount on;
	declare @val money;
	select 
		--cast(I_PRICE as money) / 100, 
		--cast(I_QTY as money) / 1000,
		--cast(I_PRICE as money) / 100 * cast(I_QTY as money) / 1000, 
		--cast(I_DISCOUNT as money) / 100, 
		@val = sum(cast(I_PRICE as money) / 100 * cast(I_QTY as money) / 1000 * CAST(I_DISCOUNT as money) / 10000)
	from CHECK_ITEMS i inner join CHECKS ch on i.H_ID=ch.H_ID
	inner join RECEIPES r on ch.RCP_ID=r.RCP_ID
	where ch.RCP_ID is not null and r.RCPS_CODE=@code /*and ch.H_FIX=1*/ and
		DATEPART(mm, ch.H_DATE) = DATEPART(mm, getdate()) and DATEPART(yy, ch.H_DATE) = DATEPART(yy, getdate())

	if @val is null
		set @val = 0
	return cast(@val * 100 as int)
end
GO
/****** Object:  StoredProcedure [dbo].[ap4_check_find_rub]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[ap4_check_find_rub]
@no int,
@dt datetime,
@tid int
as 
begin
	set nocount on
	declare @nt datetime
	declare @hid int
	declare @disc int
	declare @c1 int
	declare @c2 int
	declare @datedisc datetime
	declare @checkdate datetime;
	declare @tp int; 
	declare @rid int
	declare @course float
	declare @gr float
	
	
	select @nt = dateadd(d, 1, @dt)
	select @hid = H_ID, @tp = H_TYPE, @disc = H_DISCOUNT, @checkdate=H_DATE  from CHECKS where H_NO=@no and H_DATE>=@dt and H_DATE<@nt and T_ID=@tid
	
	select @rid = R_ID from Rate_Term where T_id=@tid
	select @course = R_COURSE from RATE where R_ID = @rid
	
	/*
	set @gr = CASE WHEN (SELECT R_ID FROM CHECKS WHERE H_ID = @hid) IS NULL
                         THEN 1
   
                         ELSE (SELECT R_ID FROM CHECKS WHERE H_ID = @hid)
                        END
  */
   set @gr = ISNULL ((SELECT R_ID FROM CHECKS WHERE H_ID = @hid),1)
	
if @rid = @gr 
	begin
	set @course =1
	end
else
	begin
	select @course = R_COURSE from RATE where R_ID = @gr
	end;
	

	
	
	if @tp = 3
	
	
	
	begin
	  raiserror(N'Чек продавался за бонусы. Возврат по нему невозможен', 16, -1)
	end
	else
	begin
		-- количество позиций со скидкой
		select @c1 = count(*) from CHECK_ITEMS where I_DISCOUNT=@disc and H_ID=@hid
		-- количество позиций всего в чеке
		select @c2 = count(*) from CHECK_ITEMS where H_ID=@hid
		
		select @datedisc = SP_DATE from SYSPARAMS where SP_NAME=N'NEW_DISC';
		
		select H_ID, p.P_ID, I_PRICE/@course*1.0, I_QTYU, P_NAME, ch.P_TAX, P_UNU, P_UNU, a.A_ID, 
				a.A_ID, p.P_PACK, H_DISC=@disc, I_DISCOUNT, P_DISC, @c1, @c2, @datedisc, @checkdate, ch.I_BONUS, @tp
		  from CHECK_ITEMS ch inner join ARTICLES a on ch.A_ID=a.A_ID
		                      inner join PRODUCTS p on a.P_ID=p.P_ID
		where H_ID=@hid
	end
end
GO
/****** Object:  StoredProcedure [dbo].[ap4_check_find_grn]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[ap4_check_find_grn]
@no int,
@dt datetime,
@tid int
as 
begin
	set nocount on
	declare @nt datetime
	declare @hid int
	declare @disc int
	declare @c1 int
	declare @c2 int
	declare @datedisc datetime
	declare @checkdate datetime;
	declare @tp int; 
	declare @rid int
	declare @course float
	declare @gr float
	
	
	select @nt = dateadd(d, 1, @dt)
	select @hid = H_ID, @tp = H_TYPE, @disc = H_DISCOUNT, @checkdate=H_DATE  from CHECKS where H_NO=@no and H_DATE>=@dt and H_DATE<@nt and T_ID=@tid
	
	select @rid = R_ID from Rate_Term where T_id=@tid
	select @course = R_COURSE from RATE where R_ID = @rid
	
	set @gr = CASE WHEN (SELECT R_ID FROM CHECKS WHERE H_ID = @hid) IS NULL
                         THEN 1
                         ELSE (SELECT R_ID FROM CHECKS WHERE H_ID = @hid)
                        END
	
if @rid = @gr 
	begin
	set @course =1
	end
	

	
	
	if @tp = 3
	
	
	
	begin
	  raiserror(N'Чек продавался за бонусы. Возврат по нему невозможен', 16, -1)
	end
	else
	begin
		-- количество позиций со скидкой
		select @c1 = count(*) from CHECK_ITEMS where I_DISCOUNT=@disc and H_ID=@hid
		-- количество позиций всего в чеке
		select @c2 = count(*) from CHECK_ITEMS where H_ID=@hid
		
		select @datedisc = SP_DATE from SYSPARAMS where SP_NAME=N'NEW_DISC';
		
		select H_ID, p.P_ID, I_PRICE/@course*1.0, I_QTYU, P_NAME, ch.P_TAX, P_UNU, P_UNU, a.A_ID, 
				a.A_ID, p.P_PACK, H_DISC=@disc, I_DISCOUNT, P_DISC, @c1, @c2, @datedisc, @checkdate, ch.I_BONUS, @tp
		  from CHECK_ITEMS ch inner join ARTICLES a on ch.A_ID=a.A_ID
		                      inner join PRODUCTS p on a.P_ID=p.P_ID
		where H_ID=@hid
	end
end
GO
/****** Object:  StoredProcedure [dbo].[ap4_check_find]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[ap4_check_find]
@no int,
@dt datetime,
@tid int
as 
begin
	set nocount on
	declare @nt datetime
	declare @hid int
	declare @disc int
	declare @c1 int
	declare @c2 int
	declare @datedisc datetime
	declare @checkdate datetime;
	declare @tp int; 
	declare @rid int
	declare @course float
	declare @gr float
	
	
	select @nt = dateadd(d, 1, @dt)
	select @hid = H_ID, @tp = H_TYPE, @disc = H_DISCOUNT, @checkdate=H_DATE  from CHECKS where H_NO=@no and H_DATE>=@dt and H_DATE<@nt and T_ID=@tid and (H_TYPE=1 or H_TYPE=2)
	
	select @rid = R_ID from Rate_Term where T_id=@tid
	select @course = R_COURSE from RATE where R_ID = @rid
	
	/*
	set @gr = CASE WHEN (SELECT R_ID FROM CHECKS WHERE H_ID = @hid) IS NULL
                         THEN 1
   
                         ELSE (SELECT R_ID FROM CHECKS WHERE H_ID = @hid)
                        END
  */
   set @gr = ISNULL ((SELECT R_ID FROM CHECKS WHERE H_ID = @hid),1)
	
if @rid = @gr 
	begin
	set @course = 1
	end
else
	begin
	select @course = R_COURSE from RATE where R_ID = @gr 
	end;
	

	
	
	if @tp = 3
	
	
	
	begin
	  raiserror(N'Чек продавался за бонусы. Возврат по нему невозможен', 16, -1)
	end
	else
	begin
		-- количество позиций со скидкой
		select @c1 = count(*) from CHECK_ITEMS where I_DISCOUNT=@disc and H_ID=@hid
		-- количество позиций всего в чеке
		select @c2 = count(*) from CHECK_ITEMS where H_ID=@hid
		
		select @datedisc = SP_DATE from SYSPARAMS where SP_NAME=N'NEW_DISC';
		
		select H_ID, p.P_ID, I_PRICE*@course*1.0, I_QTYU, P_NAME, ch.P_TAX, P_UNU, P_UNU, a.A_ID, 
				a.A_ID, p.P_PACK, H_DISC=@disc, I_DISCOUNT, P_DISC, @c1, @c2, @datedisc, @checkdate, ch.I_BONUS, @tp
		  from CHECK_ITEMS ch inner join ARTICLES a on ch.A_ID=a.A_ID
		                      inner join PRODUCTS p on a.P_ID=p.P_ID
		where H_ID=@hid
	end
end
GO
/****** Object:  StoredProcedure [dbo].[ap_check_insert]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[ap_check_insert]
@no int,
@dt datetime,
@tid int,
@uid int,
@sum int,
@disc int,
@items int,
@cid int = null,
@tp int = 1, -- обычный чек,
@fail bit = 0,
@dsum int = 0,
@rcpid int = null,
@time int = 0 /*ДОБАВЛЕНО!!!!*/
as
set nocount on
declare @res int
select @res = 0
-- при вставке чека пишем в него последний ID из Z-отчетов
declare @z int
select @z = max(Z_ID) from Z_REPORTS where T_ID=@tid

declare @idntval table(ID bigint)

-- КУРС

declare @rid int
declare @course float


select @rid = R_ID from Rate_Term where T_id=@tid
select @course = R_COURSE from RATE where R_ID = @rid


insert into CHECKS (H_NO, H_DATE, T_ID, U_ID, H_SUM, H_DISCOUNT, 
	H_ITEMS, C_ID, H_TYPE, Z_ID, H_DSUM, RCP_ID, R_COURSE, R_ID )

	output inserted.H_ID into @idntval

  values (@no, @dt, @tid, @uid, @sum, @disc, @items, @cid, @tp, @z, @dsum, @rcpid, @course, @rid)

  select top(1) @res = ID from @idntval
	--select @res = ident_current('CHECKS')

return @res
GO
/****** Object:  StoredProcedure [dbo].[ap_check_find]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_check_find]
@no int,
@dt datetime,
@tid int
as 
set nocount on
declare @nt datetime
declare @hid int
declare @disc int
declare @c1 int
declare @c2 int
declare @datedisc datetime
declare @checkdate datetime;
select @nt = dateadd(d, 1, @dt)
select @hid = H_ID, @disc = H_DISCOUNT, @checkdate=H_DATE from CHECKS where H_NO=@no and H_DATE>=@dt and H_DATE<@nt and T_ID=@tid
-- количество позиций со скидкой
select @c1 = count(*) from CHECK_ITEMS where I_DISCOUNT=@disc and H_ID=@hid
-- количество позиций всего в чеке
select @c2 = count(*) from CHECK_ITEMS where H_ID=@hid

select @datedisc = SP_DATE from SYSPARAMS where SP_NAME=N'NEW_DISC';

select H_ID, p.P_ID, I_PRICE, I_QTYU, P_NAME, ch.P_TAX, P_UNU, P_UNU, a.A_ID, 
		a.A_ID, p.P_PACK, H_DISC=@disc, I_DISCOUNT, P_DISC, @c1, @c2, @datedisc, @checkdate
  from CHECK_ITEMS ch inner join ARTICLES a on ch.A_ID=a.A_ID
                      inner join PRODUCTS p on a.P_ID=p.P_ID
where H_ID=@hid
GO
/****** Object:  StoredProcedure [dbo].[AA]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AA]  AS

SELECT     
	  SUM(CHECK_ITEMS.I_QTYU) AS Expr1
	, ARTICLES.P_NREC
	, PRODUCTS.P_NAME
	, SUM(CHECK_ITEMS.I_QTYU * CHECK_ITEMS.I_PRICE / 100) AS Expr2
INTO #temp123
FROM CHECK_ITEMS 
INNER JOIN ARTICLES ON CHECK_ITEMS.A_ID = ARTICLES.A_ID 
INNER JOIN CHECKS ON CHECK_ITEMS.H_ID = CHECKS.H_ID 
INNER JOIN PRODUCTS ON ARTICLES.P_ID = PRODUCTS.P_ID
GROUP BY 
	  ARTICLES.P_NREC
	, PRODUCTS.P_NAME
	, CHECK_ITEMS.I_QTYU
	, CHECK_ITEMS.I_PRICE
ORDER BY 
	  PRODUCTS.P_NAME

select * from #temp123 order by p_name
GO
/****** Object:  StoredProcedure [dbo].[ap_checkret_insert]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[ap_checkret_insert]
@no int,
@dt datetime,
@tid int,
@uid int,
@aid int,
@sum int,
@ip int,
@iq int,
@iqu float,
@rhid int,
@bonus int = null
as
begin
	set nocount on
	declare @res int
	select @res = 0
	declare @tax char(1) 
	declare @pack int
	declare @pid int
	declare @cust int
	declare @type int; -- тип исходного чека
	declare @rid int
	declare @course float


select @rid = R_ID from Rate_Term where T_id=@tid
select @course = R_COURSE from RATE where R_ID = @rid
	select @pid = P_ID from ARTICLES where A_ID=@aid
	select @tax=P_TAX, @pack=P_PACK from PRODUCTS where P_ID=@pid;
	select @cust = C_ID, @type=H_TYPE from CHECKS where H_ID=@rhid;
	-- при вставке чека пишем в него последний ID из Z-отчетов
	declare @z int
	select @z = max(Z_ID) from Z_REPORTS where T_ID=@tid;

	-- тип нового чека - просто отрицательно значение исходного
	insert into CHECKS (H_NO, H_DATE, T_ID, U_ID, H_SUM, H_DISCOUNT, H_ITEMS, C_ID, H_TYPE, Z_ID, H_RET, R_COURSE, R_ID)
	  values (@no, @dt, @tid, @uid, @sum, 0, 1, @cust, -@type, @z, @rhid, @course,@rid)
	select @res = ident_current('CHECKS')
	insert into CHECK_ITEMS (H_ID, A_ID, I_QTY, I_PRICE, I_QTYU, P_TAX, P_PACK, I_BONUS, R_COURSE,R_ID) 
		values (@res, @aid, -@iq, @ip, -@iqu, @tax, @pack, isnull(@bonus, 0), @course, @rid)
	-- обновляем остатки (увеличиваем)
	insert into JOURNAL (A_ID, J_QTY, J_QTYU) values (@aid, @iq, @iqu)
end
GO
/****** Object:  StoredProcedure [dbo].[ap_product_getinfo4]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ap_product_getinfo4]
@code nvarchar(255),
@remonly nchar(1) = N'0'
as
begin
	set nocount on;
	-- первый набор - колонки (Name nvarchar(255), width(int)	
	select N'Наименование', 300 union all 
	select N'Производитель', 150 union all
	select N'Цена', 70 union all
	select N'Кол-во', 70 union all 
	select N'Рейтинг', 70 union all
	select N'Адрес', 150
	

	-- второй набор - содержимое (Все поля nvarchar длиной не более 1023 символов)
	declare @pid int
	declare @check int
	declare @patc nvarchar(50)
	declare @pnrec nvarchar(50)
	select @pid = P_ID from ARTICLES where A_ID=cast(@code as int)
	select @pnrec =cast(P_NREC as nvarchar(50)) from PRODUCTS where P_ID=@pid
	select @patc = P_ATC from PRODUCTS where P_ID=@pid
	select @check=cx_id
		from complex
		where p_atc=cast(@pid as nvarchar(20))
	
	if @check>0
		if @remonly='1'
			SELECT
				PRODUCTS.P_NAME,
				MANUFACTURERS.M_NAME, 
				cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC) IS NULL
					 THEN articles.P_PRICE
					ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)
					END
					as nvarchar(15)),
				cast(Round (ISNULL(SUM(JOURNAL.J_QTYU),0),5)  as nvarchar(20)),
				cast( PRODUCTS.P_SIZEX as nvarchar(5)),
				cast(PRODUCTS.P_REMMC as nvarchar(25))			
			FROM         PRODUCTS INNER JOIN
				          MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
					      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID LEFT JOIN
						  JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
			WHERE     (PRODUCTS.P_ATC IN
				              (SELECT     COMPLEX.CX_VALUE
					            FROM          COMPLEX
						        WHERE      cast(@pid as nvarchar(20))=COMPLEX.P_ATC and COMPLEX.CX_type is NULL)) 
				OR
				(PRODUCTS.p_NREC IN
					(SELECT     COMPLEX.CX_VALUE
						        FROM          COMPLEX
							    WHERE      cast (@pid as nvarchar(20))=COMPLEX.P_ATC and COMPLEX.CX_type=1)) 
			
			GROUP BY PRODUCTS.P_NAME, MANUFACTURERS.M_NAME, ARTICLES.P_PRICE, PRODUCTS.P_SIZEX, PRODUCTS.P_REMMC, PRODUCTS.P_NREC	
			HAVING SUM(JOURNAL.J_QTYU)>0.00001
			order by PRODUCTS.P_SIZEX desc

		else
			SELECT
				PRODUCTS.P_NAME,
				MANUFACTURERS.M_NAME, 
				cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC) IS NULL
					 THEN articles.P_PRICE
					ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)
					END
					as nvarchar(15)),
				cast(Round (ISNULL(SUM(JOURNAL.J_QTYU),0),5)  as nvarchar(20)),
				cast( PRODUCTS.P_SIZEX as nvarchar(5)),
				cast(PRODUCTS.P_REMMC as nvarchar(25))			
			FROM         PRODUCTS INNER JOIN
				          MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
					      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID LEFT JOIN
						  JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
			WHERE     (PRODUCTS.P_ATC IN
				              (SELECT     COMPLEX.CX_VALUE
					            FROM          COMPLEX
						        WHERE      cast(@pid as nvarchar(20))=COMPLEX.P_ATC and COMPLEX.CX_type is NULL))
				OR
				(PRODUCTS.p_NREC IN
					(SELECT     COMPLEX.CX_VALUE
						        FROM          COMPLEX
							    WHERE      cast (@pid as nvarchar(20))=COMPLEX.P_ATC and COMPLEX.CX_type=1)) 

			GROUP BY PRODUCTS.P_NAME, MANUFACTURERS.M_NAME, ARTICLES.P_PRICE, PRODUCTS.P_SIZEX, PRODUCTS.P_REMMC, PRODUCTS.P_NREC	
			order by PRODUCTS.P_SIZEX desc
	else
		if @remonly='1'
			SELECT
				PRODUCTS.P_NAME,
				MANUFACTURERS.M_NAME, 
				cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC) IS NULL
					 THEN articles.P_PRICE
					ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)
					END
					as nvarchar(15)),
				cast(Round (ISNULL(SUM(JOURNAL.J_QTYU),0),5)  as nvarchar(20)),
				cast( PRODUCTS.P_SIZEX as nvarchar(5)),
				cast(PRODUCTS.P_REMMC as nvarchar(25))			
			FROM         PRODUCTS INNER JOIN
				          MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
					      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID LEFT JOIN
						  JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
			WHERE     (PRODUCTS.P_ATC IN
				              (SELECT     COMPLEX.CX_VALUE
					            FROM          COMPLEX
						        WHERE      @patc like COMPLEX.P_ATC+N'%' and COMPLEX.CX_type is NULL)) 
				OR
				(PRODUCTS.p_NREC IN
					(SELECT     COMPLEX.CX_VALUE
						        FROM          COMPLEX
							    WHERE      @patc like COMPLEX.P_ATC+N'%' and COMPLEX.CX_type=1)) 
			
			GROUP BY PRODUCTS.P_NAME, MANUFACTURERS.M_NAME, ARTICLES.P_PRICE, PRODUCTS.P_SIZEX, PRODUCTS.P_REMMC, PRODUCTS.P_NREC	
			HAVING SUM(JOURNAL.J_QTYU)>0.00001
			order by PRODUCTS.P_SIZEX desc

		else
			SELECT
				PRODUCTS.P_NAME,
				MANUFACTURERS.M_NAME, 
				cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC) IS NULL
					 THEN articles.P_PRICE
					ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)
					END
					as nvarchar(15)),
				cast(Round (ISNULL(SUM(JOURNAL.J_QTYU),0),5)  as nvarchar(20)),
				cast( PRODUCTS.P_SIZEX as nvarchar(5)),
				cast(PRODUCTS.P_REMMC as nvarchar(25))			
			FROM         PRODUCTS INNER JOIN
				          MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
					      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID LEFT JOIN
						  JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
			WHERE     (PRODUCTS.P_ATC IN
				              (SELECT     COMPLEX.CX_VALUE
					            FROM          COMPLEX
						        WHERE      @patc like COMPLEX.P_ATC+N'%' and COMPLEX.CX_type is NULL)) 
				OR
				(PRODUCTS.p_NREC IN
					(SELECT     COMPLEX.CX_VALUE
						        FROM          COMPLEX
							    WHERE      @patc like COMPLEX.P_ATC+N'%' and COMPLEX.CX_type=1)) 

			GROUP BY PRODUCTS.P_NAME, MANUFACTURERS.M_NAME, ARTICLES.P_PRICE, PRODUCTS.P_SIZEX, PRODUCTS.P_REMMC, PRODUCTS.P_NREC	
			order by PRODUCTS.P_SIZEX desc


end
GO
/****** Object:  StoredProcedure [dbo].[ap_product_getinfo3]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ap_product_getinfo3]
@code nvarchar(255),
@remonly nchar(1) = N'0'
as
begin
	set nocount on;	
	--select N'Взаимодействие с пищей', 500 union all 
	--select N'Взаимодействие с ЛС', 500 union all 	


	set nocount on;
	-- первый набор - колонки (Name nvarchar(255), width(int)
	select N'Наименование', 400 union all 
	select N'Second', 0


	-- второй набор - содержимое (Все поля nvarchar длиной не более 1023 символов)
	declare @pid int
	select @pid = P_ID from ARTICLES where A_ID=cast(@code as int)
	
	select
		cast(P_NAME as nvarchar(255))+' '+cast(@remonly as nvarchar),
		N'Взаимодействие с пищей
'+cast(substring (i_food,1,charindex('/',i_food)-1) as nvarchar(255))+N'
'+cast(substring (i_food,charindex('/',i_food)+1,len(i_food)) as nvarchar(255))+N'

Взаимодействие с ЛС
'+cast(substring (i_drugs,1,charindex('/',i_drugs)-1) as nvarchar(255))+N'
'+cast(substring (i_drugs,charindex('/',i_drugs)+1,len(i_drugs)) as nvarchar(255))
	from dbo.PRODUCTS p inner join dbo.INTERACTION i on p.p_atc=i.p_atc
	where p.p_id=@pid	

end
GO
/****** Object:  StoredProcedure [dbo].[ap_product_getinfo2_20100315]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE         PROCEDURE [dbo].[ap_product_getinfo2_20100315]
@aid int,
@nozero bit

as
set nocount on
declare @pid int
select @pid = P_ID from ARTICLES where A_ID=@aid

select 'Наименование:360', 'Производитель:130', 'Цена:70', 'Кол-во:80', 'Рейт:50','','Адрес:100','1:1','2:1'

--SELECT     PRODUCTS.P_NAME AS Expr1, MANUFACTURERS.M_NAME,cast( ARTICLES.P_PRICE as varchar(15)), cast(SUM(JOURNAL.J_QTYU) as varchar(20)), PRODUCTS.P_SIZEX,  PRODUCTS.P_SIZEY,PRODUCTS.P_REMMC
--FROM         PRODUCTS INNER JOIN
--                      MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
--                      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID INNER JOIN
--                      JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
--WHERE     (PRODUCTS.P_ATC IN
--                          (SELECT     PRODUCTS.P_ATC
--                            FROM          PRODUCTS INNER JOIN
--                                                   MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
--                                                   ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID
--                            WHERE      (ARTICLES.A_ID = @aid)))
--GROUP BY PRODUCTS.P_NAME, MANUFACTURERS.M_NAME, ARTICLES.P_PRICE, PRODUCTS.P_SIZEX,  PRODUCTS.P_SIZEY, PRODUCTS.P_REMMC
--order by PRODUCTS.P_SIZEX desc

if @nozero>0 

SELECT     PRODUCTS.P_NAME AS Expr1, MANUFACTURERS.M_NAME, cast( ARTICLES.P_PRICE as varchar(15)), cast(Round (SUM(JOURNAL.J_QTYU),5)  as varchar(20)), cast(PRODUCTS.P_SIZEX as varchar (5)), cast( PRODUCTS.P_SIZEY as varchar(5)), cast( PRODUCTS.P_REMMC as varchar(10)),'',''
FROM         PRODUCTS INNER JOIN
                      MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
                      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID LEFT JOIN
                      JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
WHERE     (PRODUCTS.P_ATC IN
                          (SELECT     PRODUCTS.P_ATC
                            FROM          PRODUCTS INNER JOIN
                                                   MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
                                                   ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID
                            WHERE      (ARTICLES.A_ID = @aid)))
GROUP BY PRODUCTS.P_NAME, MANUFACTURERS.M_NAME, ARTICLES.P_PRICE, PRODUCTS.P_SIZEX,  PRODUCTS.P_SIZEY, PRODUCTS.P_REMMC
HAVING SUM(JOURNAL.J_QTYU)>0.00001
order by PRODUCTS.P_SIZEX desc

else

SELECT     PRODUCTS.P_NAME AS Expr1, MANUFACTURERS.M_NAME, cast( ARTICLES.P_PRICE as varchar(15)), cast(Round (SUM(JOURNAL.J_QTYU),5)  as varchar(20)), cast(PRODUCTS.P_SIZEX as varchar (5)), cast( PRODUCTS.P_SIZEY as varchar(5)), cast( PRODUCTS.P_REMMC as varchar(10)),'',''
FROM         PRODUCTS INNER JOIN
                      MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
                      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID LEFT JOIN
                      JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
WHERE     (PRODUCTS.P_ATC IN
                          (SELECT     PRODUCTS.P_ATC
                            FROM          PRODUCTS INNER JOIN
                                                   MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
                                                   ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID
                            WHERE      (ARTICLES.A_ID = @aid)))

GROUP BY PRODUCTS.P_NAME, MANUFACTURERS.M_NAME, ARTICLES.P_PRICE, PRODUCTS.P_SIZEX,  PRODUCTS.P_SIZEY, PRODUCTS.P_REMMC
order by PRODUCTS.P_SIZEX desc
GO
/****** Object:  StoredProcedure [dbo].[ap_product_getinfo2]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE         PROCEDURE [dbo].[ap_product_getinfo2] 
@aid int,
@nozero bit

as
set nocount on
declare @pid int
select @pid = P_ID from ARTICLES where A_ID=@aid

	declare @course float
	declare @rid int
			
	select @course=R_COURSE from RATE where R_ID=2

select 'Наименование:360', 'Производитель:120', 'Цена:70', 'Кол:50', 'Р:25','','Адрес:5','ГЗ:5','Цена со скидкой:145'

--SELECT     PRODUCTS.P_NAME AS Expr1, MANUFACTURERS.M_NAME,cast( ARTICLES.P_PRICE as varchar(15)), cast(SUM(JOURNAL.J_QTYU) as varchar(20)), PRODUCTS.P_SIZEX,  PRODUCTS.P_SIZEY,PRODUCTS.P_REMMC
--FROM         PRODUCTS INNER JOIN
--                      MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
--                      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID INNER JOIN
--                      JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
--WHERE     (PRODUCTS.P_ATC IN
--                          (SELECT     PRODUCTS.P_ATC
--                            FROM          PRODUCTS INNER JOIN
--                                                   MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
--                                                   ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID
--                            WHERE      (ARTICLES.A_ID = @aid)))
--GROUP BY PRODUCTS.P_NAME, MANUFACTURERS.M_NAME, ARTICLES.P_PRICE, PRODUCTS.P_SIZEX,  PRODUCTS.P_SIZEY, PRODUCTS.P_REMMC
--order by PRODUCTS.P_SIZEX desc

if @nozero>0 

SELECT     
        PRODUCTS.P_NAME AS Expr1, 
        MANUFACTURERS.M_NAME, 
        cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC) IS NULL
                         THEN articles.P_PRICE
                         ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)
                        END
        as varchar(15)),
        cast(Round (SUM(JOURNAL.J_QTYU),2)  as varchar(20)), 
        cast(PRODUCTS.P_SIZEX as varchar (5)), 
        cast( PRODUCTS.P_SIZEY as varchar(5)), 
        cast( PRODUCTS.P_REMMC as varchar(20)),
        cast( PRODUCTS.P_VOLUME as varchar(20)),
        (case when products.p_disc=0

			then cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC) IS NULL
                         THEN articles.P_PRICE-articles.P_PRICE*7/100
                         ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)-(SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)*7/100
                        END AS varchar(15))
			else ''
			end ) + '/' + (case when products.p_disc=0

			then cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC) IS NULL
                         THEN articles.P_PRICE-articles.P_PRICE*5/100
                         ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)-(SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)*5/100
                        END AS varchar(15))
			else ''
			end )
FROM         PRODUCTS INNER JOIN
                      MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
                      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID LEFT JOIN
                      JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
WHERE     (PRODUCTS.P_ATC IN
                          (SELECT     PRODUCTS.P_ATC
                            FROM          PRODUCTS INNER JOIN
                                                   MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
                                                   ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID
                            WHERE      (ARTICLES.A_ID = @aid))
                        and PRODUCTS.P_ATC not like '%$')
GROUP BY PRODUCTS.P_NAME, MANUFACTURERS.M_NAME, ARTICLES.P_PRICE, PRODUCTS.P_SIZEX,  PRODUCTS.P_SIZEY, PRODUCTS.P_REMMC, PRODUCTS.P_NREC, PRODUCTS.P_VOLUME, products.P_DISC
HAVING SUM(JOURNAL.J_QTYU)>0.0001
order by PRODUCTS.P_SIZEX desc

else

SELECT     
        PRODUCTS.P_NAME AS Expr1, 
        MANUFACTURERS.M_NAME, 	
        cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC) IS NULL
                         THEN articles.P_PRICE
                         ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)
                        END
        as varchar(15)),
        cast(Round (SUM(JOURNAL.J_QTYU),5)  as varchar(20)), 
        cast(PRODUCTS.P_SIZEX as varchar (5)), 
        cast( PRODUCTS.P_SIZEY as varchar(5)), 
        cast( PRODUCTS.P_REMMC as varchar(10)),
        '',
        (case when products.p_disc=0

			then cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC) IS NULL
                         THEN articles.P_PRICE-articles.P_PRICE*7/100
                         ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)-(SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)*7/100
                        END AS varchar(15))
			else ''
			end ) + '/' + (case when products.p_disc=0

			then cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC) IS NULL
                         THEN articles.P_PRICE-articles.P_PRICE*5/100
                         ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)-(SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = products.P_NREC)*5/100
                        END AS varchar(15))
			else ''
			end )
FROM         PRODUCTS INNER JOIN
                      MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
                      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID LEFT JOIN
                      JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
WHERE     (PRODUCTS.P_ATC IN
                          (SELECT     PRODUCTS.P_ATC
                            FROM          PRODUCTS INNER JOIN
                                                   MANUFACTURERS ON PRODUCTS.M_ID = MANUFACTURERS.M_ID INNER JOIN
                                                   ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID
                            WHERE      (ARTICLES.A_ID = @aid))
                        and PRODUCTS.P_ATC not like '%$')

GROUP BY PRODUCTS.P_NAME, MANUFACTURERS.M_NAME, ARTICLES.P_PRICE, PRODUCTS.P_SIZEX,  PRODUCTS.P_SIZEY, PRODUCTS.P_REMMC, PRODUCTS.P_NREC, products.P_DISC
order by PRODUCTS.P_SIZEX desc
GO
/****** Object:  StoredProcedure [dbo].[ap_product_getinfo]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE procedure [dbo].[ap_product_getinfo]
@aid int
as
set nocount on
declare @pid int
declare @min int
declare @max int
declare @remmc varchar(25)
declare @tnved varchar(50)
declare @volume varchar(50)
declare @regdate datetime
declare @imm varchar(130)


select @pid = P_ID from ARTICLES where A_ID=@aid
select 
	@volume=p_volume
	,@min=p_min
	,@max=p_max
	,@remmc=p_remmc
	,@tnved=p_tnved 
	,@regdate=P_REG_DATE 
	,@imm=P_MNN
from products where p_id=@pid
select PNAME='Наименование', PVAL=P_NAME, PORDER=0 into #temp123 from PRODUCTS where P_ID=@pid


-- здесь вставляем в #temp123 все, что хотим
insert into #temp123 (PNAME, PVAL, PORDER) values ('МНН',isnull(@imm, '') ,1)
insert into #temp123 (PNAME, PVAL, PORDER) values ('min',@min ,1)
insert into #temp123 (PNAME, PVAL, PORDER) values ('max',@max ,1)
insert into #temp123 (PNAME, PVAL, PORDER) values ('Ящик',@remmc ,1)
insert into #temp123 (PNAME, PVAL, PORDER) values ('Группа', @tnved,1)
insert into #temp123 (PNAME, PVAL, PORDER) values ('Менеджер', @volume,1)
insert into #temp123 (PNAME, PVAL, PORDER) values ('ОкончаниеРег', isnull(convert(nvarchar(20),@regdate,103),''),1)



--insert into #temp123 (PNAME, PVAL, PORDER) values ('Еще свойство', 'Еще значение', 1)
-- выбираем результат
select PNAME, PVAL from #temp123 order by PORDER
GO
/****** Object:  StoredProcedure [dbo].[ap_product_poslike_bonus_20100315]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[ap_product_poslike_bonus_20100315]
@txt nvarchar(255),
@plid int
as 
set nocount on
declare @pat nvarchar(255)
select @pat = N'%' + upper(@txt) + N'%' -- вхождение
select top 301 
		a.A_ID, 
	(CASE when ISNULL(P.p_sklad,0)<1 THEN p.p_name ELSE p.P_NAME+' ['+CAST(ISNULL(P.P_SKLAD,0) AS VARCHAR)+']' END) AS p_name, 	
	a.P_PRICE, 
	Q=sum(J_QTYU), 
	M_NAME, QR=sum(J_RES), 
	p.p_sizex, 
	cast (p.p_volume as varchar) + '(' + cast(p.p_min as varchar) + ';' + cast(p.p_max as varchar)+')(' + cast(p.p_tnved as varchar)+ ')'+cast(p.p_disc as varchar), 
	p.p_remmc /* это три новых поля */
  from JOURNAL j right join ARTICLES a on j.A_ID=a.A_ID
      inner join PRODUCTS p on p.P_ID=a.P_ID
      inner join MANUFACTURERS m on p.M_ID=m.M_ID
where upper(P_NAME) like @pat and P_BONUS = 1
group by a.A_ID, p.P_NAME, a.P_PRICE, m.M_NAME, p.p_sizex, p.p_volume, p.p_min, p.p_max, p.p_tnved, p.p_remmc, p.p_disc,p.p_sklad
order by p.P_NAME, a.p_price desc
GO
/****** Object:  StoredProcedure [dbo].[ap_product_poslike_bonus]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Кухтин А.А. (Правил: Каракошенко И.А.)
-- ALTER date:	2010-02-03 14:45:18.610
-- Description:	Информация о товарах по фрагменту наименования
--
-- EXEC [ap_product_poslike_bonus_PL] N'ВАЛИДОЛ%ТАБ',0
-- =============================================
CREATE PROCEDURE [dbo].[ap_product_poslike_bonus]
	@txt	nvarchar(255),	-- Фрагмент наименования товаров
	@plid	int				-- ???
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @pat NVARCHAR(255)
	SELECT @pat = N'%' + UPPER(@txt) + N'%' -- вхождение

	SELECT 
		  TR.A_ID
		, TR.P_NAME
-- Получить цену на товар по прайс-листу или по артикулу
		, P_PRICE = 
			CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC) IS NULL
			 THEN a.P_PRICE
			 ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)
			END
		, TR.Q
		, TR.M_NAME
		, TR.QR
		, TR.P_SIZEX
		, TR.P_INFO
		, TR.P_REMMC
	FROM
	(
		select top 301 a.A_ID, 
			--p.P_NAME, 
			(CASE when ISNULL(P.p_sklad,0)<1 THEN p.p_name ELSE p.P_NAME+' ['+CAST(ISNULL(P.P_SKLAD,0) AS VARCHAR)+']' END) AS p_name, 	
			a.P_PRICE, Q=sum(J_QTYU), M_NAME, QR=sum(J_RES), 
			p.p_sizex, 
			p_info = cast (p.p_volume as varchar) + '(' + cast(p.p_min as varchar) + ';' + cast(p.p_max as varchar)+')(' + cast(p.p_tnved as varchar)+ ')'+cast(p.p_disc as varchar), 
			p.p_remmc /* это три новых поля */

		from JOURNAL j right join ARTICLES a on j.A_ID=a.A_ID
		      inner join PRODUCTS p on p.P_ID=a.P_ID
		      inner join MANUFACTURERS m on p.M_ID=m.M_ID
		where upper(P_NAME) like @pat AND P_BONUS = 1
		group by a.A_ID, p.P_NAME, a.P_PRICE, m.M_NAME, p.p_sizex, p.p_volume, p.p_min, p.p_max, p.p_tnved, p.p_remmc, p.p_disc,p.p_sklad
	) TR
	INNER JOIN ARTICLES a ON a.A_ID = TR.A_ID
	INNER JOIN PRODUCTS p ON p.P_ID = a.P_ID
	ORDER BY TR.P_NAME, TR.p_price DESC

END
GO
/****** Object:  StoredProcedure [dbo].[ap_product_poslike_20100315]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- EXEC [dbo].[ap_product_poslike] N'ВАЛИДОЛ',0
------------------------------------------------
CREATE procedure [dbo].[ap_product_poslike_20100315]
@txt nvarchar(255),
@plid int
as 
set nocount on
declare @pat nvarchar(255)
select @pat = N'%' + upper(@txt) + N'%' -- вхождение
select top 301 a.A_ID, 
	(CASE when ISNULL(P.p_sklad,0)<1 THEN p.p_name ELSE p.P_NAME+' ['+CAST(ISNULL(P.P_SKLAD,0) AS VARCHAR)+']' END) AS p_name, 
	--isnull(P.p_sklad,0)
	a.P_PRICE, Q=sum(J_QTYU), M_NAME, QR=sum(J_RES), 
	p.p_sizex, 
	cast (p.p_volume as varchar) + '(' + cast(p.p_min as varchar) + ';' + cast(p.p_max as varchar)+')(' + cast(p.p_tnved as varchar)+ ')'+cast(p.p_disc as varchar), 
	p.p_remmc /* это три новых поля */
  from JOURNAL j right join ARTICLES a on j.A_ID=a.A_ID
      inner join PRODUCTS p on p.P_ID=a.P_ID
      inner join MANUFACTURERS m on p.M_ID=m.M_ID
where upper(P_NAME) like @pat
group by a.A_ID, p.P_NAME, a.P_PRICE, m.M_NAME, p.p_sizex, p.p_volume, p.p_min, p.p_max, p.p_tnved, p.p_remmc, p.p_disc,p.p_sklad
order by p.P_NAME, a.p_price desc
GO
/****** Object:  StoredProcedure [dbo].[ap_product_poslike]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Кухтин А.А. (Правил: Каракошенко И.А.)
-- ALTER date:	2010-02-03 14:31:35.653
-- Description:	Информация о товарах по фрагменту наименования

-- 
-- EXEC [ap_product_poslike_PL] N'ВАЛИДОЛ%ТАБ',0
-- =============================================
CREATE PROCEDURE [dbo].[ap_product_poslike]
        @txt	nvarchar(255),	-- Фрагмент наименования товаров
        @plid	int				-- ???
AS
BEGIN
        SET NOCOUNT ON;

        DECLARE @pat NVARCHAR(255)
        SELECT @pat = N'%' + UPPER(@txt) + N'%' -- вхождение
        declare @rcourse float
        declare @S_user nvarchar(50)
        declare @t_id int
        declare @rid int
        
        set @S_user= SYSTEM_USER
       
       
  set @t_id = CASE WHEN (SELECT t_id FROM rate_user WHERE S_U = @S_user) IS NULL
                         THEN 2
                         ELSE (SELECT t_id FROM rate_user WHERE S_U = @S_user)
                        END
        select @rid = R_ID from Rate_Term where T_id=@t_id
		select @rcourse = R_COURSE from RATE where R_ID = @rid 

	declare @course float
		select @course=R_COURSE from RATE where R_ID=2
	
        SELECT 
                  TR.A_ID
                , TR.P_NAME		
-- Получить цену на товар по прайс-листу или по артикулу
                , P_PRICE = 
                        CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC) IS NULL
                         THEN a.P_PRICE/@rcourse*1.0
                         ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)/@rcourse*1.0
                        END
                , TR.Q
                , TR.M_NAME + ' ' + ISNULL (MD.MD_NAME,'') AS m_name                
                , TR.QR
                , TR.P_SIZEX
                , TR.P_INFO + '/' + (case when p.p_disc=0

			then cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC) IS NULL
                         THEN a.P_PRICE-a.P_PRICE*7/100
                         ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)-(SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)*7/100
                        END AS varchar)
			else ''
			end ) + '/' + (case when p.p_disc=0

			then cast(CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC) IS NULL
                         THEN a.P_PRICE-a.P_PRICE*5/100
                         ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)-(SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)*5/100
                        END AS varchar)
			else ''
			end )
                , TR.P_REMMC
        FROM
        (
                select top 501 a.A_ID, 
                        --p.P_NAME, 
                        (CASE when ISNULL(P.p_sklad,0)<1 THEN p.p_name ELSE p.P_NAME+' ['+CAST(ISNULL(P.P_SKLAD,0) AS VARCHAR)+']' END) AS p_name, 
                        a.P_PRICE, Q=sum(J_QTYU), M_NAME, QR=sum(J_RES), 
                        p.p_sizex, 
                        p_info = cast (p.p_volume as varchar) + '(' + cast(p.p_min as varchar) + ';' + cast(p.p_max as varchar)+')(' + cast(p.p_tnved as varchar)+ ')'+cast(p.p_disc as varchar), 
                        p.p_remmc /* это три новых поля */

                from JOURNAL j right join ARTICLES a on j.A_ID=a.A_ID
                      inner join PRODUCTS p on p.P_ID=a.P_ID
                      inner join MANUFACTURERS m on p.M_ID=m.M_ID
                      
                where upper(P_NAME) like @pat
                group by a.A_ID, p.P_NAME, a.P_PRICE, m.M_NAME, p.p_sizex, p.p_volume, p.p_min, p.p_max, p.p_tnved, p.p_remmc, p.p_disc,p.p_sklad
        ) TR
        INNER JOIN ARTICLES a ON a.A_ID = TR.A_ID
        INNER JOIN PRODUCTS p ON p.P_ID = a.P_ID
        left join MANUFACTURERS_DOP md on P.MD_ID=md.MD_ID
        ORDER BY TR.P_NAME, TR.p_price DESC

END
GO
/****** Object:  StoredProcedure [dbo].[clear_tables]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[clear_tables] AS
delete from journal
delete from articles
delete from products
delete from manufacturers
GO
/****** Object:  StoredProcedure [dbo].[ap_getopinfo]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_getopinfo]
@no int,
@name nvarchar(256)
as
set nocount on
select UT_NO, UT_PWD, U_NAME 
  from USER_TERM inner join USERS on USER_TERM.U_ID=USERS.U_ID
where T_ID=@no and U_NAME=@name
GO
/****** Object:  StoredProcedure [dbo].[ap_get_sale]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE procedure [dbo].[ap_get_sale]
@year int ,
@month int,
@day int
as
set nocount on


select a.h_type,a.h_date,a.h_no,b.i_qtyu,a.h_sum,a.t_id,a.u_id,a.h_sum,a.h_discount,a.h_items,a.h_type,b.i_qty,b.i_price,c.p_name,d.a_id from 
 checks a left join check_items b on a.h_id=b.h_id left join articles d on b.a_id=d.a_id left join products c on d.p_id=c.p_id
 where 
a.h_type<>300 and 
a.h_type<>301 and 
a.h_type<>302 and 
a.h_type<>303 and 
a.h_type<>304 and 
a.h_type<>305 and 
a.h_type<>101 and 
a.h_type<>201 and 
a.h_type<>100 and 
a.h_type<>200 and
 year(a.h_date)=@year and
 month(a.h_date)=@month and
 day(a.h_date)=@day 
order by a.h_no,a.h_sum
GO
/****** Object:  StoredProcedure [dbo].[ap_raznitsa]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
create procedure [dbo].[ap_raznitsa]
as 
set nocount on

SELECT   ARTICLES.A_ID,listgood.KOL as gal_count,SUM(JOURNAL.J_QTY) / 1000 as sql_count, -SUM(JOURNAL.J_QTY)  + listgood.KOL*1000 as raznitsa_o,-SUM(JOURNAL.J_QTY) / 1000 + listgood.KOL AS raznitsa_u
FROM  JOURNAL INNER JOIN
               ARTICLES ON JOURNAL.A_ID = ARTICLES.A_ID INNER JOIN
               listgood ON ARTICLES.A_ID = listgood.ARTICUL

GROUP BY listgood.ARTICUL, listgood.KOL, ARTICLES.A_ID
GO
/****** Object:  StoredProcedure [dbo].[ap_sravnat]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE procedure [dbo].[ap_sravnat]
as 
set nocount on

declare @artic int
declare @expr2 float
declare @expr3 float
DECLARE Employee_Cursor CURSOR FOR

--SELECT LastName, FirstName FROM Northwind.dbo.Employees
SELECT      ARTICLES.A_ID, - SUM(JOURNAL.J_QTY) + listgood.KOL * 1000 AS Expr2, (- (SUM(JOURNAL.J_QTY) 
                      / 1000) + listgood.KOL) / PRODUCTS.P_PACK AS Expr3
FROM         JOURNAL INNER JOIN
                      ARTICLES ON JOURNAL.A_ID = ARTICLES.A_ID INNER JOIN
                      listgood ON ARTICLES.A_ID = listgood.ARTICUL INNER JOIN
                      PRODUCTS ON ARTICLES.P_ID = PRODUCTS.P_ID
WHERE     (DAY(JOURNAL.J_DATE) <> 18) 
GROUP BY listgood.ARTICUL, listgood.KOL, ARTICLES.A_ID, PRODUCTS.P_PACK

/*SELECT   ARTICLES.A_ID, - SUM(JOURNAL.J_QTY)  + listgood.KOL*1000 AS Expr2,-SUM(JOURNAL.J_QTY) / 1000 + listgood.KOL AS Expr3
FROM  JOURNAL INNER JOIN
               ARTICLES ON JOURNAL.A_ID = ARTICLES.A_ID INNER JOIN
               listgood ON ARTICLES.A_ID = listgood.ARTICUL
WHERE     (day(JOURNAL.J_DATE) <> 18)
GROUP BY listgood.ARTICUL, listgood.KOL, ARTICLES.A_ID
*/

OPEN Employee_Cursor
FETCH NEXT FROM Employee_Cursor 
into @artic,@expr2,@expr3
WHILE @@FETCH_STATUS = 0
BEGIN
if @expr2<>0 
   insert into JOURNAL (A_ID, J_QTY, J_QTYU) values (@artic,@expr2,@expr3)
   FETCH NEXT FROM Employee_Cursor
   into @artic,@expr2,@expr3
END
CLOSE Employee_Cursor
DEALLOCATE Employee_Cursor
GO
/****** Object:  StoredProcedure [dbo].[ap_session_show]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-02-03 16:01:35.810
-- Description:	Информация о дата+время последней загрузки прайслистов
--
--				EXEC [ap_session_show] 5
-- =============================================
CREATE PROCEDURE [dbo].[ap_session_show]
	@tid int
AS
BEGIN
	set nocount on

-- LOG START PROCEDURE
	DECLARE @RC int;	
	DECLARE @DT nvarchar(50);
	
	EXEC @RC = [LOG_SP_START] N'[ap_session_show]';
	
--Последняя дата прайс-листа
	SET @DT = CONVERT(NVARCHAR,

		(select MAX (DT_PR) from 
			(select max(DTS_SETPRICE) as DT_PR 
			from PRICES_ACTIVE
			group by DTS_SETPRICE ) 
		DT_PRICE)
	,120) 
	
	SELECT 
		N'Прайс-лист ' + '(дата прайса: '+@DT+ ') загружен: ' + CONVERT(NVARCHAR,[SP_DATE],103) +		
		N' в ' + CONVERT(NVARCHAR,[SP_DATE],108) +
		N'. Терминала №' + CAST(@tid AS NVARCHAR)
    FROM [new].[dbo].[SYSPARAMS] 
	WHERE [SP_NAME] = N'PRICES_ACTIVE_LOAD'

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  Table [dbo].[CHECK_ITEMS_DELETED]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHECK_ITEMS_DELETED](
	[H_ID] [int] NOT NULL,
	[A_ID] [bigint] NOT NULL,
	[I_QTY] [int] NOT NULL,
	[I_QTYU] [float] NOT NULL,
	[I_PRICE] [int] NOT NULL,
	[P_TAX] [char](1) NULL,
	[P_PACK] [int] NULL,
	[I_DISCOUNT] [int] NOT NULL,
	[I_BONUS] [int] NOT NULL,
	[I_DEL_DATETIME] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHECK_ITEMS]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHECK_ITEMS](
	[H_ID] [int] NOT NULL,
	[A_ID] [bigint] NOT NULL,
	[I_QTY] [int] NOT NULL,
	[I_QTYU] [float] NOT NULL,
	[I_PRICE] [int] NOT NULL,
	[P_TAX] [char](1) NULL,
	[P_PACK] [int] NULL,
	[I_DISCOUNT] [int] NOT NULL,
	[I_BONUS] [int] NOT NULL,
	[I_NOTE] [int] NULL,
	[R_COURSE] [float] NULL,
	[R_ID] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CHECK_ITEMS: H_ID] ON [dbo].[CHECK_ITEMS] 
(
	[H_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ap_session_open]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-02-03 17:26:00.540
-- Description:	Начало смены на POS-терминалах (Загрузка прайс-листов в таблицу цен для POS-терминалов)
--				EXEC [dbo].[ap_session_open] 5
-- =============================================
CREATE procedure [dbo].[ap_session_open]
	@tid int	-- номер терминала
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @T_ID		INT;
	DECLARE @Z_DATE		DATETIME;
	DECLARE @LAST_CHECK	DATETIME;
	DECLARE @DDIFF		INT;
	DECLARE @REPORT		NVARCHAR(500);
	DECLARE @DTSKEY		DATETIME;
	DECLARE @RES		NVARCHAR(1000);
	
-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[ap_session_open]';

	SET @REPORT = N'';

-- 	Курсор для поиска продаж на POS-терминалах после окончания смены
	DECLARE CR_CTRL CURSOR FAST_FORWARD FOR
	SELECT 
	  [T_ID]		= [SP_TID]
-- Дата+Время Z-отчета  
	, [Z_DATE]		= [SP_DATE]
-- Дата+Время последнего чека (код операции - Продажа) 
	, [LAST_CHECK]	= (SELECT MAX([H_DATE]) FROM [new].[dbo].[CHECKS] WHERE [T_ID] = [SP_TID] AND [H_TYPE]=1)
	, [DDIFF]		= DATEDIFF(SS,[SP_DATE],(SELECT MAX([H_DATE]) FROM [new].[dbo].[CHECKS] WHERE [T_ID] = [SP_TID] AND [H_TYPE]=1))
	FROM [new].[dbo].[SYSPARAMS] 
	WHERE SP_NAME LIKE N'Z_REPORT_TIME%'
	ORDER BY [SP_TID];
	
	OPEN CR_CTRL;
	FETCH NEXT FROM CR_CTRL INTO @T_ID,@Z_DATE,@LAST_CHECK,@DDIFF;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF @DDIFF > 0	-- Пишем ошибку. Есть продажи по @T_ID после формирования Z-отчета
			SET @REPORT = @REPORT + CAST(@T_ID AS NVARCHAR) + N',';

		FETCH NEXT FROM CR_CTRL INTO @T_ID,@Z_DATE,@LAST_CHECK,@DDIFF;
	END

	CLOSE CR_CTRL;
	DEALLOCATE CR_CTRL;
	
	IF LEN(@REPORT)>0		-- Ошибки ЕСТЬ!!!
-- Строка для отчета
	   SET @RES = N'ОШИБКА НАЧАЛА СМЕНЫ!!! На терминалах: '+@REPORT +N' есть продажи после фрормирования Z-отчета!!!';
	ELSE					-- Ошибок НЕТ!!!
	BEGIN
-- Загрузка прайс-листов в таблицу цен для POS-терминалов
		EXEC [PRICES].[PRICES_ACTIVE_LOAD];
-- Отметка в SYSPARAMS начала смены. Ключ: SESSION_OPEN
		SET @DTSKEY = GETDATE();	-- Дата+Время начала смены

		IF EXISTS (SELECT SP_NAME FROM [new].[dbo].[SYSPARAMS] WHERE [SP_NAME]='SESSION_OPEN')
			UPDATE [new].[dbo].[SYSPARAMS]
			SET		[SP_TID]	= @tid,
					[SP_DATE]	= @DTSKEY
			WHERE [SP_NAME]='SESSION_OPEN'
		ELSE
			INSERT INTO [new].[dbo].[SYSPARAMS] ([SP_NAME],[SP_TID],[SP_DATE])
			VALUES('SESSION_OPEN',@tid,@DTSKEY);
-- Строка для отчета
		SET @RES = N'Смена успешно начата '+CONVERT(NVARCHAR,@DTSKEY,103) +N' в ' + CONVERT(NVARCHAR,@DTSKEY,108) + N' на терминале №'+CAST(@tid AS NVARCHAR);
	END
-- Отчет
	SELECT @RES
-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [dbo].[ap_z_report]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[ap_z_report]
@no int,      -- номер чека
@dt datetime, -- дата/время
@tid int,     -- ID терминала
@uid int,     -- user
@zno int,     -- номер Z-отчета
@suma int,    -- сумма А
@sumb int     -- сумма Б
as
set nocount on
-- сначала запишем чек типа 301 (Z-отчет)
declare @hid int
exec @hid = dbo.ap_check_insert @no, @dt, @tid, @uid, 0, 0, 0, null, 301, 0

--курс

declare @course float
declare @rid int
select @rid= R_ID from RATE_TERM where T_ID=@tid
select @course=R_COURSE from RATE where R_ID=@rid

-- теперь получим последнюю запись
declare @z int
select @z=max(Z_ID) from Z_REPORTS where T_ID=@tid
if @z is null
begin -- z-отчета еще нет (переходный процесс)
  insert into Z_REPORTS (Z_NO, Z_SUMA, Z_SUMB, Z_DATE, T_ID, H_ID, R_COURSE, R_ID) 
      values (@zno, @suma, @sumb, @dt, @tid, @hid, @course, @rid)
end
else
begin -- z-отчет уже был
  update Z_REPORTS set Z_NO=@zno, Z_SUMA=@suma, Z_SUMB=@sumb, Z_DATE=@dt, H_ID=@hid where Z_ID=@z
end
-- теперь сформируем следующую запись в таблице Z-отчетов
-- все следующие чеки будут связаны с этой записью
insert into Z_REPORTS (T_ID, R_COURSE, R_ID) values (@tid, @course, @rid)
GO
/****** Object:  Table [dbo].[POS_ARTICLES]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_ARTICLES](
	[PA_ID] [int] IDENTITY(1,1) NOT NULL,
	[A_ID] [bigint] NOT NULL,
	[T_ID] [int] NOT NULL,
	[PA_FPART] [int] NOT NULL,
 CONSTRAINT [PK_POS_ARTICLES] PRIMARY KEY NONCLUSTERED 
(
	[PA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXCHECK_ITEMS]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EXCHECK_ITEMS](
	[H_ID] [int] NOT NULL,
	[A_ID] [bigint] NOT NULL,
	[P_ID] [int] NOT NULL,
	[I_QTY] [int] NOT NULL,
	[I_QTYU] [float] NOT NULL,
	[I_PRICE] [int] NOT NULL,
	[P_TAX] [char](1) NULL,
	[P_PACK] [int] NULL,
	[I_DISCOUNT] [int] NOT NULL,
	[I_BONUS] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Инф.документ (EXCHECKS.H_ID)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EXCHECK_ITEMS', @level2type=N'COLUMN',@level2name=N'H_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Артикул (ARTICLES.A_ID)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EXCHECK_ITEMS', @level2type=N'COLUMN',@level2name=N'A_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Товар (PRODUCTS.P_ID)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EXCHECK_ITEMS', @level2type=N'COLUMN',@level2name=N'P_ID'
GO
/****** Object:  Table [dbo].[INVENT_ROWS]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENT_ROWS](
	[IR_ID] [int] IDENTITY(1,1) NOT NULL,
	[INV_ID] [int] NOT NULL,
	[A_ID] [bigint] NOT NULL,
	[IR_QTYU] [float] NOT NULL,
	[IR_QTYF] [float] NOT NULL,
	[IR_TIMESTAMP] [datetime] NOT NULL,
 CONSTRAINT [PK_INVENT_ROWS] PRIMARY KEY NONCLUSTERED 
(
	[IR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_INVENT_ROWS_A_ID] ON [dbo].[INVENT_ROWS] 
(
	[A_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_INVENT_ROWS_INV_ID] ON [dbo].[INVENT_ROWS] 
(
	[INV_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOURNAL]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOURNAL](
	[J_ID] [int] IDENTITY(1,1) NOT NULL,
	[J_DATE] [datetime] NOT NULL,
	[A_ID] [bigint] NOT NULL,
	[J_QTY] [int] NOT NULL,
	[J_QTYU] [float] NOT NULL,
	[J_RES] [float] NOT NULL,
	[D_ID] [int] NULL,
	[J_TYPE] [int] NULL,
 CONSTRAINT [PK_JOURNAL] PRIMARY KEY NONCLUSTERED 
(
	[J_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JOURNAL: J_DATE] ON [dbo].[JOURNAL] 
(
	[J_DATE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JOURNAL_A_ID] ON [dbo].[JOURNAL] 
(
	[A_ID] ASC
)
INCLUDE ( [J_QTYU],
[J_RES]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_DISCOUNT_VOZV_P]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_DISCOUNT_VOZV_P]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата (Возврат)],103) AS DATETIME)		
		, [Скидка] =SUM(TR.[Количество]*(TR.[Цена (Продажа)]-TR.[Цена (Возврат)]))
		, [T_ID] = TR.[Терминал]
		, [Тип] = TR.[Тип]
		, [СкидкаЧек] =SUM(TR.[Количество]*(TR.[Цена (ПродажаЧек)]-TR.[Цена (ВозвратЧек)]))
	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Дата (Возврат)]			= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= -CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена (Возврат)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0 * CAST(ISNULL(CI.R_COURSE,1) AS MONEY)
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0 * CAST(ISNULL(CI.R_COURSE,1) AS MONEY) * CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (Продажа)]			= 
			(	SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) * CAST(ISNULL(CI2.R_COURSE,1) AS MONEY) FROM CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			,[Цена (ВозвратЧек)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (ПродажаЧек)]			= 
			(SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) FROM APunkt_temp.dbo.CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			
	
		FROM APunkt_temp.DBO.CHECKS C WITH (NOLOCK)
			INNER JOIN APunkt_temp.DBO.CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]
			INNER JOIN new.dbo.[ARTICLES] A WITH (NOLOCK) ON A.[A_ID] = CI.[A_ID] AND A.[P_ID] NOT IN (44379,43472,52464)
			LEFT OUTER JOIN APunkt_temp.dbo.[CHECKS] C2 WITH (NOLOCK) ON C2.[H_ID] = C.[H_RET]
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  DATEADD(dd,1,@date2)
		
	) TR
	GROUP BY 
		TR.[Дата (Возврат)]
		,TR.[Терминал]
		,TR.[Тип];

	SELECT
		[Дата]
		,T_ID
		,case
			when [Тип]=-1 then N'Наличные'
			when [Тип]=-2 then N'К.Карта'			
			else N'0' 
		end as WB_TYPE
		,SUM(ISNULL([СкидкаЧек],0)) as TOTAL_DISCOUNT_POS
		,case
			when T_ID = 2 or T_ID=6 then 0
			else SUM(ISNULL([СкидкаЧек],0))
			end as TOTAL_DISCOUNT_POS_R
		,case
			when T_ID = 2 or T_ID=6 then SUM(ISNULL([СкидкаЧек],0))
			else 0
			end as TOTAL_DISCOUNT_POS_UAH 
	FROM #TABLE1
		WHERE Round([СкидкаЧек],2)>0 
	GROUP BY
		[Дата]
		,T_ID
		,[Тип]
	ORDER BY
		[Дата]
		,T_ID
		,[Тип]
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_DISCOUNT_VOZV_a16]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WORK_BUH_INFO_DISCOUNT_VOZV_a16]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата (Возврат)],103) AS DATETIME)		
		, [Скидка] =SUM(TR.[Количество]*(TR.[Цена (Продажа)]-TR.[Цена (Возврат)]))
		, [T_ID] = TR.[Терминал]
		, [Тип] = TR.[Тип]
		, [СкидкаЧек] =SUM(TR.[Количество]*(TR.[Цена (ПродажаЧек)]-TR.[Цена (ВозвратЧек)]))
	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Дата (Возврат)]			= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= -CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена (Возврат)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0 * CAST(ISNULL(CI.R_COURSE,1) AS MONEY)
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0 * CAST(ISNULL(CI.R_COURSE,1) AS MONEY) * CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (Продажа)]			= 
			(	SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) * CAST(ISNULL(CI2.R_COURSE,1) AS MONEY) FROM CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			,[Цена (ВозвратЧек)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (ПродажаЧек)]			= 
			(SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) FROM A16.dbo.CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			
	
		FROM A16.DBO.CHECKS C WITH (NOLOCK)
			INNER JOIN A16.DBO.CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]
			INNER JOIN new.dbo.[ARTICLES] A WITH (NOLOCK) ON A.[A_ID] = CI.[A_ID] AND A.[P_ID] NOT IN (44379,43472,52464)
			LEFT OUTER JOIN A16.dbo.[CHECKS] C2 WITH (NOLOCK) ON C2.[H_ID] = C.[H_RET]
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  DATEADD(dd,1,@date2)
		
	) TR
	GROUP BY 
		TR.[Дата (Возврат)]
		,TR.[Терминал]
		,TR.[Тип];

	SELECT
		[Дата]
		,T_ID
		,case
			when [Тип]=-1 then N'Наличные'
			when [Тип]=-2 then N'К.Карта'			
			else N'0' 
		end as WB_TYPE
		,SUM(ISNULL([СкидкаЧек],0)) as TOTAL_DISCOUNT_POS
		,case
			when T_ID = 2 or T_ID=6 then 0
			else SUM(ISNULL([СкидкаЧек],0))
			end as TOTAL_DISCOUNT_POS_R
		,case
			when T_ID = 2 or T_ID=6 then SUM(ISNULL([СкидкаЧек],0))
			else 0
			end as TOTAL_DISCOUNT_POS_UAH 
	FROM #TABLE1
		WHERE Round([СкидкаЧек],2)>0 
	GROUP BY
		[Дата]
		,T_ID
		,[Тип]
	ORDER BY
		[Дата]
		,T_ID
		,[Тип]
END
GO
/****** Object:  StoredProcedure [dbo].[WORK_BUH_INFO_DISCOUNT_a16]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[WORK_BUH_INFO_DISCOUNT_a16]
	@date1	DATETIME,
	@date2	DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		[Дата]		= CAST(CONVERT(NVARCHAR,TR.[Дата (Возврат)],103) AS DATETIME)		
		, [Скидка] =SUM(TR.[Количество]*(TR.[Цена (Продажа)]-TR.[Цена (Возврат)]))
		, [T_ID] = TR.[Терминал]
		, [Тип] = TR.[Тип]

	INTO #TABLE1
	FROM
	(
		SELECT
			C.H_ID
			,[Дата (Возврат)]			= CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
			,[Терминал]					= C.[T_ID]
			,[Тип]						= C.[H_TYPE]
			,[Артикул]					= CI.[A_ID]
			,[Количество]				= CAST(CI.[I_QTY]/1000.0 AS MONEY)
			,[Цена (Возврат)]			= CAST(	
			(		ROUND(CAST(CI.I_PRICE AS MONEY)/100.0,2) * CAST(CI.I_QTY AS MONEY)/1000.0
				-	ROUND(CAST(CI.I_PRICE AS MONEY)/100.0	* CAST(CI.I_QTY AS MONEY)/1000.0 * (CAST(CI.I_DISCOUNT AS MONEY)/10000.0),2)
			)/CAST(CI.I_QTY/1000.0 AS MONEY) AS MONEY)
			,[Цена (Продажа)]			= 
			(	SELECT CAST(CI2.I_PRICE/100.0 AS MONEY) FROM CHECK_ITEMS CI2 WHERE CI2.[H_ID] = C2.[H_ID] AND CI2.[A_ID] = CI.[A_ID])
			
		FROM A16.dbo.CHECKS C WITH (NOLOCK)
			INNER JOIN A16.dbo.CHECK_ITEMS	CI WITH (NOLOCK) ON CI.[H_ID] = C.[H_ID]
			INNER JOIN new.dbo.[ARTICLES] A WITH (NOLOCK) ON A.[A_ID] = CI.[A_ID] AND A.[P_ID] NOT IN (44379,43472,52464)
			LEFT OUTER JOIN A16.dbo.[CHECKS] C2 WITH (NOLOCK) ON C2.[H_ID] = C.[H_RET]
		WHERE
			C.[H_TYPE] IN (-1,-2)			AND		-- Возвраты
			C.[H_DATE] >= @date1			AND 
			C.[H_DATE] <  @date2		
		
	) TR
	GROUP BY 
		TR.[Дата (Возврат)]
		,TR.[Терминал]
		,TR.[Тип];

	INSERT INTO #TABLE1
	(
	[Дата]	
	,[Скидка]
	,[T_ID]
	,[Тип]
	)
	
	(SELECT
		CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,[Скидка]	= ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)		
		,C.[T_ID]		
		,C.[H_TYPE]
	FROM A16.dbo.CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,2,3)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DSUM]>0					AND
		C.RCP_ID IS NULL				AND
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	)

	INSERT INTO #TABLE1
	(
	[Дата]	
	,[Скидка]
	,[T_ID]
	,[Тип]
	)
	
	(SELECT
		CAST(CONVERT(NVARCHAR,C.[H_DATE],103) AS DATETIME)
		,[Скидка]	= -ISNULL(SUM(	ROUND(CAST(C.H_DSUM AS MONEY)/100.0,2)),0)		
		,C.[T_ID]		
		,4
	FROM A16.dbo.CHECKS C WITH (NOLOCK)
	WHERE
		C.[H_TYPE] IN (1,2,3)			AND	-- Возвраты (-1,-2) Продажи (1,2,3)
		C.[H_DSUM]>0					AND
		C.RCP_ID IS NOT NULL				AND
		C.[H_DATE] >= @date1			AND -- Дата начало
		C.[H_DATE] < DATEADD(dd,1,@date2)	-- Дата окончание
	GROUP BY 
		CONVERT(NVARCHAR,C.[H_DATE],103),
		C.[T_ID],
		C.[H_TYPE]
	)
	
	SELECT
		[Дата]
		,T_ID
		,case
			when [Тип]=1 then N'Продажи Наличные'
			when [Тип]=2 then N'Продажи К.Карта'
			when [Тип]=3 then N'Продажи Бонусы'
			when [Тип]=-1 then N'Возвраты Наличные'
			when [Тип]=-2 then N'Возвраты К.Карта'
			when [Тип]=4 then N'Продажи Льготные'
			else N'0' 
		end as WB_TYPE
		,SUM(ISNULL([Скидка],0)) as TOTAL_DISCOUNT_POS
	FROM #TABLE1
		WHERE [Скидка]<>0
	GROUP BY
		[Дата]
		,T_ID
		,[Тип]
	ORDER BY
		[Дата]
		,T_ID
		,[Тип]
END
GO
/****** Object:  StoredProcedure [dbo].[UP_GET_DEFECTURATZ1]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*     
	ПРОЦЕДУРА ВЫДАЕТ ДЕФЕКТУРУ ТОРОГОВОГО ЗАЛА
*/

CREATE   PROCEDURE [dbo].[UP_GET_DEFECTURATZ1]
AS SET NOCOUNT ON

DECLARE @DATE DATETIME
DECLARE @SKL BIGINT     --NREC СКЛАД
DECLARE @TZ BIGINT     --NREC ТОРГОВОГО ЗАЛА
SET @SKL = 4611693923140645959
SET @TZ = 4611919881864392974
SET @DATE = CAST(CONVERT(NVARCHAR(8),GETDATE(),112) AS DATETIME)

SELECT A.P_NREC, -SUM(I_QTYU) AS QTYU INTO #T1 FROM CHECKS C 
INNER JOIN CHECK_ITEMS CC ON C.H_ID = CC.H_ID
INNER JOIN ARTICLES A ON A.A_ID = CC.A_ID
WHERE H_TYPE IN (1,2) AND H_DATE > @DATE 
GROUP BY A.P_NREC
UNION ALL
SELECT NREC, SUM(KOL) FROM SALDOMC
WHERE PODR = @TZ
GROUP BY NREC
UNION ALL
SELECT P_NREC, SUM(J_QTYU) FROM JOURNAL J
JOIN ARTICLES A ON A.A_ID = J.A_ID
WHERE  J_DATE > @DATE AND J_TYPE = 1
GROUP BY P_NREC

--УДАЛИМ ИЗ ОБРАБОТКИ ТОВАРЫ УОТОРЫЕ ДОЛЖНЫ ХРАНИТЬСЯ В ТОРГОВОМ ЗАЛЕ
DELETE FROM #T1
WHERE P_NREC IN (SELECT P_NREC FROM PRODUCTS WHERE ISNULL(P_KOEF,1) = 1)

--ОБЩАЯ ДЕФЕКТУРА
SELECT P.P_NREC, P_NAME, M_NAME, P_MIN, P_MAX, SUM(ISNULL(QTYU,0)) AS REM, 
ROUND(P_MAX*ISNULL(P_KOEF,1) - SUM(ISNULL(QTYU,0)),0) AS ZAKAZ, P_OKDP INTO #T2
FROM PRODUCTS P 
LEFT JOIN #T12 ON #T12.P_NREC = P.P_NREC
LEFT JOIN MANUFACTURERS M ON M.M_ID = P.M_ID
GROUP BY P.P_NREC, P_NAME, M_NAME, P_MIN, P_MAX, P_KOEF, P_OKDP
HAVING SUM(ISNULL(QTYU,0)) < P_MIN*ISNULL(P_KOEF,1)

--УДАЛИМ ИЗ ОБРАБОТКИ ТОВАРЫ У КОТОРЫХ СУММАРНЫЙ ОСТАТОК ПО ГРУППЕ БОЛЬШЕ СУММАРНОГО МИНИМУМА
DELETE FROM #T2 WHERE P_OKDP IN 
(SELECT P.P_OKDP FROM #T2
JOIN PRODUCTS P ON P.P_NREC = #T2.P_NREC
JOIN (SELECT PR.P_OKDP, -SUM(I_QTYU) AS QTYU FROM CHECKS C 
INNER JOIN CHECK_ITEMS CC ON C.H_ID = CC.H_ID
INNER JOIN ARTICLES A ON A.A_ID = CC.A_ID 
INNER JOIN PRODUCTS PR ON PR.P_NREC = A.P_NREC
WHERE H_TYPE IN (1,2) AND H_DATE > @DATE 
GROUP BY PR.P_OKDP
UNION ALL
SELECT PR.P_OKDP, SUM(KOL) FROM SALDOMC S
INNER JOIN PRODUCTS PR ON PR.P_NREC = S.NREC
WHERE PODR = @TZ
GROUP BY PR.P_OKDP
UNION ALL
SELECT PR.P_OKDP, SUM(J_QTYU) FROM JOURNAL J
JOIN ARTICLES A ON A.A_ID = J.A_ID
INNER JOIN PRODUCTS PR ON PR.P_NREC = A.P_NREC
WHERE  J_DATE > @DATE AND J_TYPE = 1
GROUP BY PR.P_OKDP) AS RM ON RM.P_OKDP = P.P_OKDP
GROUP BY P.P_OKDP
HAVING SUM(QTYU) > SUM(ISNULL(P.P_MIN,0))) AND ISNULL(P_OKDP,'') <> ''

--ЗАПИШЕМ ОБЩУЮ ДЕФЕКТУРУ В DOC_DETAILS
DECLARE @DID INT
DECLARE @PARENT INT
DECLARE @DT DATETIME
INSERT INTO DOCUMENTS (D_DATE, D_MEMO)
VALUES (GETDATE(), 'ОБЩАЯ ДЕФЕКТУРА')
SET @DID = SCOPE_IDENTITY()
SET @PARENT = @DID
SET @DT = (SELECT D_DATE FROM DOCUMENTS WHERE D_ID = @DID)
INSERT INTO DOC_DETAILS (D_ID,P_NREC,T_QTYU)
SELECT @DID, P_NREC, ZAKAZ FROM #T2

--ОПРЕДЕЛИМ И РАЗОБЪЕМ ТОВАР, КОТОРЫЙ ЕСТЬ НА СКЛАДЕ
CREATE TABLE #T100 (NREC BIGINT, CMC BIGINT, KOL FLOAT, T_PARENT INT) 

DECLARE @PNREC BIGINT
DECLARE @QTYU FLOAT
DECLARE @NQTYU FLOAT
DECLARE @INREC BIGINT
DECLARE @CMC BIGINT
DECLARE @KOL FLOAT
DECLARE @TID INT

DECLARE #TMPCRS CURSOR LOCAL FAST_FORWARD READ_ONLY FOR
  SELECT P_NREC, T_QTYU, T_ID FROM DOC_DETAILS WHERE D_ID = @DID
OPEN #TMPCRS
FETCH NEXT FROM #TMPCRS INTO @PNREC, @QTYU, @TID
WHILE @@FETCH_STATUS = 0
  BEGIN
      SET @NQTYU = @QTYU
      --SELECT 'A'

     DECLARE #INTERNALCRS CURSOR LOCAL FAST_FORWARD READ_ONLY FOR
          SELECT NREC, CMC, KOL FROM RZKUTPRIH WHERE CMC = @PNREC AND KOL > 0 ORDER BY KOL
      OPEN #INTERNALCRS
      FETCH NEXT FROM #INTERNALCRS INTO @INREC,@CMC,@KOL
      WHILE (@NQTYU > 0 AND @@FETCH_STATUS = 0)
      BEGIN
          IF (@NQTYU = @KOL)     
          BEGIN
               INSERT INTO #T100 (NREC, CMC, KOL, T_PARENT)
               VALUES (@INREC, @CMC, @KOL, @TID)
               UPDATE RZKUTPRIH
               SET KOLFREE = @KOL
               WHERE NREC = @INREC
               SET @NQTYU = 0
          END
          ELSE IF (@NQTYU < @KOL)
          BEGIN
               INSERT INTO #T100 (NREC, CMC, KOL, T_PARENT)
               VALUES (@INREC, @CMC, @NQTYU, @TID)
               UPDATE RZKUTPRIH
               SET KOLFREE = @NQTYU
               WHERE NREC = @INREC
               SET @NQTYU = 0
          END
          ELSE
          BEGIN
               INSERT INTO #T100 (NREC, CMC, KOL, T_PARENT)
               VALUES (@INREC, @CMC, @KOL, @TID)
               UPDATE RZKUTPRIH
               SET KOLFREE = @KOL
               WHERE NREC = @INREC          
               SET @NQTYU = @NQTYU - @KOL
          END
          FETCH NEXT FROM #INTERNALCRS INTO @INREC,@CMC,@KOL
     END
      CLOSE #INTERNALCRS
      DEALLOCATE #INTERNALCRS

     FETCH NEXT FROM #TMPCRS INTO @PNREC, @QTYU, @TID
  END
CLOSE #TMPCRS
DEALLOCATE #TMPCRS

--ВСТАВИМ ВП 1Х1
DECLARE @DID1 INT
INSERT INTO DOCUMENTS (D_DATE, D_PARENT, D_MEMO)
VALUES (GETDATE(), @DID, 'ВНУТРЕННЕЕ ПЕРЕМЕЩЕНИЕ 1Х1')
SET @DID1 = SCOPE_IDENTITY()
INSERT INTO DOC_DETAILS (D_ID,P_NREC,T_QTYU, T_PARENT, T_RZKUTPRIH)
SELECT @DID1, CMC, KOL, T_PARENT, NREC FROM #T100
--ВСТАВИМ ВП ПО ГРУППЕ ЗАМЕН
DECLARE @DID2 INT
EXEC @DID2 = [UP_GET_DEFECTURAZG] @DID, @DID1
--ВСТАВИМ ДЕФЕКТУРУ СКЛАДА
DECLARE @DID3 INT
INSERT INTO DOCUMENTS (D_DATE, D_PARENT, D_MEMO)
VALUES (GETDATE(), @DID, 'ДЕФЕКТУРА СКЛАДА')
SET @DID3 = SCOPE_IDENTITY()
INSERT INTO DOC_DETAILS (D_ID,P_NREC,T_QTYU)
SELECT @DID3, D1.P_NREC, D1.T_QTYU - 
((SELECT ISNULL(SUM(T_QTYU),0) FROM DOC_DETAILS D2 WHERE D2.D_ID = @DID1 AND D1.T_ID = D2.T_PARENT) +
(SELECT ISNULL(SUM(T_QTYU),0) FROM DOC_DETAILS D2 WHERE D2.D_ID = @DID2 AND D1.T_ID = D2.T_PARENT)) AS QTYU
FROM DOC_DETAILS D1
WHERE D1.D_ID = @DID AND 
(D1.T_QTYU - 
((SELECT ISNULL(SUM(T_QTYU),0) FROM DOC_DETAILS D2 WHERE D2.D_ID = @DID1 AND D1.T_ID = D2.T_PARENT) +
(SELECT ISNULL(SUM(T_QTYU),0) FROM DOC_DETAILS D2 WHERE D2.D_ID = @DID2 AND D1.T_ID = D2.T_PARENT))) > 0

SELECT DD.P_NREC,P_NAME,M_NAME,P_MIN,P_MAX,ISNULL(QTYU,0),T_QTYU,T_PARENT,T_RZKUTPRIH, 0 AS DTYPE, DD.D_ID,ISNULL(P_KOEF,1) AS P_KOEF, P_OKDP FROM DOC_DETAILS DD
JOIN PRODUCTS P ON P.P_NREC = DD.P_NREC
JOIN MANUFACTURERS M ON P.M_ID = M.M_ID
JOIN #T1 ON #T1.P_NREC = P.P_NREC
WHERE D_ID = @DID 
UNION ALL
SELECT DD.P_NREC,P_NAME,M_NAME,P_MIN,P_MAX,ISNULL(QTYU,0),T_QTYU,T_PARENT,T_RZKUTPRIH, 1 AS DTYPE, DD.D_ID,ISNULL(P_KOEF,1) AS P_KOEF, P_OKDP FROM DOC_DETAILS DD
JOIN PRODUCTS P ON P.P_NREC = DD.P_NREC
JOIN MANUFACTURERS M ON P.M_ID = M.M_ID
JOIN #T1 ON #T1.P_NREC = P.P_NREC
WHERE D_ID = @DID1
UNION ALL
SELECT DD.P_NREC,P_NAME,M_NAME,P_MIN,P_MAX,ISNULL(QTYU,0),T_QTYU,T_PARENT,T_RZKUTPRIH, 2 AS DTYPE, DD.D_ID,ISNULL(P_KOEF,1) AS P_KOEF, P_OKDP FROM DOC_DETAILS DD
JOIN PRODUCTS P ON P.P_NREC = DD.P_NREC
JOIN MANUFACTURERS M ON P.M_ID = M.M_ID
JOIN #T1 ON #T1.P_NREC = P.P_NREC
WHERE D_ID = @DID2
UNION ALL
SELECT DD.P_NREC,P_NAME,M_NAME,P_MIN,P_MAX,ISNULL(QTYU,0),T_QTYU,T_PARENT,T_RZKUTPRIH, 3 AS DTYPE, DD.D_ID,ISNULL(P_KOEF,1) AS P_KOEF, P_OKDP FROM DOC_DETAILS DD
JOIN PRODUCTS P ON P.P_NREC = DD.P_NREC
JOIN MANUFACTURERS M ON P.M_ID = M.M_ID
JOIN #T1 ON #T1.P_NREC = P.P_NREC
WHERE D_ID = @DID3
ORDER BY P_NAME
GO
/****** Object:  StoredProcedure [dbo].[UP_GET_DEFECTURATZ]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	ПРОЦЕДУРА ВЫДАЕТ ДЕФЕКТУРУ ТОРОГОВОГО ЗАЛА
-- =============================================
CREATE   PROCEDURE [dbo].[UP_GET_DEFECTURATZ]
AS 
	SET NOCOUNT ON

	DECLARE @DATE DATETIME
	DECLARE @SKL BIGINT     --NREC СКЛАД
	DECLARE @TZ BIGINT     --NREC ТОРГОВОГО ЗАЛА
	SET @SKL = 4611693923140645959
	SET @TZ = 4611919881864392974
	SET @DATE = CAST(CONVERT(NVARCHAR(8),GETDATE(),112) AS DATETIME)

	SELECT 
		  A.P_NREC
		, -SUM(I_QTYU) AS QTYU  
	INTO #T0 
	FROM CHECKS C 
	INNER JOIN CHECK_ITEMS CC ON C.H_ID = CC.H_ID
	INNER JOIN ARTICLES A ON A.A_ID = CC.A_ID
	WHERE H_TYPE IN (1,2) AND H_DATE > @DATE 
	GROUP BY A.P_NREC
	
	UNION ALL
	SELECT 
		  NREC
		, SUM(KOL) 
	FROM SALDOMC
	WHERE PODR = @TZ
	GROUP BY NREC

	UNION ALL
	SELECT 
		  P_NREC
		, SUM(J_QTYU) 
	FROM JOURNAL J
	JOIN ARTICLES A ON A.A_ID = J.A_ID
	WHERE  J_DATE > @DATE AND J_TYPE = 1
	GROUP BY P_NREC
	
	SELECT 
		  P_NREC
		, SUM(QTYU) AS QTYU 
	INTO #T1 
	FROM #T0 GROUP BY P_NREC

--ВРЕМЕННАЯ ТАБЛИЦА С СУММАРНЫМ МИН/МАХ ДЛЯ ГРУПП ЗАМЕН ПОПАВШИХ В ОБРАБОТКУ
	SELECT 
		  P_OKDP
		, SUM(ISNULL(P_MIN,0)) AS G_MIN
		, SUM(ISNULL(P_MAX,0)) AS G_MAX
		, SUM(QTYU) AS QTYU 
	INTO #T11 
	FROM #T1 
	JOIN PRODUCTS P ON P.P_NREC = #T1.P_NREC
	WHERE ISNULL(P_OKDP,'')<>''
	GROUP BY P_OKDP

	DELETE FROM #T1 
	WHERE P_NREC IN ( SELECT P_NREC FROM PRODUCTS P 
					  JOIN #T11 ON P.P_OKDP = #T11.P_OKDP AND ISNULL(P.P_OKDP,'')<>'')

	SELECT 
		  (SELECT TOP 1 P_NREC FROM PRODUCTS WHERE PRODUCTS.P_OKDP = #T11.P_OKDP) AS P_NREC
		, G_MIN AS P_MIN
		, G_MAX AS P_MAX
		, QTYU
		, 1 AS GZ
	INTO #T12
	FROM #T11 

	UNION ALL
	SELECT 
		  #T1.P_NREC
		, P_MIN
		, P_MAX
		, QTYU
		, 0 AS GZ 
	FROM #T1 
	JOIN PRODUCTS P ON P.P_NREC = #T1.P_NREC

--УДАЛИМ ИЗ ОБРАБОТКИ ТОВАРЫ УОТОРЫЕ ДОЛЖНЫ ХРАНИТЬСЯ В ТОРГОВОМ ЗАЛЕ
	DELETE FROM #T12
	WHERE P_NREC IN (SELECT P_NREC FROM PRODUCTS WHERE ISNULL(P_KOEF,1) = 1)

--ОБЩАЯ ДЕФЕКТУРА
	SELECT 
		  P.P_NREC
		, P_NAME
		, M_NAME
		, #T12.P_MIN
		, #T12.P_MAX
		, SUM(ISNULL(QTYU,0)) AS REM
		, ROUND(#T12.P_MAX*ISNULL(P_KOEF,1) - SUM(ISNULL(QTYU,0)),0) AS ZAKAZ
		, P_OKDP 
	INTO #T2
	FROM PRODUCTS P 
	LEFT JOIN #T12 ON #T12.P_NREC = P.P_NREC
	LEFT JOIN MANUFACTURERS M ON M.M_ID = P.M_ID
	GROUP BY P.P_NREC, P_NAME, M_NAME, #T12.P_MIN, #T12.P_MAX, P_KOEF, P_OKDP
	HAVING SUM(ISNULL(QTYU,0)) < #T12.P_MIN*ISNULL(P_KOEF,1)

--УДАЛИМ ИЗ ОБРАБОТКИ ТОВАРЫ У КОТОРЫХ СУММАРНЫЙ ОСТАТОК ПО ГРУППЕ БОЛЬШЕ СУММАРНОГО МИНИМУМА
/*DELETE FROM #T2 WHERE P_OKDP IN 
(SELECT P.P_OKDP FROM #T2
JOIN PRODUCTS P ON P.P_NREC = #T2.P_NREC
JOIN (SELECT PR.P_OKDP, -SUM(I_QTYU) AS QTYU FROM CHECKS C 
INNER JOIN CHECK_ITEMS CC ON C.H_ID = CC.H_ID
INNER JOIN ARTICLES A ON A.A_ID = CC.A_ID 
INNER JOIN PRODUCTS PR ON PR.P_NREC = A.P_NREC
WHERE H_TYPE IN (1,2) AND H_DATE > @DATE 
GROUP BY PR.P_OKDP
UNION ALL
SELECT PR.P_OKDP, SUM(KOL) FROM SALDOMC S
INNER JOIN PRODUCTS PR ON PR.P_NREC = S.NREC
WHERE PODR = @TZ
GROUP BY PR.P_OKDP
UNION ALL
SELECT PR.P_OKDP, SUM(J_QTYU) FROM JOURNAL J
JOIN ARTICLES A ON A.A_ID = J.A_ID
INNER JOIN PRODUCTS PR ON PR.P_NREC = A.P_NREC
WHERE  J_DATE > @DATE AND J_TYPE = 1
GROUP BY PR.P_OKDP) AS RM ON RM.P_OKDP = P.P_OKDP
GROUP BY P.P_OKDP
HAVING SUM(QTYU) > SUM(ISNULL(P.P_MIN,0))) AND ISNULL(P_OKDP,'') <> ''
*/

--ЗАПИШЕМ ОБЩУЮ ДЕФЕКТУРУ В DOC_DETAILS
DECLARE @DID INT
DECLARE @PARENT INT
DECLARE @DT DATETIME
INSERT INTO DOCUMENTS (D_DATE, D_MEMO)
VALUES (GETDATE(), 'ОБЩАЯ ДЕФЕКТУРА')
SET @DID = SCOPE_IDENTITY()
SET @PARENT = @DID
SET @DT = (SELECT D_DATE FROM DOCUMENTS WHERE D_ID = @DID)
INSERT INTO DOC_DETAILS (D_ID,P_NREC,T_QTYU)
SELECT @DID, P_NREC, ZAKAZ FROM #T2

--ОПРЕДЕЛИМ И РАЗОБЪЕМ ТОВАР, КОТОРЫЙ ЕСТЬ НА СКЛАДЕ
CREATE TABLE #T100 (NREC BIGINT, CMC BIGINT, KOL FLOAT, T_PARENT INT) 

DECLARE @PNREC BIGINT
DECLARE @QTYU FLOAT
DECLARE @NQTYU FLOAT
DECLARE @INREC BIGINT
DECLARE @CMC BIGINT
DECLARE @KOL FLOAT
DECLARE @TID INT

DECLARE #TMPCRS CURSOR LOCAL FAST_FORWARD READ_ONLY FOR
  SELECT P_NREC, T_QTYU, T_ID FROM DOC_DETAILS WHERE D_ID = @DID
OPEN #TMPCRS
FETCH NEXT FROM #TMPCRS INTO @PNREC, @QTYU, @TID
WHILE @@FETCH_STATUS = 0
  BEGIN
      SET @NQTYU = @QTYU
      --SELECT 'A'

     DECLARE #INTERNALCRS CURSOR LOCAL FAST_FORWARD READ_ONLY FOR
          SELECT NREC, CMC, KOL FROM RZKUTPRIH WHERE CMC = @PNREC AND KOL > 0 ORDER BY KOL
      OPEN #INTERNALCRS
      FETCH NEXT FROM #INTERNALCRS INTO @INREC,@CMC,@KOL
      WHILE (@NQTYU > 0 AND @@FETCH_STATUS = 0)
      BEGIN
          IF (@NQTYU = @KOL)     
          BEGIN
               INSERT INTO #T100 (NREC, CMC, KOL, T_PARENT)
               VALUES (@INREC, @CMC, @KOL, @TID)
               UPDATE RZKUTPRIH
               SET KOLFREE = @KOL
               WHERE NREC = @INREC
               SET @NQTYU = 0
          END
          ELSE IF (@NQTYU < @KOL)
          BEGIN
               INSERT INTO #T100 (NREC, CMC, KOL, T_PARENT)
               VALUES (@INREC, @CMC, @NQTYU, @TID)
               UPDATE RZKUTPRIH
               SET KOLFREE = @NQTYU
               WHERE NREC = @INREC
               SET @NQTYU = 0
          END
          ELSE
          BEGIN
               INSERT INTO #T100 (NREC, CMC, KOL, T_PARENT)
               VALUES (@INREC, @CMC, @KOL, @TID)
               UPDATE RZKUTPRIH
               SET KOLFREE = @KOL
               WHERE NREC = @INREC          
               SET @NQTYU = @NQTYU - @KOL
          END
          FETCH NEXT FROM #INTERNALCRS INTO @INREC,@CMC,@KOL
     END
      CLOSE #INTERNALCRS
      DEALLOCATE #INTERNALCRS

     FETCH NEXT FROM #TMPCRS INTO @PNREC, @QTYU, @TID
  END
CLOSE #TMPCRS
DEALLOCATE #TMPCRS

--ВСТАВИМ ВП 1Х1
DECLARE @DID1 INT
INSERT INTO DOCUMENTS (D_DATE, D_PARENT, D_MEMO)
VALUES (GETDATE(), @DID, 'ВНУТРЕННЕЕ ПЕРЕМЕЩЕНИЕ 1Х1')
SET @DID1 = SCOPE_IDENTITY()
INSERT INTO DOC_DETAILS (D_ID,P_NREC,T_QTYU, T_PARENT, T_RZKUTPRIH)
SELECT @DID1, CMC, KOL, T_PARENT, NREC FROM #T100
--ВСТАВИМ ВП ПО ГРУППЕ ЗАМЕН
DECLARE @DID2 INT
EXEC @DID2 = [UP_GET_DEFECTURAZG] @DID, @DID1
--ВСТАВИМ ДЕФЕКТУРУ СКЛАДА
DECLARE @DID3 INT
INSERT INTO DOCUMENTS (D_DATE, D_PARENT, D_MEMO)
VALUES (GETDATE(), @DID, 'ДЕФЕКТУРА СКЛАДА')
SET @DID3 = SCOPE_IDENTITY()
INSERT INTO DOC_DETAILS (D_ID,P_NREC,T_QTYU)
SELECT @DID3, D1.P_NREC, D1.T_QTYU - 
((SELECT ISNULL(SUM(T_QTYU),0) FROM DOC_DETAILS D2 WHERE D2.D_ID = @DID1 AND D1.T_ID = D2.T_PARENT) +
(SELECT ISNULL(SUM(T_QTYU),0) FROM DOC_DETAILS D2 WHERE D2.D_ID = @DID2 AND D1.T_ID = D2.T_PARENT)) AS QTYU
FROM DOC_DETAILS D1
WHERE D1.D_ID = @DID AND 
(D1.T_QTYU - 
((SELECT ISNULL(SUM(T_QTYU),0) FROM DOC_DETAILS D2 WHERE D2.D_ID = @DID1 AND D1.T_ID = D2.T_PARENT) +
(SELECT ISNULL(SUM(T_QTYU),0) FROM DOC_DETAILS D2 WHERE D2.D_ID = @DID2 AND D1.T_ID = D2.T_PARENT))) > 0

SELECT DD.P_NREC,P_NAME,M_NAME,#T12.P_MIN,#T12.P_MAX,ISNULL(QTYU,0),T_QTYU,T_PARENT,T_RZKUTPRIH, 0 AS DTYPE, DD.D_ID,ISNULL(P_KOEF,1) AS P_KOEF, P_OKDP, GZ FROM DOC_DETAILS DD
JOIN PRODUCTS P ON P.P_NREC = DD.P_NREC
JOIN MANUFACTURERS M ON P.M_ID = M.M_ID
JOIN #T12 ON #T12.P_NREC = P.P_NREC
WHERE D_ID = @DID 
UNION ALL
SELECT DD.P_NREC,P_NAME,M_NAME,#T12.P_MIN,#T12.P_MAX,ISNULL(QTYU,0),T_QTYU,T_PARENT,T_RZKUTPRIH, 1 AS DTYPE, DD.D_ID,ISNULL(P_KOEF,1) AS P_KOEF, P_OKDP, GZ FROM DOC_DETAILS DD
JOIN PRODUCTS P ON P.P_NREC = DD.P_NREC
JOIN MANUFACTURERS M ON P.M_ID = M.M_ID
JOIN #T12 ON #T12.P_NREC = P.P_NREC
WHERE D_ID = @DID1
UNION ALL
SELECT DD.P_NREC,P_NAME,M_NAME,#T12.P_MIN,#T12.P_MAX,ISNULL(QTYU,0),T_QTYU,T_PARENT,T_RZKUTPRIH, 2 AS DTYPE, DD.D_ID,ISNULL(P_KOEF,1) AS P_KOEF, P_OKDP, GZ FROM DOC_DETAILS DD
JOIN PRODUCTS P ON P.P_NREC = DD.P_NREC
JOIN MANUFACTURERS M ON P.M_ID = M.M_ID
JOIN #T12 ON #T12.P_NREC = P.P_NREC
WHERE D_ID = @DID2
UNION ALL
SELECT DD.P_NREC,P_NAME,M_NAME,#T12.P_MIN,#T12.P_MAX,ISNULL(QTYU,0),T_QTYU,T_PARENT,T_RZKUTPRIH, 3 AS DTYPE, DD.D_ID,ISNULL(P_KOEF,1) AS P_KOEF, P_OKDP, GZ FROM DOC_DETAILS DD
JOIN PRODUCTS P ON P.P_NREC = DD.P_NREC
JOIN MANUFACTURERS M ON P.M_ID = M.M_ID
JOIN #T12 ON #T12.P_NREC = P.P_NREC
WHERE D_ID = @DID3
ORDER BY P_NAME

DROP TABLE #T0
DROP TABLE #T1
DROP TABLE #T2
DROP TABLE #T11
DROP TABLE #T12
DROP TABLE #T100
GO
/****** Object:  StoredProcedure [dbo].[WORK_BONUSECODE_doctor]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		leko
-- Create date: 2013-12-04

-- Description:	Общий отчет
--				EXEC [dbo].[WORK_BONUSECODE_doctor]
-- =============================================
CREATE PROCEDURE [dbo].[WORK_BONUSECODE_doctor]

	

AS
BEGIN

	SET NOCOUNT ON;

DECLARE @c_bcode as nvarchar(50)

DECLARE DC_CODE CURSOR FAST_FORWARD FOR
	SELECT DC_CODE 
	FROM DOCTOR_CODES;
OPEN DC_CODE
FETCH NEXT FROM DC_CODE INTO @c_bcode;
	
WHILE @@FETCH_STATUS = 0
begin
	EXEC [dbo].[WORK_BONUSECODE_PROD_UNION] @c_bcode
	--select c_id from CUSTOMERS where C_BONUSCODE=@c_bcode
	
	FETCH NEXT FROM DC_CODE INTO @c_bcode;
end

CLOSE DC_CODE;
DEALLOCATE DC_CODE;

	
	
END
GO
/****** Object:  StoredProcedure [ADM].[UpdPNrecInTableArticles]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-02-19 13:54:43.503
-- Description:	Корректировка поля P_NREC в таблице ARTICLES 
--				по тавлице PRODUCTS 
--				ARTICLES.P_NREC = PRODUCTS.P_NREC
--
--				EXEC [ADM].[UpdPNrecInTableArticles]
-- =============================================
CREATE PROCEDURE [ADM].[UpdPNrecInTableArticles]
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[ADM].[UpdPNrecInTableArticles]';

	UPDATE [new].[dbo].[ARTICLES]
	SET [ARTICLES].[P_NREC] = [PRODUCTS].[P_NREC]
	FROM [new].[dbo].[ARTICLES] 
	INNER JOIN [new].[dbo].[PRODUCTS] ON [ARTICLES].[P_ID] = [PRODUCTS].[P_ID]

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  View [dbo].[VW_PROD]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[VW_PROD]
AS

SELECT

A.H_TYPE , --0
A.H_DATE , --1
A.H_NO , --2
B.I_QTYU , --3
A.H_SUM , --4
A.T_ID , --5
A.U_ID , --6
A. H_DISCOUNT, --7
A.H_ITEMS ,--8
B.I_QTY , --9 количество в ученых единицах
B.I_PRICE - B .I_PRICE/100.0 *( H_DISCOUNT/ 100.0) AS I_PRICE ,--10 цена за отпускную еидиницу
C.P_NAME , --11
D.A_ID , --12
H_DSUM, --13
H_TYPE AS OPCODE, --14
I_PRICE/ 100.0*B .P_PACK - ( I_PRICE/ 100.0*B .P_PACK )/100.0 *(H_DISCOUNT /100.0) AS I_PRICEUF --15 цена за учетную единицу

FROM
CHECKS A LEFT JOIN CHECK_ITEMS B ON A .H_ID =B. H_ID LEFT JOIN ARTICLES D ON B .A_ID =D. A_ID LEFT JOIN PRODUCTS C ON D .P_ID =C. P_ID

WHERE
A.H_TYPE <>300 AND
A.H_TYPE <>301 AND
A.H_TYPE <>302 AND
A.H_TYPE <>303 AND
A.H_TYPE <>304 AND
A.H_TYPE <>305 AND
A.H_TYPE <>101 AND
A.H_TYPE <>201 AND
A.H_TYPE <>100 AND
A.H_TYPE <>200 AND
A.H_TYPE <>202 AND
A.H_TYPE <>-1 AND
YEAR (A. H_DATE)=YEAR(getdate()) AND MONTH( A. H_DATE)=MONTH(getdate()) AND DAY( A. H_DATE)=DAY(getdate())
GO
/****** Object:  View [dbo].[temp_def]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create view [dbo].[temp_def] as
SELECT PRODUCTS.P_ID, PRODUCTS.P_NAME, PRODUCTS.P_VOLUME, PRODUCTS.P_ATC, Sum(JOURNAL.J_QTYU) AS [Sum-J_QTYU]
FROM PRODUCTS INNER JOIN (JOURNAL INNER JOIN ARTICLES ON JOURNAL.A_ID = ARTICLES.A_ID) ON PRODUCTS.P_ID = ARTICLES.P_ID
GROUP BY PRODUCTS.P_ID, PRODUCTS.P_NAME, PRODUCTS.P_VOLUME, PRODUCTS.P_ATC
HAVING (((Sum(JOURNAL.J_QTYU))>0));
GO
/****** Object:  View [dbo].[temp_date]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create view [dbo].[temp_date] as
SELECT PRODUCTS.P_ID, Max(CHECKS.H_DATE) AS Maxdate
FROM PRODUCTS INNER JOIN ((CHECK_ITEMS INNER JOIN CHECKS ON CHECK_ITEMS.H_ID = CHECKS.H_ID) INNER JOIN ARTICLES ON CHECK_ITEMS.A_ID = ARTICLES.A_ID) ON PRODUCTS.P_ID = ARTICLES.P_ID
GROUP BY PRODUCTS.P_ID;
GO
/****** Object:  StoredProcedure [dbo].[rezerv_takeoff]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2011-07-17
-- Description:	Резервирование позиции
-- =============================================
create  PROCEDURE [dbo].[rezerv_takeoff]
	@id			int,
	@a_id		int,
	@count		float,
	@evaible	int
AS
BEGIN	
	SET NOCOUNT ON;
	
	DECLARE @pack int

	SELECT @pack = (SELECT PRODUCTS.P_PACK FROM PRODUCTS INNER JOIN
                      ARTICLES ON PRODUCTS.P_ID = ARTICLES.P_ID
					WHERE     (ARTICLES.A_ID = @a_id))

	UPDATE rezerv 
	SET
		EVAIBLE = @evaible
	WHERE id=@id		

	INSERT INTO JOURNAL (
		a_id,
		j_qty,
		j_qtyu,
		j_type)
	VALUES (
		@a_id,
		@count*@pack*1000,
		@count,
		3)
END
GO
/****** Object:  StoredProcedure [REPORTS].[REE_EXCHECK_ITEMS]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-03-03 21:06:28.477
-- Description:	Информационный документ
--
--				EXEC [REPORTS].[REE_EXCHECK_ITEMS] 5
-- =============================================
CREATE PROCEDURE [REPORTS].[REE_EXCHECK_ITEMS]
	@HID	INT		-- Документ
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[REPORTS].[REE_EXCHECK_ITEMS]';

	SELECT [H_ID]
		,[A_ID]
		,EX.[P_ID]
		,P.[P_NAME]
		,[I_QTY]
		,[I_QTYU]
		,[I_PRICE]
		,[EXCHECK_ITEMS_P_TAX]	= EX.[P_TAX]
		,EX.[P_PACK]
		,[I_DISCOUNT]
		,[I_BONUS]
		,M.[M_NAME]
		,[PRODUCTS_P_TAX]		= P.[P_TAX]
	FROM [new].[dbo].[EXCHECK_ITEMS] EX
	INNER JOIN [new].[dbo].[PRODUCTS] P ON P.[P_ID]=EX.[P_ID]
	INNER JOIN [new].[dbo].[MANUFACTURERS] M ON M.[M_ID]=P.[M_ID]
	WHERE [H_ID]=@HID
	ORDER BY P.[P_NAME]

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [PRICES].[PRICES_FILLREEDIFF]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2009-09-12 21:26:20.193
-- Description:	Заполнить реестр измененых цен по артикулам (таблица: PRICES_REEUPDATE)
--				EXEC [PRICES].[PRICES_FILLREEDIFF]
-- =============================================
CREATE PROCEDURE [PRICES].[PRICES_FILLREEDIFF]
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[PRICES].[PRICES_FILLREEDIFF]';

-- Заполнить реестр измененых цен по артикулам
	INSERT INTO [new].[dbo].[PRICES_REEDIFF]
			   ([DTS_SETPRICE]
			   ,[A_ID]
			   ,[P_NREC]
			   ,[SALDO]
			   ,[P_PRICE]
			   ,[A_PRICE])
	SELECT
		PA.[DTS_SETPRICE]
		, S.[A_ID]
		, A.[P_NREC]
		, S.[QTYU]
		, PA.[PRICE_ACTIVE]
		, CAST(A.P_PRICE AS MONEY)
	FROM 
	(	-- Наличие товара по артикулам
		SELECT  [A_ID]
			  , [QTYU]	= SUM([J_QTYU])
		FROM [new].[dbo].[JOURNAL]
		GROUP BY [A_ID]
		HAVING ABS(SUM([J_QTYU]))>0.0001
	) S 
	LEFT OUTER JOIN [new].[dbo].[ARTICLES] A ON A.A_ID = S.A_ID
	LEFT OUTER JOIN [new].[dbo].[PRODUCTS] P ON P.P_ID = A.P_ID
	LEFT OUTER JOIN [new].[dbo].[PRICES_ACTIVE] PA ON PA.P_NREC = A.[P_NREC] AND PA.[ISUPDATE] = 1
	WHERE ABS(CAST(A.P_PRICE AS MONEY) - PA.[PRICE_ACTIVE]) > 0.0005 

-- Снять флаг изменения цены по товару
	UPDATE [new].[dbo].[PRICES_ACTIVE] SET [ISUPDATE] = 0

-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_fillmatch]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_fillmatch]
@id int
as
begin
	set nocount on;

	-- пока результат предварительный (из списка)
	select a.A_ID, p.P_NAME, MNAME=isnull(m.M_NAME, N''), P_PACK, PRICE=cast(a.P_PRICE as money),
		U_QTY=round(irs.IR_QTYU, 4), FIND_QTY=round(isnull(ir.IRS_FQTY, 0.0), 4), ir.INV_MT, ir.INV_A1, ir.INV_A2,
		F_QTY=(select round(sum(IRS_FQTY), 4) from INVENT_RESULT irsub where irsub.INV_ID=@id and irsub.A_ID=a.A_ID),
		P_REMMC
		from ARTICLES a inner join INVENT_ROWS irs on a.A_ID=irs.A_ID and irs.INV_ID=@id
		left join INVENT_RESULT ir on ir.A_ID=irs.A_ID and ir.INV_ID=@id
		inner join PRODUCTS p on a.P_ID=p.P_ID
		left join MANUFACTURERS m on p.M_ID=m.M_ID
	order by p.P_NAME;
end;
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_fillresult]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_fillresult]
@id int
as
begin
	set nocount on;
	-- препараты
	select distinct A_ID=isnull(ir.A_ID, rs.A_ID), IR_QTYU = cast(0 as float)
	into #tmpx
	from
	 INVENT_ROWS rs full outer join INVENT_RESULT ir on rs.A_ID=ir.A_ID
	where rs.INV_ID=@id or ir.INV_ID=@id;

	update #tmpx set IR_QTYU = rs.IR_QTYU
			from INVENT_ROWS rs where #tmpx.A_ID=rs.A_ID and rs.INV_ID=@id;

	select a.A_ID, P_NAME, P_UNU,  M_NAME, P_TAX, P_PACK, P_PRICE, P_REMMC, UQTY=isnull(IR_QTYU, 0.0)
		from ARTICLES a inner join #tmpx on a.A_ID=#tmpx.A_ID
		inner join PRODUCTS p on a.P_ID=p.P_ID
		left join MANUFACTURERS m on p.M_ID=m.M_ID;
	-- бригады
	select BR_NO from INVENT_RESULT 
		where INV_ID=@id group by BR_NO order by BR_NO;
	-- результаты
	select A_ID, BR_NO, IRS_FQTY, IRS_LOC from INVENT_RESULT where INV_ID=@id
	order by A_ID;
end
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_fillorder]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_fillorder]
@id int
as
begin
	set nocount on;

	select A_ID, IR_QTYU
	into #tmpx
	from
	 INVENT_ROWS
	where INV_ID=@id

	update #tmpx set IR_QTYU = rs.IR_QTYU
			from INVENT_ROWS rs where #tmpx.A_ID=rs.A_ID and rs.INV_ID=@id;

	-- пока результат предварительный (из списка)
	select a.A_ID, p.P_NAME, isnull(m.M_NAME, N''), cast(a.P_PRICE as money), a.P_PRICE,
		round(#tmpx.IR_QTYU, 4), round(sum(isnull(ir.IRS_FQTY, 0.0)), 4)
		from ARTICLES a inner join #tmpx on a.A_ID=#tmpx.A_ID
		left join INVENT_RESULT ir on ir.A_ID=#tmpx.A_ID and ir.INV_ID=@id
		inner join PRODUCTS p on a.P_ID=p.P_ID
		left join MANUFACTURERS m on p.M_ID=m.M_ID
	group by a.A_ID, p.P_NAME, isnull(m.M_NAME, N''), a.P_PRICE, #tmpx.IR_QTYU
	order by p.P_NAME;
end;
GO
/****** Object:  StoredProcedure [dbo].[K_INSERT_ENDED_BALANCE]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[K_INSERT_ENDED_BALANCE]
	-- Add the parameters for the stored procedure here
	@aid	int				-- артикул		
AS
BEGIN	
SET NOCOUNT ON;
	
declare @sum float
declare @pnrec bigint
declare @pid int
declare @rez float
declare @min float
declare @okdp as nvarchar(50)

SELECT
	@pid=products.p_id,
	@pnrec=products.p_nrec,
	@okdp=products.p_okdp
FROM	ARTICLES INNER JOIN PRODUCTS 
		ON ARTICLES.P_ID = PRODUCTS.P_ID
WHERE a_id=@aid

if (@okdp='')
	select @min=p_min
	from products
	where PRODUCTS.p_id=@pid
else
	select @min=sum(p_min)
	from products
	where PRODUCTS.p_okdp=@okdp

SELECT    @sum= SUM(JOURNAL.J_QTYU)
FROM         ARTICLES INNER JOIN
                      PRODUCTS ON ARTICLES.P_ID = PRODUCTS.P_ID INNER JOIN
                      JOURNAL ON ARTICLES.A_ID = JOURNAL.A_ID
WHERE     (ARTICLES.P_NREC = @pnrec)

SELECT    @rez = isnull(SUM(rezerv.counts),0)
FROM         rezerv INNER JOIN
                      ARTICLES ON rezerv.a_id = ARTICLES.A_ID INNER JOIN
                      PRODUCTS ON ARTICLES.P_ID = PRODUCTS.P_ID
WHERE     (ARTICLES.P_ID = @pid) AND (rezerv.Evaible = 1)

IF (@sum+@rez<=@min) 
INSERT INTO ENDED_BALANCE (P_ID,P_NREC,EB_KOL) values (@pid,@pnrec,@sum+@rez)

END
GO
/****** Object:  UserDefinedFunction [dbo].[if3_getrem_pid]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------
CREATE function [dbo].[if3_getrem_pid]
(@pid int)  
returns float
as  
begin		
	declare @ret float;
	select @ret = isnull(sum(J_QTYU), 0.0) from 
		JOURNAL J inner join ARTICLES A on J.a_id=A.a_id
	where A.p_ID=@pid	
	return isnull(@ret, 0.0);
end
GO
/****** Object:  UserDefinedFunction [dbo].[if3_getrem]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------
create function [dbo].[if3_getrem] 
(@aid int)  
returns float
as  
begin		
	declare @ret float;
	select @ret = isnull(sum(J_QTYU), 0.0) from JOURNAL where A_ID=@aid	
	return isnull(@ret, 0.0);
end
GO
/****** Object:  StoredProcedure [dbo].[ap_zreport_writelast]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_zreport_writelast]
@tid int,
@dt datetime,
@now datetime
as
set nocount on
delete from POS_ARTICLES where T_ID=@tid
if exists(select * from SYSPARAMS where SP_NAME=N'Z_REPORT' + cast(@tid as nvarchar(32)) and SP_TID=@tid)
  update  dbo.SYSPARAMS set SP_DATE = @dt where SP_NAME=N'Z_REPORT' + cast(@tid as nvarchar(32)) and SP_TID=@tid
else
  insert into dbo.SYSPARAMS (SP_NAME, SP_DATE, SP_TID) values (N'Z_REPORT' + cast(@tid as nvarchar(32)), @dt, @tid)

if exists(select * from SYSPARAMS where SP_NAME=N'Z_REPORT_TIME' + cast(@tid as nvarchar(32)) and SP_TID=@tid)
  update  dbo.SYSPARAMS set SP_DATE = @now where SP_NAME=N'Z_REPORT_TIME' + cast(@tid as nvarchar(32)) and SP_TID=@tid
else
  insert into dbo.SYSPARAMS (SP_NAME, SP_DATE, SP_TID) values (N'Z_REPORT_TIME' + cast(@tid as nvarchar(32)), @now, @tid)
GO
/****** Object:  StoredProcedure [dbo].[ap_product_setnewart]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_product_setnewart]
@aid int,
@art int,
@tid int
as 
set nocount on
if exists(select * from POS_ARTICLES where A_ID=@aid and T_ID=@tid)
  update POS_ARTICLES set PA_FPART=@art where A_ID=@aid and T_ID=@tid
else
  insert into POS_ARTICLES (A_ID, T_ID, PA_FPART) values (@aid, @tid, @art)
GO
/****** Object:  StoredProcedure [dbo].[ap_product_loadid_bonus_20100315]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_product_loadid_bonus_20100315]
@aid int,
@tid int
as 
set nocount on
declare @art int
select @art = PA_FPART from POS_ARTICLES where A_ID=@aid and T_ID=@tid
if @art is null
  select @art = 0
select a.A_ID, p.P_NAME, p.P_PACK, p.P_UNU, p.P_TAX, @art as FPART, a.P_PRICE, p.P_NOPACK, p.P_REG, p.P_DISC
from ARTICLES a inner join PRODUCTS p on a.P_ID=p.P_ID
where a.A_ID=@aid and p.P_BONUS=1
GO
/****** Object:  StoredProcedure [dbo].[ap_product_loadid_bonus]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Кухтин А.А. (Правил: Каракошенко И.А.)
-- ALTER date:	2010-02-03 14:07:02.030
-- Description:	Информация об артикуле товара
--
-- EXEC [ap_product_loadid_bonus_PL]	226525,3
-- EXEC [ap_product_loadid_bonus]		226525,3
-- =============================================
CREATE procedure [dbo].[ap_product_loadid_bonus]
	@aid int,		-- Артикул товара
	@tid int		-- Номер POS-терминала
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @art	INT;	-- Код артикула в POS-терминале

-- Получить код артикула в POS-терминале
	SELECT @art = PA_FPART FROM POS_ARTICLES WHERE A_ID=@aid and T_ID=@tid;
	SELECT @art = ISNULL(@art,0 )

	SELECT 
		  a.A_ID
		, p.P_NAME
		, p.P_PACK
		, p.P_UNU
		, p.P_TAX
		, @art as FPART
-- Получить цену на товар по прайс-листу или по артикулу
		, P_PRICE = 
			CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC) IS NULL
			 THEN a.P_PRICE
			 ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)
			END
		, p.P_NOPACK
		, p.P_REG
		, p.P_DISC
	FROM ARTICLES a 
	INNER JOIN PRODUCTS p ON a.P_ID=p.P_ID
	WHERE a.A_ID=@aid AND p.P_BONUS=1

END
GO
/****** Object:  StoredProcedure [dbo].[ap_product_loadid_20100315]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_product_loadid_20100315]
@aid int,
@tid int
as 
set nocount on
declare @art int
select @art = PA_FPART from POS_ARTICLES where A_ID=@aid and T_ID=@tid
if @art is null
  select @art = 0
select a.A_ID, p.P_NAME, p.P_PACK, p.P_UNU, p.P_TAX, @art as FPART, a.P_PRICE, p.P_NOPACK, p.P_REG, p.P_DISC
from ARTICLES a inner join PRODUCTS p on a.P_ID=p.P_ID
where a.A_ID=@aid
GO
/****** Object:  StoredProcedure [dbo].[ap_product_loadid]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ap_product_loadid]
        @aid int,		-- Артикул товара
        @tid int		-- Номер POS-терминала
AS
BEGIN
        SET NOCOUNT ON;

        DECLARE @art	INT;	-- Код артикула в POS-терминале

-- Получить код артикула в POS-терминале
        SELECT @art = PA_FPART FROM POS_ARTICLES WHERE A_ID=@aid and T_ID=@tid;
        SELECT @art = ISNULL(@art,0 )

	declare @course float
	declare @rid int
		
	select @rid= R_ID from RATE_TERM where T_ID=@tid
	select @course=R_COURSE from RATE where R_ID=@rid

        SELECT 
                  a.A_ID
                , p.P_NAME
                , p.P_PACK
                , p.P_UNU
                , p.P_TAX
                , @art as FPART
-- Получить цену на товар по прайс-листу или по артикулу
	
                , P_PRICE = 
                        CASE WHEN (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC) IS NULL
                         THEN a.P_PRICE/@course
                         ELSE (SELECT PRICE_ACTIVE FROM PRICES_ACTIVE PA WHERE PA.P_NREC = p.P_NREC)/@course
                        END
                , p.P_NOPACK
                , p.P_REG
                , p.P_DISC
        FROM ARTICLES a 
        INNER JOIN PRODUCTS p ON a.P_ID=p.P_ID
        WHERE a.A_ID=@aid

END
GO
/****** Object:  StoredProcedure [dbo].[ap_product_getfpart]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ap_product_getfpart]
@aid int,
@tid int
as
set nocount on
select PA_FPART from POS_ARTICLES where A_ID=@aid and T_ID=@tid
GO
/****** Object:  StoredProcedure [dbo].[ap_checkitem_insert_extra]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2010-03-03 17:02:37.857
-- Description:	Вставка спецификации информационного документа
-- =============================================
CREATE procedure [dbo].[ap_checkitem_insert_extra]
	@hid	int,
	@aid	int,
	@iq		int,
	@ip		int,
	@qtyu	float = 0.0,
	@disc	int,
	@bonus	int = 0
as
BEGIN
	set nocount on;

	declare @pid int;
	declare @tax char(1);
	declare @pack int;
	select @pid = P_ID from ARTICLES where A_ID=@aid;
	select @tax=P_TAX, @pack=P_PACK from PRODUCTS where P_ID=@pid;

	insert into EXCHECK_ITEMS (H_ID, A_ID, P_ID, I_QTY, I_PRICE, I_QTYU, P_TAX, P_PACK, I_DISCOUNT, I_BONUS) 
	values (@hid, @aid, @pid, @iq, @ip, @qtyu, @tax, @pack, @disc, @bonus);

END
GO
/****** Object:  StoredProcedure [dbo].[ap_checkitem_insert_deleted]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ap_checkitem_insert_deleted]
@hid int,
@aid int,
@iq  int,
@ip  int,
@qtyu float = 0.0,
@disc int,
@bonus int = 0,
@deldate datetime = null
as
begin
	set nocount on
	declare @pid int
	declare @tax char(1) 
	declare @pack int
	select @pid = P_ID from ARTICLES where A_ID=@aid
	select @tax=P_TAX, @pack=P_PACK from PRODUCTS where P_ID=@pid
	insert into CHECK_ITEMS_DELETED (H_ID, A_ID, I_QTY, I_PRICE, I_QTYU, P_TAX, P_PACK, I_DISCOUNT, I_BONUS, I_DEL_DATETIME) 
	values (@hid, @aid, @iq, @ip, @qtyu, @tax, @pack, @disc, @bonus, @deldate)
end
GO
/****** Object:  StoredProcedure [dbo].[ap_checkitem_insert]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[ap_checkitem_insert]
@hid int,
@aid int,
@iq  int,
@ip  int,
@qtyu float = 0.0,
@disc int,
@bonus int = 0
as
set nocount on
begin tran
declare @pid int
declare @tax char(1) 
declare @pack int
select @pid = P_ID from ARTICLES where A_ID=@aid
select @tax=P_TAX, @pack=P_PACK from PRODUCTS where P_ID=@pid

-- КУРС

declare @rid int
declare @course float
declare @tid int
select @tid =T_ID from CHECKS where H_ID=@hid
select @rid = R_ID from Rate_Term where T_id=@tid
select @course = R_COURSE from RATE where R_ID = @rid



insert into CHECK_ITEMS (H_ID, A_ID, I_QTY, I_PRICE, I_QTYU, P_TAX, P_PACK, I_DISCOUNT, I_BONUS, R_COURSE, R_ID) 
values (@hid, @aid, @iq, @ip, @qtyu, @tax, @pack, @disc, @bonus, @course, @rid )

-- обновляем остатки

insert into JOURNAL (A_ID, J_QTY, J_QTYU) values (@aid, -@iq, -@qtyu)

--Выполняем вместо триггера
EXEC [K_INSERT_ENDED_BALANCE] @aid
commit tran
GO
/****** Object:  StoredProcedure [dbo].[ensure_invent_rows]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ensure_invent_rows]
@inv int,
@art int
as
begin
	set nocount on;
	if not exists(select * from INVENT_ROWS where INV_ID=@inv and A_ID=@art)
	begin
		insert into INVENT_ROWS (INV_ID, A_ID, IR_QTYU) values (@inv, @art, dbo.if3_getrem(@art));
	end
end
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_start_TEST]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_start_TEST]
@mt bit,
@a1 int,
@a2 int
as
begin
	set nocount on;
	-- сначала выбираем все товары, которые совпадают с маской
	declare @pat1 nvarchar(50);
	declare @pat2 nvarchar(50);
	declare @pat3 nvarchar(50);
	declare @pat4 nvarchar(50);
	declare @a1s nvarchar(50);
	declare @a2s nvarchar(50);
	set @a1s = cast(@a1 as nvarchar(50));
	if @a1 <> 0 or @a2 <> 0 -- если что-то указано
	begin	
		set @a1s = cast(@a1 as nvarchar(50));
		set @a2s = cast(@a2 as nvarchar(50));
		set @pat1 = N'%';
		set @pat2 = N'%';
		if @mt = 0
		begin	
			-- торговый зал, до минуса
			if @a1 <> 0
			-- есть шкаф
			begin
				if @a2 <> 0
				begin	
					-- есть полка
					set @pat1 = @a1s + @a2s + N'-%';
					set @pat2 = @a1s + @a2s + N'-%';
					set @pat1 = @a1s + @a2s; -- точно
					set @pat2 = @a1s + @a2s;
				end
				else
				begin
					-- нет полки, только шкаф
					set @pat1 = @a1s + N'_-%';
					set @pat2 = @a1s + N'__-%';
					set @pat3 = @a1s + N'_';
					set @pat4 = @a1s + N'__'; -- точно
				end
			end
		end	
		else
		begin
			-- материальная, после минуса
			if @a1 <> 0
			-- есть шкаф
			begin
				if @a2 <> 0 
				begin
					-- есть полка
					set @pat1 = N'%-' + @a1s + @a2s + N'%';
					set @pat2 = @pat1;
					set @pat3 = @pat1;
					set @pat4 = @pat1;
				end
				else
				begin
					-- нет полки, только шкаф
					set @pat1 = N'%-' + @a1s + N'%';
					set @pat2 = @pat1;
					set @pat3 = @pat1;
					set @pat4 = @pat1;
				end
			end
		end
		-- select @mt, @a1s, @a2s, @pat1, @pat2;
		select 0, A_ID, dbo.if3_getrem(A_ID) 
			from ARTICLES
			where P_ID in (select P_ID from PRODUCTS where
				P_REMMC like @pat1 or P_REMMC like @pat2 or P_REMMC like @pat3 or P_REMMC like @pat4 );
	end
end
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_start]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_start]
@id int
as
begin
	set nocount on;
	-- запускаем новую инвентаризацию
	delete from INVENT_ROWS where INV_ID=@id;
	-- сначала выбираем все товары, которые совпадают с маской
	declare @mt bit;
	declare @a1 int;
	declare @a2 int;
	declare @pat1 nvarchar(50);
	declare @pat2 nvarchar(50);
	declare @pat3 nvarchar(50);
	declare @pat4 nvarchar(50);
	declare @a1s nvarchar(50);
	declare @a2s nvarchar(50);
	set @a1s = cast(@a1 as nvarchar(50));
	select @mt=INV_MT, @a1=INV_A1, @a2=INV_A2 from INVENTS where INV_ID=@id;
	if @a1 <> 0 or @a2 <> 0 -- если что-то указано
	begin	
		set @a1s = cast(@a1 as nvarchar(50));
		set @a2s = cast(@a2 as nvarchar(50));
		set @pat1 = N'%';
		set @pat2 = N'%';
		if @mt = 0
		begin	
			-- торговый зал, до минуса
			if @a1 <> 0
			-- есть шкаф
			begin
				if @a2 <> 0
				begin	
					-- есть полка
					set @pat1 = @a1s + @a2s + N'-%';
					set @pat2 = @a1s + @a2s + N'-%';
					set @pat1 = @a1s + @a2s; -- точно
					set @pat2 = @a1s + @a2s;
				end
				else
				begin
					-- нет полки, только шкаф
					set @pat1 = @a1s + N'_-%';
					set @pat2 = @a1s + N'__-%';
					set @pat3 = @a1s + N'_';
					set @pat4 = @a1s + N'__'; -- точно
				end
			end
		end	
		else
		begin
			-- материальная, после минуса
			if @a1 <> 0
			-- есть шкаф
			begin
				if @a2 <> 0 
				begin
					-- есть полка
					set @pat1 = N'%-' + @a1s + @a2s + N'%';
					set @pat2 = @pat1;
					set @pat3 = @pat1;
					set @pat4 = @pat1;
				end
				else
				begin
					-- нет полки, только шкаф
					set @pat1 = N'%-' + @a1s + N'%';
					set @pat2 = @pat1;
					set @pat3 = @pat1;
					set @pat4 = @pat1;
				end
			end
		end
		-- select @mt, @a1s, @a2s, @pat1, @pat2;
		begin tran;
		insert into INVENT_ROWS(INV_ID, A_ID)
		select @id, A_ID
			from ARTICLES
			where P_ID in (select P_ID from PRODUCTS where
				P_REMMC like @pat1 or P_REMMC like @pat2 or P_REMMC like @pat3 or P_REMMC like @pat4 );
		update INVENTS set INV_OPEN=1 where INV_ID=@id;
		-- теперь запишем учетные остатки
		update INVENT_ROWS set IR_QTYU = dbo.if3_getrem(A_ID) 
			where INVENT_ROWS.INV_ID=@id
		commit tran;	
	end
	else
	begin
		update INVENTS set INV_OPEN=1 where INV_ID=@id;
	end
end
GO
/****** Object:  StoredProcedure [dbo].[K_INSERT_PROD]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE     PROCEDURE [dbo].[K_INSERT_PROD]
AS 
SET NOCOUNT ON

INSERT PROD 
	(LARTICUL,
	PARTICUL,
	KOEF,
	PriceMC,
	NameMC,
	NameGR,
	NameUED,
	CountGal,
	TNVed,
	ZapasMin,
	ZapasMax,
	RemMc,
	Zakup,
	PriceMCU,
	Kod,
	PKolU,
	PKol,
	Podr,
	Koef1,
	Kod1,
	Podr1,
	KolU1,
	Kol1,
	Ost,
	OstU,
	DataDate,
	CMC
	)
(
SELECT
  LL.Articul as LArticul,
  P.Articul as PArticul,
  LL.Koef,
  LL.PriceMC,
  LL.NameMC,
  LL.NameGR,
  LL.NameUED,
  LL.CountGal,
  LL.TNVed,
  LL.ZapasMin,
  LL.ZapasMax,
  LL.RemMc,
  LL.Zakup,
  Round(LL.PriceMC/LL.Koef,4) as PriceMCU,
  LL.Kod as Kod,
  P.KolU as PKolU,
  P.Kol as PKol,
  LL.Podr,
  (case when round(LL.Koef,4)<1 then 'Да' else 'Нет' end),
  (case when (LL.Kod like '%07%' or LL.Kod like '%00%') then 'Нет' else 'Да' end),
  (case when LL.Podr like '%461169392%' then 'Аптека' else 'Склад' end),
  (case when LL.Articul=P.Articul 
	then (case when LL.Podr like '%461169392%' then P.KolU else 0 end) 
	else 0 end),
  (case when LL.Articul=P.Articul 
	then (case when LL.Podr like '%461169392%' then P.Kol else 0 end) 
	else 0 end),
  (case when LL.Articul=P.Articul 
	then (case when LL.Podr like '%461169392%' then LL.CountGal-P.Kol else LL.CountGal end) 
	else LL.CountGal end),
  (case when LL.Articul=P.Articul 
	then (case when LL.Podr like '%461169392%' then (LL.CountGal-P.Kol)*LL.Koef else LL.CountGal*LL.Koef end) 
	else LL.CountGal*LL.Koef end),
  GetDate(),
  LL.CMC

FROM

  (SELECT
    A.articul as Articul,
    A.koef as Koef,
    A.[Price] as PriceMC,
    K.[Name] as NameMC,
    KE.Name as NameUED,
    G.Name as NameGR,
    L.Kol as CountGAL,
    K.TNVED as TNVed,
    K.ZAPASMIN,
    K.ZAPASMAX,
    K.RemMC,
    GR.kod as kod,
    K.volume as zakup,
    L.cpodr as Podr,
	K.NREC as CMC

  FROM  [192.168.24.152].GAL208.dbo.ARTICUL A,
	[192.168.24.152].GAL208.dbo.KATMC K,
	[192.168.24.152].GAL208.dbo.KATED KE,
	[192.168.24.152].GAL208.dbo.GROUPMC G,
	[192.168.24.152].GAL208.dbo.LISTGOOD L,
	[192.168.24.152].GAL208.dbo.GRNAL GR

WHERE 	A.[cMC] = K.[nRec] and 
	K.[cED] = KE.[nRec] and
       	K.[cGroupMC] = G.[nRec] and 
	A.[Articul] = L.[Articul] and
        GR.[nrec] = K.[cgrnal]
  ) LL

LEFT JOIN
  (SELECT     
    SUM(I_QTYU) AS KolU, 
    SUM(I_QTY / 1000) AS Kol, 
    A_ID AS Articul
   FROM  VW_PROD 
   GROUP BY A_ID
  ) P
ON LL.Articul = P.Articul


)
GO
/****** Object:  View [dbo].[VW_PROD_SUM]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[VW_PROD_SUM]
AS

SELECT     
    SUM(I_QTYU) AS KolU, 
    SUM(I_QTY / 1000) AS Kol, 
    A_ID AS Articul
   FROM  VW_PROD 
   GROUP BY A_ID
GO
/****** Object:  View [dbo].[VW_ITOG]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[VW_ITOG]
AS

SELECT
  LL.Articul as LArticul,
  P.Articul as PArticul,
  LL.Koef,
  LL.PriceMC,
  LL.NameMC,
  LL.NameGR,
  LL.NameUED,
  LL.CountGal,
  LL.TNVed,
  LL.ZapasMin,
  LL.ZapasMax,
  LL.RemMc,
  LL.Zakup,
  Round(LL.PriceMC/LL.Koef,4) as PriceMCU,
  LL.Kod as Kod,
  P.KolU as PKolU,
  P.Kol as PKol,
  LL.Podr

FROM

  (SELECT
    A.articul as Articul,
    A.koef as Koef,
    A.[Price] as PriceMC,
    K.[Name] as NameMC,
    KE.Name as NameUED,
    G.Name as NameGR,
    L.Kol as CountGAL,
    K.TNVED as TNVed,
    K.ZAPASMIN,
    K.ZAPASMAX,
    K.RemMC,
    GR.kod as kod,
    K.volume as zakup,
    L.cpodr as Podr

  FROM  [NEWDBF]...[Articul] A,
	[NEWDBF]...[KatMC] K,
	[NEWDBF]...[KatEd] KE,
	[NEWDBF]...[GroupMC] G,
	[NEWDBF]...[ListGood] L,
	[NEWDBF]...[grnal] GR

WHERE 	A.[cMC] = K.[nRec] and 
	K.[cED] = KE.[nRec] and
       	K.[cGroupMC] = G.[nRec] and 
	A.[Articul] = L.[Articul] and
        GR.[nrec] = K.[cgrnal]
  ) LL

LEFT JOIN
  (SELECT     
    SUM(I_QTYU) AS KolU, 
    SUM(I_QTY / 1000) AS Kol, 
    A_ID AS Articul
   FROM  VW_PROD 
   GROUP BY A_ID
  ) P
ON LL.Articul = P.Articul
GO
/****** Object:  StoredProcedure [PRICES].[PRICES_REEDIFF]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		GARY
-- Create date: 2009-09-12 21:26:20.193
-- Description:	Реестр РАЗЛИЧИЙ в цене по артикулам и товарам
-- 				по текущим остаткам товара (артикулам) 
--				и действующему прайс-листу на товары
--				ReportService.PRICE_DIFF
--
--				EXEC [PRICES].[PRICES_REEDIFF]
-- =============================================
CREATE PROCEDURE [PRICES].[PRICES_REEDIFF]
AS
BEGIN
	SET NOCOUNT ON;

-- LOG START PROCEDURE
	DECLARE @RC int;
	EXEC @RC = [LOG_SP_START] '[PRICES].[PRICES_REEDIFF]';

-- Заполнить реестр измененых цен по артикулам (таблица: PRICES_REEUPDATE)
	EXEC [PRICES].[PRICES_FILLREEDIFF]

-- Заполнить реестр измененых цен по артикулам
	SELECT
		  [Протокол Цены]	= PA.[DTS_SETPRICE]
		, [Артикул]			= S.[A_ID]
		, [Товар_NREC]		= CAST(A.[P_NREC] AS NVARCHAR(20))
		, [Товар]			= P.[P_NAME]
		, [Производитель]	= M.[M_NAME]
		, [Остаток]			= S.[QTYU]
		, [Цена Прайс-лист]	= PA.[PRICE_ACTIVE]
		, [Цена Артикул]	= CAST(A.P_PRICE AS MONEY)
		, [Разность цен]	= PA.[PRICE_ACTIVE] - CAST(A.P_PRICE AS MONEY)
		, [Итого разность]	= S.[QTYU]*(PA.[PRICE_ACTIVE] - CAST(A.P_PRICE AS MONEY))
		, [Процент отличия]	= 1-CAST(A.P_PRICE AS MONEY)/PA.[PRICE_ACTIVE]
	FROM 
	(	-- Наличие товара по артикулам
		SELECT  [A_ID]
			  , [QTYU]	= CAST(SUM([J_QTYU]) AS MONEY)
		FROM [new].[dbo].[JOURNAL]
		GROUP BY [A_ID]
		HAVING ABS(SUM([J_QTYU]))>0.0001
	) S 
	LEFT OUTER JOIN [new].[dbo].[ARTICLES] A ON A.A_ID = S.A_ID
	INNER JOIN [new].[dbo].[PRODUCTS] P ON P.P_ID = A.P_ID
	INNER JOIN [new].[dbo].[MANUFACTURERS] M ON M.M_ID = P.M_ID
	LEFT OUTER JOIN [new].[dbo].[PRICES_ACTIVE] PA ON PA.P_NREC = A.[P_NREC]
	WHERE PA.[PRICE_ACTIVE]>0
--	WHERE ABS(CAST(A.P_PRICE AS MONEY) - PA.[PRICE_ACTIVE]) > 0.0005 
	ORDER BY P.[P_NAME],S.[A_ID]
-- LOG END PROCEDURE
	EXEC [LOG_SP_END] @RC;

END
GO
/****** Object:  StoredProcedure [dbo].[site_katalog_doc_to_xml]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[site_katalog_doc_to_xml]
as
begin
	set nocount on;
	SET LANGUAGE RUSSIAN;  --Нужно если начинаются проблемы с кодировкой кириллицы	
	
	declare @xml xml 	
	set @xml =  (
	Select (
				select --TOP 5
				p.p_id "P_ID"
				,p.p_nrec "NREC"
				,substring(p_name,0,charindex('|',p_name)) "NAME"
				,case when charindex('|',m_name)>0 then substring(m_name,0,charindex('|',m_name)) else m_name end "MANUFACTURE"
				,case when p.p_pack>1 then N'ДЕЛИМАЯ' else N'НЕДЕЛИМАЯ' end "NPACK"
				,p.p_pack "PACK"
				,case when p.p_name like N'%PKU%' then N'ДА' else N'' end "PKU"
				,case when charindex('N(',p_name,charindex('|',p_name)+1)=0 then N'' 
						else substring(p_name,charindex('N(',p_name,charindex('|',p_name)+1)+2,cast(charindex(')',p_name,charindex('N(',p_name,charindex('|',p_name)+1)) as int)-cast(charindex('N(',p_name,charindex('|',p_name)+1) as int)-2) end "NORM"
				,p.p_ATC_base "ATC"
				,p.P_reg_date "END_REG"
				,p.p_lat_name "LAT"
				,case 
						when Cast(Round(p.p_volume,0,1) as int) % 10=8 then N'Нет поставок' 
						when p.p_volume<0 then N'Под заказ. Срок годности ограничен' 
						else N'' end "SUB"
				,case when p.p_budget>0 then N'ДА' else N'' end "BUDGET"
				,N'' "BASIS"

				from products P
					inner join manufacturers m on p.m_id=m.m_id
				where 
					((p.p_volume<>101) and (p.p_volume<>2222)and (p.p_volume<>100) and (p.p_volume<>1111) and (p.p_volume<>6) and (p.p_sizez=1) and ((p.p_reg_date>GetDate()) or (p.p_reg_date is NULL)) and (p.p_remmc not like'%*%')) or
					((p.p_sizez=1) and (p.p_volume=100) and (dbo.if3_getrem_pid(p_id)>0) and ((p.p_reg_date>GetDate()) or (p.p_reg_date is NULL) ) and (p.p_remmc not like'%*%')) or
					((p.p_sizez=1) and (p.p_volume=1111) and (dbo.if3_getrem_pid(p_id)>0) and ((p.p_reg_date>GetDate()) or (p.p_reg_date is NULL) ) and (p.p_remmc not like'%*%'))
				for	xml path ('Position'), type
				) 
				for xml path ('Products'), type
			)

	--select cast (@xml as nvarchar(max))			--готовый xml в одной строке
	--select '<?xml version="1.0" encoding="ISO-8859-1" ?>' +cast (@xml as nvarchar(max))
	select '<?xml version="1.0" encoding="UTF-8" ?>' +cast (@xml as nvarchar(max))			--готовый xml в одной строке
end
GO
/****** Object:  StoredProcedure [dbo].[rezerv_takeoff_time]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Конева Е.А.
-- ALTER date:	2011-07-17
-- Description:	Резервирование позиции
-- =============================================
CREATE PROCEDURE [dbo].[rezerv_takeoff_time]	
AS
BEGIN	
	
	SET NOCOUNT ON;
	
	DECLARE	@dateMin	datetime,
			@id			int,
			@a_id		int,
			@count		float

	SELECT @dateMin=MIN(DATEADD(hh,hours,data)) FROM REZERV
	WHERE evaible=1

	IF (@dateMin<=GetDate())
	BEGIN	
		SELECT @id=id,@a_id=a_id,@count=counts FROM rezerv
		WHERE DATEADD(hh,hours,data)=@dateMin		
		EXEC [rezerv_takeoff] @id,@a_id, @count, 0		
	END

END
GO
/****** Object:  View [dbo].[temp_def_itog]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create view [dbo].[temp_def_itog] as
SELECT PRODUCTS.P_ID, PRODUCTS.P_NAME, PRODUCTS.P_VOLUME, temp_def.P_ATC as Nalichie
FROM (temp_def RIGHT JOIN PRODUCTS ON temp_def.P_ATC = PRODUCTS.P_ATC) INNER JOIN ((CHECK_ITEMS INNER JOIN CHECKS ON CHECK_ITEMS.H_ID = CHECKS.H_ID) INNER JOIN ARTICLES ON CHECK_ITEMS.A_ID = ARTICLES.A_ID) ON PRODUCTS.P_ID = ARTICLES.P_ID
GROUP BY PRODUCTS.P_ID, PRODUCTS.P_NAME, PRODUCTS.P_VOLUME, temp_def.P_ATC;
GO
/****** Object:  StoredProcedure [dbo].[site_katalog_defecture_to_xml]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
CREATE procedure [dbo].[site_katalog_defecture_to_xml]
as
begin
	set nocount on;
	SET LANGUAGE RUSSIAN;  --Нужно если начинаются проблемы с кодировкой кириллицы	
	
	declare @xml xml 	
	set @xml =  (
	Select (
				select --TOP 5
				p.p_id "P_ID"
				,p.p_nrec "NREC"
				,substring(p.p_name,0,charindex('|',p.p_name)) "NAME"
				,case when charindex('|',m_name)>0 then substring(m_name,0,charindex('|',m_name)) else m_name end "MANUFACTURE"
				,cast(temp_date.MaxDate as date) "DATE"

				,case when (td.nalichie IS NULL) then N'Нет' else N'Есть, обращайтесь в аптеку' end "ANALOGI"
				
				from products P
					inner join manufacturers m on p.m_id=m.m_id
					inner join temp_def_itog td on p.p_id=td.p_id 
					inner join temp_date on p.p_id=temp_date.p_id 
					where 
					(((p.p_volume=118) or (p.p_volume=108) or (p.p_volume=128) or (p.p_volume=138)
					or (p.p_volume=148) or (p.p_volume=158)
					or (p.p_volume=208) or (p.p_volume=218) or (p.p_volume=228) or (p.p_volume=238)
					or (p.p_volume=308) or (p.p_volume=318) or (p.p_volume=328) or (p.p_volume=338))
					and temp_date.Maxdate<GETDATE()-90
					and (p.p_sizez=1))
				for	xml path ('Position'), type
				) 
				for xml path ('Products'), type
			)

	--select cast (@xml as nvarchar(max))			--готовый xml в одной строке
	--select '<?xml version="1.0" encoding="ISO-8859-1" ?>' +cast (@xml as nvarchar(max))
	select '<?xml version="1.0" encoding="UTF-8" ?>' +cast (@xml as nvarchar(max))			--готовый xml в одной строке
end
GO
/****** Object:  StoredProcedure [dbo].[ip_invent_findarticle]    Script Date: 01/17/2024 14:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------
create procedure [dbo].[ip_invent_findarticle]
@art int,
@brno int,
@key nvarchar(255),
@mt bit,
@a1 int,
@a2 int,
@inc bit
as
begin
	set nocount on;
	declare @invid int;
	select @invid = INV_ID from INVENTS where INV_CODE=@key;
	if exists(select * from ARTICLES where A_ID=@art)
	begin
		-- артикул существует
		exec dbo.ensure_invent_rows @invid, @art;
		if not exists (select * from INVENT_RESULT where INV_ID=@invid and A_ID=@art and BR_NO=@brno and INV_MT=@mt and INV_A1=@a1 and INV_A2=@a2) 
		begin
			-- артикула нет в результатах
			insert into INVENT_RESULT(INV_ID, A_ID, BR_NO, INV_MT, INV_A1, INV_A2) values(@invid, @art, @brno, @mt, @a1, @a2)
		end
		if @inc = 1
		begin
			exec dbo.ip_incfact @art, @brno, @key, @mt, @a1, @a2;
		end
		select a.A_ID, a.P_ID, P_NAME, M_NAME, P_PACK, P_REMMC, a.P_PRICE, irs.IRS_SQTY, irs.IRS_FQTY
				from INVENT_RESULT irs inner join ARTICLES a on irs.A_ID=a.A_ID and irs.BR_NO=@brno and irs.INV_ID=@invid
					inner join PRODUCTS p on a.P_ID=p.P_ID
					left join MANUFACTURERS m on m.M_ID=p.M_ID
		where a.A_ID=@art and irs.BR_NO=@brno and irs.INV_ID=@invid and irs.INV_MT=@mt and irs.INV_A1=@a1 and irs.INV_A2=@a2
	end
	else
		select null where 0<>0;
end
GO
/****** Object:  Default [DF_PRICES_ACTIVE_ISUPDATE_A16]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[PRICES_ACTIVE_A16] ADD  CONSTRAINT [DF_PRICES_ACTIVE_ISUPDATE_A16]  DEFAULT ((1)) FOR [ISUPDATE]
GO
/****** Object:  Default [DF_PRICES_ACTIVE_OENAME_A16]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[PRICES_ACTIVE_A16] ADD  CONSTRAINT [DF_PRICES_ACTIVE_OENAME_A16]  DEFAULT (N'ШТУКА') FOR [OENAME]
GO
/****** Object:  Default [DF_PRICES_ACTIVE_OEKOEF_A16]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[PRICES_ACTIVE_A16] ADD  CONSTRAINT [DF_PRICES_ACTIVE_OEKOEF_A16]  DEFAULT ((1)) FOR [OEKOEF]
GO
/****** Object:  Default [DF_PRICES_FOOTER_PF_LEVEL]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[PRICES_FOOTER] ADD  CONSTRAINT [DF_PRICES_FOOTER_PF_LEVEL]  DEFAULT ((2)) FOR [PF_LEVEL]
GO
/****** Object:  Default [DEF_RCP_CATEGORIES_RCPC_DISCOUNT]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[RCP_CATEGORIES] ADD  CONSTRAINT [DEF_RCP_CATEGORIES_RCPC_DISCOUNT]  DEFAULT ((0.0)) FOR [RCPC_DISCOUNT]
GO
/****** Object:  Default [DF_t1_dat]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[t1] ADD  CONSTRAINT [DF_t1_dat]  DEFAULT (getdate()) FOR [dat]
GO
/****** Object:  Default [DF_rezerv_data]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[rezerv] ADD  CONSTRAINT [DF_rezerv_data]  DEFAULT (getdate()) FOR [data]
GO
/****** Object:  Default [DF_rezerv_evaible]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[rezerv] ADD  CONSTRAINT [DF_rezerv_evaible]  DEFAULT ((1)) FOR [evaible]
GO
/****** Object:  Default [DF_PRICES_REEUPDATE_ACTION_FLAG]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[PRICES_REEUPDATE] ADD  CONSTRAINT [DF_PRICES_REEUPDATE_ACTION_FLAG]  DEFAULT ((1)) FOR [ACTION_FLAG]
GO
/****** Object:  Default [DF_PRICES_REEUPDATE_OENAME]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[PRICES_REEUPDATE] ADD  CONSTRAINT [DF_PRICES_REEUPDATE_OENAME]  DEFAULT (N'ШТУКА') FOR [OENAME]
GO
/****** Object:  Default [DF_PRICES_REEUPDATE_OEKOEF]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[PRICES_REEUPDATE] ADD  CONSTRAINT [DF_PRICES_REEUPDATE_OEKOEF]  DEFAULT ((1)) FOR [OEKOEF]
GO
/****** Object:  Default [DF_PRICES_REEUPDATE_ACTION_FLAG_A16]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[PRICES_REEUPDATE_A16] ADD  CONSTRAINT [DF_PRICES_REEUPDATE_ACTION_FLAG_A16]  DEFAULT ((1)) FOR [ACTION_FLAG]
GO
/****** Object:  Default [DF_PRICES_REEUPDATE_OENAME_A16]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[PRICES_REEUPDATE_A16] ADD  CONSTRAINT [DF_PRICES_REEUPDATE_OENAME_A16]  DEFAULT (N'ШТУКА') FOR [OENAME]
GO
/****** Object:  Default [DF_PRICES_REEUPDATE_OEKOEF_A16]    Script Date: 01/17/2024 14:13:28 ******/
ALTER TABLE [dbo].[PRICES_REEUPDATE_A16] ADD  CONSTRAINT [DF_PRICES_REEUPDATE_OEKOEF_A16]  DEFAULT ((1)) FOR [OEKOEF]
GO
/****** Object:  Default [DF_ZAKAZ_ves_id]    Script Date: 01/17/2024 14:13:30 ******/
ALTER TABLE [dbo].[ZAKAZ] ADD  CONSTRAINT [DF_ZAKAZ_ves_id]  DEFAULT ((0)) FOR [ves_id]
GO
/****** Object:  Default [DF__Z_REPORTS__Z_NO__145C0A3F]    Script Date: 01/17/2024 14:13:30 ******/
ALTER TABLE [dbo].[Z_REPORTS] ADD  DEFAULT (0) FOR [Z_NO]
GO
/****** Object:  Default [DF__Z_REPORTS__Z_SUM__15502E78]    Script Date: 01/17/2024 14:13:30 ******/
ALTER TABLE [dbo].[Z_REPORTS] ADD  DEFAULT (0) FOR [Z_SUMA]
GO
/****** Object:  Default [DF__Z_REPORTS__Z_SUM__164452B1]    Script Date: 01/17/2024 14:13:30 ******/
ALTER TABLE [dbo].[Z_REPORTS] ADD  DEFAULT (0) FOR [Z_SUMB]
GO
/****** Object:  Default [DF_INVENT_RESULT_IRS_FQTY]    Script Date: 01/17/2024 14:13:30 ******/
ALTER TABLE [dbo].[INVENT_RESULT] ADD  CONSTRAINT [DF_INVENT_RESULT_IRS_FQTY]  DEFAULT (0.0) FOR [IRS_FQTY]
GO
/****** Object:  Default [DF_IVNENT_RESULT_IRS_TIMESTAMP]    Script Date: 01/17/2024 14:13:30 ******/
ALTER TABLE [dbo].[INVENT_RESULT] ADD  CONSTRAINT [DF_IVNENT_RESULT_IRS_TIMESTAMP]  DEFAULT (getdate()) FOR [IRS_TIMESTAMP]
GO
/****** Object:  Default [DF_IVNENTS_INV_DATE]    Script Date: 01/17/2024 14:13:32 ******/
ALTER TABLE [dbo].[INVENTS] ADD  CONSTRAINT [DF_IVNENTS_INV_DATE]  DEFAULT (getdate()) FOR [INV_DATE]
GO
/****** Object:  Default [DF_IVNENTS_INV_CLOSE]    Script Date: 01/17/2024 14:13:32 ******/
ALTER TABLE [dbo].[INVENTS] ADD  CONSTRAINT [DF_IVNENTS_INV_CLOSE]  DEFAULT (0) FOR [INV_CLOSED]
GO
/****** Object:  Default [DF_IVNENTS_INV_OPEN]    Script Date: 01/17/2024 14:13:32 ******/
ALTER TABLE [dbo].[INVENTS] ADD  CONSTRAINT [DF_IVNENTS_INV_OPEN]  DEFAULT (0) FOR [INV_OPEN]
GO
/****** Object:  Default [DF_EXCHECK_TYPES_NAME]    Script Date: 01/17/2024 14:13:32 ******/
ALTER TABLE [dbo].[EXCHECK_TYPES] ADD  CONSTRAINT [DF_EXCHECK_TYPES_NAME]  DEFAULT (N'Описания нет') FOR [NAME]
GO
/****** Object:  Default [DF_ENDED_BALANCE_EB_DATE]    Script Date: 01/17/2024 14:13:32 ******/
ALTER TABLE [dbo].[ENDED_BALANCE] ADD  CONSTRAINT [DF_ENDED_BALANCE_EB_DATE]  DEFAULT (getdate()) FOR [EB_DATE]
GO
/****** Object:  Default [DF_ENDED_BALANCE_EB_WORKED]    Script Date: 01/17/2024 14:13:32 ******/
ALTER TABLE [dbo].[ENDED_BALANCE] ADD  CONSTRAINT [DF_ENDED_BALANCE_EB_WORKED]  DEFAULT ((0)) FOR [EB_WORKED]
GO
/****** Object:  Default [DF_LOG_PROC_DTS_START1]    Script Date: 01/17/2024 14:13:32 ******/
ALTER TABLE [dbo].[LOG_SP] ADD  CONSTRAINT [DF_LOG_PROC_DTS_START1]  DEFAULT (getdate()) FOR [DTS_START]
GO
/****** Object:  Default [DF_PRICES_ACTIVE_ISUPDATE]    Script Date: 01/17/2024 14:13:33 ******/
ALTER TABLE [dbo].[PRICES_ACTIVE] ADD  CONSTRAINT [DF_PRICES_ACTIVE_ISUPDATE]  DEFAULT ((1)) FOR [ISUPDATE]
GO
/****** Object:  Default [DF_PRICES_ACTIVE_OENAME]    Script Date: 01/17/2024 14:13:33 ******/
ALTER TABLE [dbo].[PRICES_ACTIVE] ADD  CONSTRAINT [DF_PRICES_ACTIVE_OENAME]  DEFAULT (N'ШТУКА') FOR [OENAME]
GO
/****** Object:  Default [DF_PRICES_ACTIVE_OEKOEF]    Script Date: 01/17/2024 14:13:33 ******/
ALTER TABLE [dbo].[PRICES_ACTIVE] ADD  CONSTRAINT [DF_PRICES_ACTIVE_OEKOEF]  DEFAULT ((1)) FOR [OEKOEF]
GO
/****** Object:  Default [DF_temp_h_date]    Script Date: 01/17/2024 14:13:33 ******/
ALTER TABLE [dbo].[NOPOST] ADD  CONSTRAINT [DF_temp_h_date]  DEFAULT (getdate()) FOR [h_date]
GO
/****** Object:  Default [DF_CUSTOMERS_ARCHIVE_C_A_DATE]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[CUSTOMERS_ARCHIVE] ADD  CONSTRAINT [DF_CUSTOMERS_ARCHIVE_C_A_DATE]  DEFAULT (getdate()) FOR [C_A_DATE]
GO
/****** Object:  Default [DF__CUSTOMERS__C_DIS__014935CB]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[CUSTOMERS] ADD  CONSTRAINT [DF__CUSTOMERS__C_DIS__014935CB]  DEFAULT ((0.0)) FOR [C_DISCOUNT]
GO
/****** Object:  Default [DF__CUSTOMERS__C_SUM__023D5A04]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[CUSTOMERS] ADD  CONSTRAINT [DF__CUSTOMERS__C_SUM__023D5A04]  DEFAULT ((0.0)) FOR [C_SUM]
GO
/****** Object:  Default [DF_CUSTOMERS_C_CHANGED]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[CUSTOMERS] ADD  CONSTRAINT [DF_CUSTOMERS_C_CHANGED]  DEFAULT ((0)) FOR [C_CHANGED]
GO
/****** Object:  Default [DF_CUSTOMERS_C_VOID]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[CUSTOMERS] ADD  CONSTRAINT [DF_CUSTOMERS_C_VOID]  DEFAULT ((0)) FOR [C_VOID]
GO
/****** Object:  Default [DEF_RECEIPES_RCP_DISCOUNT]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[RECEIPES] ADD  CONSTRAINT [DEF_RECEIPES_RCP_DISCOUNT]  DEFAULT ((0.0)) FOR [RCP_DISCOUNT]
GO
/****** Object:  Default [DF_PRODUCTS_P_PACK]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[PRODUCTS] ADD  CONSTRAINT [DF_PRODUCTS_P_PACK]  DEFAULT ((1)) FOR [P_PACK]
GO
/****** Object:  Default [DF_PRODUCTS_P_TAX]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[PRODUCTS] ADD  CONSTRAINT [DF_PRODUCTS_P_TAX]  DEFAULT (N'0') FOR [P_TAX]
GO
/****** Object:  Default [DF_PRODUCTS_P_NOPACK]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[PRODUCTS] ADD  CONSTRAINT [DF_PRODUCTS_P_NOPACK]  DEFAULT ((0)) FOR [P_NOPACK]
GO
/****** Object:  Default [DF_PRODUCTS_P_REG]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[PRODUCTS] ADD  CONSTRAINT [DF_PRODUCTS_P_REG]  DEFAULT ((0)) FOR [P_REG]
GO
/****** Object:  Default [DF_PRODUCTS_P_LS]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[PRODUCTS] ADD  CONSTRAINT [DF_PRODUCTS_P_LS]  DEFAULT ((0)) FOR [P_LS]
GO
/****** Object:  Default [DF_PRODUCTS_P_DISC]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[PRODUCTS] ADD  CONSTRAINT [DF_PRODUCTS_P_DISC]  DEFAULT ((0.0)) FOR [P_DISC]
GO
/****** Object:  Default [DF_PRODUCTS_P_BONUS]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[PRODUCTS] ADD  CONSTRAINT [DF_PRODUCTS_P_BONUS]  DEFAULT ((0)) FOR [P_BONUS]
GO
/****** Object:  Default [DF_PRODUCTS_P_PRICE]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[ARTICLES] ADD  CONSTRAINT [DF_PRODUCTS_P_PRICE]  DEFAULT ((0.0)) FOR [P_PRICE]
GO
/****** Object:  Default [DF_CHECK_ITEMS_DELETED_I_QTYU]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[CHECK_ITEMS_DELETED] ADD  CONSTRAINT [DF_CHECK_ITEMS_DELETED_I_QTYU]  DEFAULT ((0.0)) FOR [I_QTYU]
GO
/****** Object:  Default [DF_CHECK_ITEMS_DELETED_I_DISCOUNT]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[CHECK_ITEMS_DELETED] ADD  CONSTRAINT [DF_CHECK_ITEMS_DELETED_I_DISCOUNT]  DEFAULT ((0)) FOR [I_DISCOUNT]
GO
/****** Object:  Default [DF_CHECK_ITEMS_DELETED_I_BONUS]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[CHECK_ITEMS_DELETED] ADD  CONSTRAINT [DF_CHECK_ITEMS_DELETED_I_BONUS]  DEFAULT ((0)) FOR [I_BONUS]
GO
/****** Object:  Default [DF_CHECK_ITEMS_I_QTYU]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[CHECK_ITEMS] ADD  CONSTRAINT [DF_CHECK_ITEMS_I_QTYU]  DEFAULT ((0.0)) FOR [I_QTYU]
GO
/****** Object:  Default [DF_CHECK_ITEMS_I_DISCOUNT]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[CHECK_ITEMS] ADD  CONSTRAINT [DF_CHECK_ITEMS_I_DISCOUNT]  DEFAULT ((0)) FOR [I_DISCOUNT]
GO
/****** Object:  Default [DF_CHECK_ITEMS_I_BONUS]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[CHECK_ITEMS] ADD  CONSTRAINT [DF_CHECK_ITEMS_I_BONUS]  DEFAULT ((0)) FOR [I_BONUS]
GO
/****** Object:  Default [DF_EXCHECK_ITEMS_I_QTYU]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[EXCHECK_ITEMS] ADD  CONSTRAINT [DF_EXCHECK_ITEMS_I_QTYU]  DEFAULT ((0.0)) FOR [I_QTYU]
GO
/****** Object:  Default [DF_EXCHECK_ITEMS_I_DISCOUNT]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[EXCHECK_ITEMS] ADD  CONSTRAINT [DF_EXCHECK_ITEMS_I_DISCOUNT]  DEFAULT ((0)) FOR [I_DISCOUNT]
GO
/****** Object:  Default [DF_EXCHECK_ITEMS_I_BONUS]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[EXCHECK_ITEMS] ADD  CONSTRAINT [DF_EXCHECK_ITEMS_I_BONUS]  DEFAULT ((0)) FOR [I_BONUS]
GO
/****** Object:  Default [DF_IVNENT_ROWS_IR_QTYU]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[INVENT_ROWS] ADD  CONSTRAINT [DF_IVNENT_ROWS_IR_QTYU]  DEFAULT ((0.0)) FOR [IR_QTYU]
GO
/****** Object:  Default [DF_IVNENT_ROWS_IR_QTYF]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[INVENT_ROWS] ADD  CONSTRAINT [DF_IVNENT_ROWS_IR_QTYF]  DEFAULT ((0.0)) FOR [IR_QTYF]
GO
/****** Object:  Default [DF_IVNENT_ROWS_IR_TIMESTAMP]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[INVENT_ROWS] ADD  CONSTRAINT [DF_IVNENT_ROWS_IR_TIMESTAMP]  DEFAULT (getdate()) FOR [IR_TIMESTAMP]
GO
/****** Object:  Default [DF_JOURNAL_J_DATE]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[JOURNAL] ADD  CONSTRAINT [DF_JOURNAL_J_DATE]  DEFAULT (getdate()) FOR [J_DATE]
GO
/****** Object:  Default [DF_JOURNAL_J_QTYU]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[JOURNAL] ADD  CONSTRAINT [DF_JOURNAL_J_QTYU]  DEFAULT ((0.0)) FOR [J_QTYU]
GO
/****** Object:  Default [DF_JOURNAL_J_RES]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[JOURNAL] ADD  CONSTRAINT [DF_JOURNAL_J_RES]  DEFAULT ((0.0)) FOR [J_RES]
GO
/****** Object:  Default [DF_JOURNAL_J_TYPE]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[JOURNAL] ADD  CONSTRAINT [DF_JOURNAL_J_TYPE]  DEFAULT ((0)) FOR [J_TYPE]
GO
/****** Object:  ForeignKey [FK_CHECKS_CUSTOMERS]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[CHECKS]  WITH NOCHECK ADD  CONSTRAINT [FK_CHECKS_CUSTOMERS] FOREIGN KEY([C_ID])
REFERENCES [dbo].[CUSTOMERS] ([C_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[CHECKS] CHECK CONSTRAINT [FK_CHECKS_CUSTOMERS]
GO
/****** Object:  ForeignKey [FK_CHECKS_USERS]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[CHECKS]  WITH NOCHECK ADD  CONSTRAINT [FK_CHECKS_USERS] FOREIGN KEY([U_ID])
REFERENCES [dbo].[USERS] ([U_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[CHECKS] CHECK CONSTRAINT [FK_CHECKS_USERS]
GO
/****** Object:  ForeignKey [FK_CHECKS_Z_REPORTS]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[CHECKS]  WITH NOCHECK ADD  CONSTRAINT [FK_CHECKS_Z_REPORTS] FOREIGN KEY([Z_ID])
REFERENCES [dbo].[Z_REPORTS] ([Z_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[CHECKS] CHECK CONSTRAINT [FK_CHECKS_Z_REPORTS]
GO
/****** Object:  ForeignKey [FK_RECEIPES_RCP_CATEGORIES]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[RECEIPES]  WITH NOCHECK ADD  CONSTRAINT [FK_RECEIPES_RCP_CATEGORIES] FOREIGN KEY([RCPC_CODE])
REFERENCES [dbo].[RCP_CATEGORIES] ([RCPC_CODE])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[RECEIPES] CHECK CONSTRAINT [FK_RECEIPES_RCP_CATEGORIES]
GO
/****** Object:  ForeignKey [FK_RECEIPES_RCP_SOURCES]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[RECEIPES]  WITH NOCHECK ADD  CONSTRAINT [FK_RECEIPES_RCP_SOURCES] FOREIGN KEY([RCPS_CODE])
REFERENCES [dbo].[RCP_SOURCES] ([RCPS_CODE])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[RECEIPES] CHECK CONSTRAINT [FK_RECEIPES_RCP_SOURCES]
GO
/****** Object:  ForeignKey [FK_USER_TERM_USERS]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[USER_TERM]  WITH NOCHECK ADD  CONSTRAINT [FK_USER_TERM_USERS] FOREIGN KEY([U_ID])
REFERENCES [dbo].[USERS] ([U_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[USER_TERM] CHECK CONSTRAINT [FK_USER_TERM_USERS]
GO
/****** Object:  ForeignKey [FK_PRODUCTS_MANUFACTURERS]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[PRODUCTS]  WITH NOCHECK ADD  CONSTRAINT [FK_PRODUCTS_MANUFACTURERS] FOREIGN KEY([M_ID])
REFERENCES [dbo].[MANUFACTURERS] ([M_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[PRODUCTS] CHECK CONSTRAINT [FK_PRODUCTS_MANUFACTURERS]
GO
/****** Object:  ForeignKey [FK_PRODUCTS_PROD_GROUPS]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[PRODUCTS]  WITH NOCHECK ADD  CONSTRAINT [FK_PRODUCTS_PROD_GROUPS] FOREIGN KEY([GR_ID])
REFERENCES [dbo].[PROD_GROUPS] ([GR_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[PRODUCTS] CHECK CONSTRAINT [FK_PRODUCTS_PROD_GROUPS]
GO
/****** Object:  ForeignKey [FK_Rate_Term_RATE]    Script Date: 01/17/2024 14:13:34 ******/
ALTER TABLE [dbo].[Rate_Term]  WITH CHECK ADD  CONSTRAINT [FK_Rate_Term_RATE] FOREIGN KEY([R_id])
REFERENCES [dbo].[RATE] ([R_ID])
GO
ALTER TABLE [dbo].[Rate_Term] CHECK CONSTRAINT [FK_Rate_Term_RATE]
GO
/****** Object:  ForeignKey [FK_ARTICLES_PRODUCTS]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[ARTICLES]  WITH NOCHECK ADD  CONSTRAINT [FK_ARTICLES_PRODUCTS] FOREIGN KEY([P_ID])
REFERENCES [dbo].[PRODUCTS] ([P_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[ARTICLES] CHECK CONSTRAINT [FK_ARTICLES_PRODUCTS]
GO
/****** Object:  ForeignKey [FK_CHECK_ITEMS_DELETED_ARTICLES]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[CHECK_ITEMS_DELETED]  WITH NOCHECK ADD  CONSTRAINT [FK_CHECK_ITEMS_DELETED_ARTICLES] FOREIGN KEY([A_ID])
REFERENCES [dbo].[ARTICLES] ([A_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[CHECK_ITEMS_DELETED] CHECK CONSTRAINT [FK_CHECK_ITEMS_DELETED_ARTICLES]
GO
/****** Object:  ForeignKey [FK_CHECK_ITEMS_DELETED_CHECKS]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[CHECK_ITEMS_DELETED]  WITH NOCHECK ADD  CONSTRAINT [FK_CHECK_ITEMS_DELETED_CHECKS] FOREIGN KEY([H_ID])
REFERENCES [dbo].[CHECKS] ([H_ID])
ON DELETE CASCADE
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[CHECK_ITEMS_DELETED] CHECK CONSTRAINT [FK_CHECK_ITEMS_DELETED_CHECKS]
GO
/****** Object:  ForeignKey [FK_CHECK_ITEMS_ARTICLES]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[CHECK_ITEMS]  WITH NOCHECK ADD  CONSTRAINT [FK_CHECK_ITEMS_ARTICLES] FOREIGN KEY([A_ID])
REFERENCES [dbo].[ARTICLES] ([A_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[CHECK_ITEMS] CHECK CONSTRAINT [FK_CHECK_ITEMS_ARTICLES]
GO
/****** Object:  ForeignKey [FK_CHECK_ITEMS_CHECKS]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[CHECK_ITEMS]  WITH NOCHECK ADD  CONSTRAINT [FK_CHECK_ITEMS_CHECKS] FOREIGN KEY([H_ID])
REFERENCES [dbo].[CHECKS] ([H_ID])
ON DELETE CASCADE
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[CHECK_ITEMS] CHECK CONSTRAINT [FK_CHECK_ITEMS_CHECKS]
GO
/****** Object:  ForeignKey [FK_POS_ARTICLES_ARTICLES]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[POS_ARTICLES]  WITH NOCHECK ADD  CONSTRAINT [FK_POS_ARTICLES_ARTICLES] FOREIGN KEY([A_ID])
REFERENCES [dbo].[ARTICLES] ([A_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[POS_ARTICLES] CHECK CONSTRAINT [FK_POS_ARTICLES_ARTICLES]
GO
/****** Object:  ForeignKey [FK_EXCHECK_ITEMS_ARTICLES]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[EXCHECK_ITEMS]  WITH CHECK ADD  CONSTRAINT [FK_EXCHECK_ITEMS_ARTICLES] FOREIGN KEY([A_ID])
REFERENCES [dbo].[ARTICLES] ([A_ID])
GO
ALTER TABLE [dbo].[EXCHECK_ITEMS] CHECK CONSTRAINT [FK_EXCHECK_ITEMS_ARTICLES]
GO
/****** Object:  ForeignKey [FK_EXCHECK_ITEMS_EXCHECKS]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[EXCHECK_ITEMS]  WITH CHECK ADD  CONSTRAINT [FK_EXCHECK_ITEMS_EXCHECKS] FOREIGN KEY([H_ID])
REFERENCES [dbo].[EXCHECKS] ([H_ID])
GO
ALTER TABLE [dbo].[EXCHECK_ITEMS] CHECK CONSTRAINT [FK_EXCHECK_ITEMS_EXCHECKS]
GO
/****** Object:  ForeignKey [FK_EXCHECK_ITEMS_PRODUCTS]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[EXCHECK_ITEMS]  WITH CHECK ADD  CONSTRAINT [FK_EXCHECK_ITEMS_PRODUCTS] FOREIGN KEY([P_ID])
REFERENCES [dbo].[PRODUCTS] ([P_ID])
GO
ALTER TABLE [dbo].[EXCHECK_ITEMS] CHECK CONSTRAINT [FK_EXCHECK_ITEMS_PRODUCTS]
GO
/****** Object:  ForeignKey [FK_INVENT_ROWS_ARTICLES]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[INVENT_ROWS]  WITH NOCHECK ADD  CONSTRAINT [FK_INVENT_ROWS_ARTICLES] FOREIGN KEY([A_ID])
REFERENCES [dbo].[ARTICLES] ([A_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[INVENT_ROWS] CHECK CONSTRAINT [FK_INVENT_ROWS_ARTICLES]
GO
/****** Object:  ForeignKey [FK_INVENT_ROWS_INVENTS]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[INVENT_ROWS]  WITH NOCHECK ADD  CONSTRAINT [FK_INVENT_ROWS_INVENTS] FOREIGN KEY([INV_ID])
REFERENCES [dbo].[INVENTS] ([INV_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[INVENT_ROWS] CHECK CONSTRAINT [FK_INVENT_ROWS_INVENTS]
GO
/****** Object:  ForeignKey [FK_JOURNAL_ARTICLES]    Script Date: 01/17/2024 14:13:35 ******/
ALTER TABLE [dbo].[JOURNAL]  WITH NOCHECK ADD  CONSTRAINT [FK_JOURNAL_ARTICLES] FOREIGN KEY([A_ID])
REFERENCES [dbo].[ARTICLES] ([A_ID])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[JOURNAL] CHECK CONSTRAINT [FK_JOURNAL_ARTICLES]
GO
