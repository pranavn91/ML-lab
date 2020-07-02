
SELECT a.txhash AS Sender, b.Receiver AS Receiver, b.BTC as BTC
FROM asymmetric-glow-274808.mydataset.Txid2020prop As a 
LEFT JOIN asymmetric-glow-274808.mydataset.Txgraphdata2020 As b
ON a.txhash = b.Sender

SELECT b.Sender AS Sender, a.txhash AS Receiver, b.BTC as BTC
FROM asymmetric-glow-274808.mydataset.Txid2020prop As a 
LEFT JOIN asymmetric-glow-274808.mydataset.Txgraphdata2020 As b
ON a.txhash = b.Receiver


DELETE FROM asymmetric-glow-274808.mydataset.Tx2020final WHERE Sender IS NULL OR Receiver IS NULL