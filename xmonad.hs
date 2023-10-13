import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab
import XMonad.Hooks.EwmhDesktops

main :: IO ()
main = xmonad $ ewmhFullscreen $ ewmh myConfig

myConfig = def
    {
        modMask = mod4Mask  -- Mod = Window / SuperKey
    }
    `additionalKeysP`
    [
        ("M-S-z", spawn "xscreensaver-command -lock")
    ]

