local player_actions = {}

    player_actions.sword_attack = {
        id = 'sword_attack',
        description = 'Sword Attack',
        requirement = 1,
        execute = function()

        end
    }

    player_actions.drink_potion = {
        id = 'drink_potion',
        description = 'Drink a magic potion',
        requirement = nil
    }

    player_actions.dodge = {
        id = 'dodge',
        description = 'Dodge from oponent attack',
        requirement = nil
    }

return player_actions