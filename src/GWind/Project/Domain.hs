-- ⚠
module GWind.Project.Domain (ProjectSnake, ProjectId, ProjectName, LifecycleState)
where

    import GWind.Common.Domain (Snake, Kebab, Donut)

    type ProjectSnake = Snake
    type ProjectId = Kebab
    type ProjectName = Donut
    type LifecycleState = Snake

--
