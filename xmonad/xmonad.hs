import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig
import System.IO

main = do
    xmproc <- spawnPipe "killall feh picom"
    xmproc <- spawnPipe "sleep 0.3 && feh --bg-fill $HOME/image.jpg"
    xmproc <- spawnPipe "sleep 0.3 && picom -b"
    xmonad $ defaultConfig {
    terminal	= "alacritty"
    , modMask	= mod1Mask
    }
