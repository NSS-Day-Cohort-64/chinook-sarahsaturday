SELECT
    i.InvoiceId,
    COUNT(il.InvoiceLineId) AS TotalLineItems
FROM
    Invoice i
LEFT JOIN
    InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY
    i.InvoiceId
ORDER BY
    i.InvoiceId;
