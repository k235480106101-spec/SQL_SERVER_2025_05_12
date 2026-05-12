CREATE TABLE ContractAssets (
    ContractAssetID INT PRIMARY KEY IDENTITY(1,1),

    ContractID INT,

    AssetID INT,

    FOREIGN KEY (ContractID)
        REFERENCES Contracts(ContractID),

    FOREIGN KEY (AssetID)
        REFERENCES Assets(AssetID)
);