function _init()
    init_menu()
    init_monsters()
    init_health()
    init_action()
    init_player()
    init_monsters_health()
    init_monsters_action()
end

function _update()
    update_menu()
    update_monsters()
    update_health()
    update_action()
    update_player()
    update_monsters_health()
    update_monsters_action()
end

function _draw()
    cls()
    draw_menu()
    draw_monsters()
    draw_health()
    draw_action()
    draw_player()
    draw_monsters_health()
    draw_monsters_action()
end

-- battle menu
function init_menu()
    your_turn = false
    monster_turn = false
    actions = {"attack", "defend", "item", "run"}
    menusel = 1
end

function update_menu()
    if btnp(3) then
        if menusel < #actions then
            menusel += 1
        else
            menusel = 1
        end
    elseif btnp(2) then
        if menusel > 1 then
            menusel -= 1
        else
            menusel = #actions
        end
    end
end

function draw_menu()

    rectfill(0, 90, 127, 127, 6)
    rectfill(2, 92, 125, 125, 1)
    
    if your_turn then
        rectfill(5, 88 + 7 * menusel, 29, 94 + 7 * menusel, 5)
        for i = 1, #actions do
            print(actions[i], 6, 89+7*i, 7)
        end
    end

    
end

-- monsters
function init_monsters()
    monster_y_offset = 0
end

function update_monsters()
end

function draw_monsters()
    spr(129, 55, 20 + monster_y_offset, 4, 4)
end

-- monsters hp
function init_monsters_health()
end

function update_monsters_health()
end

function draw_monsters_health()
    rect(51, 9, 74, 13, 6)
    rectfill(52, 10, 73, 12, 8)
end

-- monsters action bar
function init_monsters_action()
    monster_action = 0
end

function monster_animation()
    for i=1,10 do
        monster_y_offset += 4
        yield()
    end
end

function update_monsters_action()
    if not monster_turn then
        monster_action += 1
        monster_bar_width = 46 + 36 * monster_action / 100
        if monster_bar_width >= 67 then
            monster_turn = true
            monster_bar_width = 67
            monster_co = cocreate(monster_animation)
        end
    else
        if costatus(monster_co) != "dead" then
            coresume(monster_co)
        else
            monster_turn = false
            monster_y_offset = 0
            monster_action = 0
        end
    end
end

function draw_monsters_action()
    rect(51, 13, 74, 17, 6)
    rectfill(52, 14, 6 + monster_bar_width, 16, 10)
end

-- player
function init_player()
end

function update_player()
end

function draw_player()
    spr(64, 44, 54, 4, 4)
end

-- hp
function init_health()
end

function update_health()
end

function draw_health()
    rect(43, 100, 83, 106, 6)
    rectfill(44, 101, 82, 105, 8)
end

-- action bar
function init_action()
    action = 0
end

function update_action()
    if not your_turn then
        action += 1
        bar_width = 40 + 36 * action / 100
        if bar_width >= 76 then
            your_turn = true
            bar_width = 76
        end
    end
end

function draw_action()
    rect(43, 108, 83, 114, 6)
    rectfill(44, 109, 6 + bar_width, 113, 10)
end