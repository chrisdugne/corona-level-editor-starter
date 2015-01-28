--------------------------------------------------------------------------------
--
-- main.lua
--
--------------------------------------------------------------------------------
--- Corona's libraries
json                = require 'json'
storyboard          = require 'storyboard'

---- Additional libs

CBE                 = require 'CBEffects.Library'
_                   = require 'src.libs.Underscore'
utils               = require 'src.libs.Utils'

--------------------------------------------------------------------------------
---- App packages

App                 = require 'src.App'
Screen              = require 'src.editor.Screen'
Menu                = require 'src.editor.Menu'
Toolbar             = require 'src.editor.Toolbar'
Tools               = require 'src.editor.Tools'
effectsManager      = require 'src.game.engine.EffectsManager'
touchController     = require 'src.game.engine.TouchController'

--------------------------------------------------------------------------------

app = App:new()
app:start()
