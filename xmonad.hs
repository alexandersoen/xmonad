import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

main :: IO ()
main = xmonad
     . ewmhFullscreen
     . ewmh
     . withEasySB (statusBarProp "xmobar" (pure def)) defToggleStrutsKey
     $ myConfig

myConfig = def
    {
        modMask = mod4Mask  -- Mod = Window / SuperKey
    }
    `additionalKeysP`
    [
        ("M-S-z", spawn "xscreensaver-command -lock")
    ]

