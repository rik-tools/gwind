-- ⚠
module GWind.ServiceAccount.Domain (ServiceSnake, ServiceAccountId, ServiceAccountDisplayName, ServiceAccountEmail)
where

    import GWind.Common.Domain (Snake, Kebab, Donut)

    type ServiceSnake = Snake
    type ServiceAccountId = Kebab
    type ServiceAccountDisplayName = Donut
    type ServiceAccountEmail = String

--
