//Load Test CSV
LOAD CSV WITH HEADERS FROM 'file:///performance_table.csv' AS line
CREATE (
    :test {
        id: line._id,
        id_model: line.model_id,
        id_test_data: line.test_data,
        task_category: line.`task.task_category`,
        MAE_500: line.`task.500-MAE`,
        RMSE_500: line.`task.500-RMSE`,
        MAE_300: line.`task.300-MAE`,
        RMSE_300: line.`task.300-RMSE`,
        MAE_150: line.`task.150-MAE`,
        RMSE_150: line.`task.150-RMSE`,
        inference_time: line.`task.Inference_Time`,
        epoch_to_quality: line.`task.epoch_to_quality`
})