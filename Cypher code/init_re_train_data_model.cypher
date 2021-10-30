//init_re_train_data & model
MATCH (d:data), (m:model)
WHERE d.id IN m.training_data
CREATE (d)<-[:trained_with]-(m)