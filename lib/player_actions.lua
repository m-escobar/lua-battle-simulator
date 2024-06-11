local player_actions = {}

    player_actions.sword_attack = {
        id = 'sword_attack',
        description = 'Sword Attack',
        requirement = {
            name = 'sword'
        },
        execute = function(player, opponent)
            local player_attack = player.attack / opponent.power
            local opponent_defense = opponent.defense / player.power

            if player_attack > opponent_defense then
            	opponent.health = opponent.health - 1
            else
                player.health = player.health - 1
            end
        end
    }

    player_actions.drink_potion = {
        id = 'drink_potion',
        description = 'Drink a magic potion',
        requirement = {
            name = 'potion'
        },
        execute = function(player, _)
            player.health = 10
            player.items.potion = player.items.potion - 1
        end
    }

    player_actions.dodge = {
        id = 'dodge',
        description = 'Dodge from oponent attack',
        requirement = nil,
        execute = function(_, _)
        end
    }

    player_actions.fire_attack = {
        id = 'fire_attack',
        description = 'Throw a fire attack',
        requirement = nil,
        execute = function(player, opponent)
            local player_attack = player.attack / opponent.power
            local opponent_defense = opponent.defense / player.power

            if player_attack > opponent_defense then
            	opponent.health = opponent.health - 3
            else
                player.health = player.health - 1
            end
        end
    }

    player_actions.tail_hit = {
        id = 'tail_hit',
        description = 'Hit your opponent with the tail',
        requirement = nil,
        execute = function(player, opponent)
            local player_attack = player.attack / opponent.power
            local opponent_defense = opponent.defense / player.power

            if player_attack > opponent_defense then
            	opponent.health = opponent.health - 2
            else
                player.health = player.health - 1
            end
        end
    }


    player_actions.foot_hit = {
        id = 'foot_hit',
        description = 'Smash that small ant!',
        requirement = nil,
        execute = function(player, opponent)
            local player_attack = player.attack / opponent.power
            local opponent_defense = opponent.defense / player.power

            if player_attack > opponent_defense then
            	opponent.health = opponent.health - 2
            	opponent.sword = opponent.items.sword - 1
            else
                player.health = player.health - 1
            end
        end
    }

    player_actions.hand_hit = {
            id = 'hand_hit',
            description = 'Puch him!',
            requirement = nil,
        execute = function(player, opponent)
            local player_attack = player.attack / opponent.power
            local opponent_defense = opponent.defense / player.power

            if player_attack > opponent_defense then
            	opponent.health = opponent.health - 1
            	opponent.sword = opponent.potion - 1
            else
                player.health = player.health - 1
            end
        end
    }

return player_actions
