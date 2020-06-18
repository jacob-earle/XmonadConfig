import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks(ToggleStruts(..),avoidStruts,docks,manageDocks)
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig
import System.IO

main = do
    xmproc <- spawnPipe "killall feh picom xmobar"
    xmproc <- spawnPipe "sleep 0.3 && xmobar"
    xmproc <- spawnPipe "sleep 0.3 && feh --bg-fill $HOME/image.jpg"
    xmproc <- spawnPipe "sleep 0.3 && picom -b"
    xmonad $ docks defaultConfig {
    terminal	= "alacritty"
    , modMask	= mod1Mask
    }
