 rule = {
  matches = {
    {
      { "node.name", "equals", "alsa_output.usb-Focusrite_Scarlett_2i2_USB_Y8BCBFB0B5F6B0-00.analog-stereo" },
      { "media.class", "equals", "Audio/Sink" },
    },
  },
  apply_properties = {
    ["priority.session"] = "100",
    ["priority.driver"] = "100",
  },
}

table.insert(alsa_monitor.rules,rule)
