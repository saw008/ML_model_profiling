//init_re_test & test_data
MATCH (t:test), (d:data)
WHERE t.id_test_data = d.id
CREATE (t) -[:test_with]-> (d)