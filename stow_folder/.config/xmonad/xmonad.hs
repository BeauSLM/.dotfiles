-- TODO:
-- reverse layout: main monitor by default and keybinds
-- make window floating or floating layout
-- make bar work

import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab
import XMonad.Layout.Reflect

import XMonad.Hooks.EwmhDesktops

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

main :: IO ()
main = xmonad $ ewmhFullscreen $ ewmh $ xmobarProp $ def
    { modMask = mod4Mask
    , terminal = "alacritty"
    }


