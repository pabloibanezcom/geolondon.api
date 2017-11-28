
DECLARE @Result VARCHAR(MAX);

SET @Result = (SELECT
 Name as 'name',
 JSON_QUERY( dbo.geometry2json( Polygon ) ) as [geometry]
 FROM [CitySocialMap].[dbo].[Location_Districts] as d
 FOR JSON PATH)

 execute spWriteStringToFile @Result, 'c:/pruebas/','districts.json'

 