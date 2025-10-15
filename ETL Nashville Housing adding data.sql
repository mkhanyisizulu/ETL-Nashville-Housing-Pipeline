
-- ETL Nashville Housing adding data

Select *
From NashvilleHousing;

--------------------------------------------------------------

SELECT TOP 1000 *
INTO nashvillehousing_messy
FROM NashvilleHousing;

-- 1.Adding messy data

UPDATE nashvillehousing_messy
SET SalePrice = NULL
WHERE UniqueID  LIKE '%5%';

SELECT COUNT(*) AS NullSalePrices
FROM nashvillehousing_messy
WHERE SalePrice IS NULL;

--------------------------------------------------------------

-- 2. Adding duplicates

INSERT INTO nashvillehousing_messy
SELECT *
FROM nashvillehousing_messy
WHERE UniqueID LIKE '%5%';

SELECT UniqueID, COUNT(*) AS count
FROM nashvillehousing_messy
GROUP BY UniqueID
HAVING COUNT(*) > 1;

--------------------------------------------------------------

-- 3. Combine columns 

SELECT *, CONCAT(uniqueid,',', parcelid) AS Unique_Parcel_ID
FROM nashvillehousing_messy;


ALTER TABLE nashvillehousing_messy
ADD Unique_Parcel_ID Nvarchar(255);

UPDATE nashvillehousing_messy
SET Unique_Parcel_ID = CONCAT(uniqueid,',' , parcelid);

--------------------------------------------------------------

-- 4. Dropping tables

ALTER TABLE nashvillehousing_messy
DROP COLUMN uniqueid;

ALTER TABLE nashvillehousing_messy
DROP COLUMN parcelid;

--------------------------------------------------------------