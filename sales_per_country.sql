SELECT
    BillingCountry AS Country,
    SUM(Total) AS TotalSalesByAmount
FROM
    Invoice
GROUP BY
    BillingCountry
ORDER BY
    TotalSalesByAmount DESC;

    SELECT
    BillingCountry AS Country,
    COUNT(InvoiceId) AS TotalNumberOfSales
FROM
    Invoice
GROUP BY
    BillingCountry
ORDER BY
    TotalNumberOfSales DESC;