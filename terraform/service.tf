resource "aws_ecs_service" "service" {
  name            = "Nodejs-service"
  cluster         = aws_ecs_cluster.cluster.id
  task_definition = aws_ecs_task_definition.task.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = ["subnet-05ec84850a0215bfc","subnet-07973354c31c3544d"]
    assign_public_ip = true
  }
}
