import XMonad

main = do
    xmonad $ defaultConfig {
    terminal	= "alacritty"
    , modMask	= mod1Mask
    }
