SELECT
    BillingCountry AS TopSpendingCountry,
    MAX(TotalSpending) AS TotalSpent
FROM (
    SELECT
        BillingCountry,
        SUM(Total) AS TotalSpending
    FROM
        Invoice
    GROUP BY
        BillingCountry
) Subquery
