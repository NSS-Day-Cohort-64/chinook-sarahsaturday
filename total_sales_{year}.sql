SELECT
    SUBSTR(InvoiceDate, 1, 4) AS InvoiceYear,
    SUM(Total) AS TotalSales
FROM
    invoice
GROUP BY
    InvoiceYear
HAVING
    InvoiceYear IN ('2009', '2011');
