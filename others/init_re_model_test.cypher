//init_re_model & test
MATCH (t:test), (m:model)
WHERE t.id_model = m.id
CREATE (t) -[:used]-> (m)