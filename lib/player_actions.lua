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

    player_actions.fire_attack = {
        id = 'fire_attack',
        description = 'Throw a fire attack',
        requirement = nil
    }

    player_actions.tail_hit = {
        id = 'tail_hit',
        description = 'Hit your opponent with the tail',
        requirement = nil
    }


    player_actions.foot_hit = {
        id = 'foot_hit',
        description = 'Smash that small ant!',
        requirement = nil
    }

    player_actions.hand_hit = {
            id = 'hand_hit',
            description = 'Puch him!',
            requirement = nil
    }

return player_actions
