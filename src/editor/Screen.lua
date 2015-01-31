--------------------------------------------------------------------------------
---
--------------------------------------------------------------------------------

local Screen = {}

--------------------------------------------------------------------------------

function Screen:reset()
    if(app.screen.level) then
        app.screen.removeDrag()
        display.remove(app.screen.level)
    end
end

function Screen:prepare()

    app.screen   = display.newGroup()
    app.screen.x = ITEMS_WIDTH
    app.screen.y = TOOLBAR_HEIGHT

    --------------------------------------

    app.screenBounds = display.newRect(
        app.screen,
        0, 0,
        SCREEN_WIDTH,
        SCREEN_HEIGHT
    )

    app.screenBounds.anchorX = 0
    app.screenBounds.anchorY = 0
    app.screenBounds:setFillColor( 0.12 )

    --------------------------------------

    levelBuilder:reset()
end

function Screen:touching()
    touchController:addTap(app.screen, function(event)
        levelBuilder:dropItem(event)
    end)

    touchController:addDrag(app.screen, app.screen.level)
end

function Screen:center()
    Tools.drawCenter()
    Tools.centerLevel()
end

--------------------------------------------------------------------------------

return Screen
