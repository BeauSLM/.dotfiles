-- TODO:
-- reverse layout keybinding
-- make window floating or floating layout

import XMonad
import XMonad.Layout.Reflect
import XMonad.Util.EZConfig
import XMonad.Hooks.EwmhDesktops

import XMonad.Hooks.StatusBar
import XMonad.Hooks.ManageHelpers

import System.Exit

layouts = tiled ||| Full
    where
        tiled       = reflectHoriz $ Tall nmaster delta ratio
        nmaster     = 1
        ratio       = 1/2
        delta       = 3/100

myManageHook :: ManageHook
myManageHook = composeAll
    [ className =? "Gimp"             --> doFloat
    , className =? "chaos_insurgency" --> doFloat
    , className =? "CPSC 453"         --> doFloat
    , className =? "zoom"             --> doFloat
    , className =? "Mach core"        --> doFloat
    , className =? "megachess"        --> doFloat
    , isDialog                        --> doFloat
    ]

main :: IO ()
main = xmonad
    . ewmhFullscreen
    . ewmh
    . withEasySB (statusBarProp "xmobar ~/.config/xmobar/xmobarrc" (pure def)) defToggleStrutsKey -- TODO: fix bar key lul
    $ def
    { modMask = mod4Mask
    , terminal = "kitty" -- TODO: set from $TERMINAL
    , layoutHook = layouts
    , manageHook = myManageHook
    }
    `removeKeysP`
    [ "M-S-c"
    , "M-q"
    , "M-space"
    ]
    `additionalKeysP`
    [ ("M-S-r", spawn "if type xmonad; then xmonad --recompile && xmonad --restart; else xmessage xmonad not in \\$PATH: \"$PATH\"; fi")
    , ("M-S-q", io exitSuccess)
    , ("M-f", sendMessage NextLayout)
    , ("M-q", kill)
    ]

