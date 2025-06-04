--
module GWind.Project.Mutator (projectId, projectName)
where

    import GWind.Common.Mutator (donut, kebab)
    import GWind.Project.Domain (ProjectSnake, ProjectId, ProjectName)

--
    projectId :: ProjectSnake -> ProjectId
    projectId projectSnake =
        (kebab projectSnake)

--
    projectName :: ProjectSnake -> ProjectName
    projectName projectSnake =
        (donut projectSnake)

--
