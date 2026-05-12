CREATE TABLE Assets (
    AssetID INT PRIMARY KEY IDENTITY(1,1),

    AssetName NVARCHAR(100),

    AssetType NVARCHAR(50),

    EstimatedValue DECIMAL(18,2),

    AssetStatus NVARCHAR(50)
);