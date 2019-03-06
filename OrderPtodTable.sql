USE [ProductOrder]
GO

INSERT INTO [dbo].[Order_Product]
           ([Ord_ID]
           ,[Prod_ID]
           ,[Ord_Qty]
           ,[Prod_Unit_Price])
     VALUES
          ('O10','P01',34, 100),
('O01','P04',54, 6757),
('O09','P03',21, 675),
('O05','P02',9,98),
('O03','P05',5,56),
('O02','P08',6,24),
('O07','P07',2, 23),
('O05','P06',67, 434),
('O02','P04',23, 34)

GO


