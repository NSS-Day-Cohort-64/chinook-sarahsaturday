SELECT
    SUBSTR(InvoiceDate, 1, 4) AS InvoiceYear,
    COUNT(*) AS InvoiceCount
FROM 
    Invoice
WHERE
    SUBSTR(InvoiceDate, 1, 4) IN ('2009', '2011')
GROUP BY
    InvoiceYear