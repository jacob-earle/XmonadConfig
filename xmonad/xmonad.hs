import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks(ToggleStruts(..),avoidStruts,docks,manageDocks)
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig
import System.IO

main = do
    spawn "killall feh picom"
    xmproc <- spawnPipe "xmobar"
    spawn "sleep 0.3 && feh --bg-fill $HOME/image.jpg"
    spawn "sleep 0.3 && picom -b"
    xmonad $ docks defaultConfig {
    terminal	= "alacritty"
    , modMask	= mod1Mask
    , manageHook= manageDocks <+> manageHook defaultConfig
    , layoutHook = avoidStruts $ layoutHook defaultConfig
    , logHook = dynamicLogWithPP xmobarPP
                    { ppOutput = hPutStrLn xmproc
                    , ppTitle = xmobarColor "blue" "" . shorten 50
                    }
    }
