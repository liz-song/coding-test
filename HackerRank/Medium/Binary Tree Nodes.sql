SELECT 
    A.N,
    CASE 
        WHEN A.P IS NULL THEN 'Root' 
        WHEN NOT EXISTS (SELECT 1 FROM BST B WHERE B.P = A.N) THEN 'Leaf'
        ELSE 'Inner'
    END AS NodeType
FROM 
    BST A
ORDER BY 
    A.N;
