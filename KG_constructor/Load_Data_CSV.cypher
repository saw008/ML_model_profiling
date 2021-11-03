//Load Data CSV
LOAD CSV WITH HEADERS FROM 'file:///data_table.csv' AS line
CREATE (:data {
    id: line._id,
    measurement: line.measurement,
    path: line.data_path,
    pat_std: toFloat(line.`pattern.std`),
    pat_max: toFloat(line.`pattern.max`),
    pat_min: toFloat(line.`pattern.min`),
    pat_avg: toFloat(line.`pattern.avg`),
    pat_count: toInteger(line.`pattern.no_of_samples`)
})