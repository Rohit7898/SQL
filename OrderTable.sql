USE [ProductOrder]
GO

INSERT INTO [dbo].[Order]
           ([Ord_ID]
           ,[Emp_ID]
           ,[Cust_ID]
           ,[Ord_Date]
           ,[Ord_Ship_Date]
           ,[Ord_Status])
     VALUES
         ('O01','E01', 'C01', '2019-12-03 08:42:18','2018-06-02 23:24:56','Shipped'),
('O02','E02',  'C02', '2018-04-29 11:05:16','2019-04-18 08:32:49', 'Delivered'),
('O03', 'E03', 'C03', '2019-02-27 19:35:13','2019-10-30 04:57:52','proceesing'),
('O04', 'E04', 'C04', '2019-10-03 12:47:44','2020-01-27 10:14:23','returned'),
('O05', 'E05', 'C05', '2019-01-25 11:09:44','2019-10-07 04:16:40', 'cancelled'),
('O06', 'E06', 'C06', '2018-07-25 06:52:32','2018-03-06 20:45:14', 'Shipped'),
('O07', 'E02', 'C07', '2019-08-29 13:43:24','2018-11-20 18:56:03', 'Delivered'),
('O08', 'E07', 'C08', '2018-04-05 00:21:38','2018-05-27 17:58:08', 'proceesing'),
('O09', 'E08', 'C09', '2018-03-11 10:41:28','2019-07-06 11:15:01', 'returned'),
('O10', 'E08', 'C10', '2018-09-23 09:54:41','2019-06-10 07:08:14', 'cancelled')
GO


