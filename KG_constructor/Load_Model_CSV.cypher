//Load Model CSV
LOAD CSV WITH HEADERS FROM 'file:///model_table.csv' AS line
CREATE (:model {
    id: line._id, 
    model_path: line.model_loc, 
    libs: line.applied_libs, 
    batch_size: toInteger(line.batch_size),
    epoch_number: toInteger(line.epoch_number),
    learning_rate: toFloat(line.learning_rate),
    model_type: line.model_type,
    training_data: split(replace(replace(replace(replace(line.training_data, '{"$oid":"', ''), '"}', ''), '"[', '' ), ']"', ''), ','),
    training_time: toFloat(line.training_time) })