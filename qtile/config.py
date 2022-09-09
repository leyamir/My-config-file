from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile import hook
from libqtile.utils import guess_terminal
from colors import color
import os
import subprocess
import bar_type


@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.run([home])


mod = "mod4"
terminal = guess_terminal()

keys = [
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),

    Key([mod, "shift"], "h", lazy.layout.swap_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.swap_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    Key([mod], "b", lazy.layout.grow(), desc="Increase size of window"),
    Key([mod], "s", lazy.layout.shrink(), desc="Decrease size of window"),
    Key([mod], "f", lazy.window.toggle_floating(), desc="Toggle floating",),

    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),

    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),

    Key([], "XF86AudioRaiseVolume", lazy.spawn("amixer sset Master 5%+"), desc='Volume up'),
    Key([], "XF86AudioLowerVolume", lazy.spawn("amixer sset Master 5%-"), desc='Volume down'),
    Key([], "XF86AudioMute", lazy.spawn("amixer sset Master toggle"), desc='Toggle volume'),
    Key([], "XF86AudioMicMute", lazy.spawn("amixer sset Capture toggle"), desc='Toggle volume'),
    Key([], "XF86MonBrightnessUp", lazy.spawn("light -A 5"), desc='Backlight up'),
    Key([], "XF86MonBrightnessDown", lazy.spawn("light -U 5"), desc='Backlight down'),
    Key([], "Print", lazy.spawn("xfce4-screenshooter -f"), desc='Screenshot'),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
]
groups = [Group(i) for i in "1234"]
for i in groups:
    keys.extend(
        [
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
        ]
    )

mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

layouts = [
    layout.MonadTall(
        border_focus=color['bd'],
        border_normal=color['bg'],
        border_width=1, 
        margin=8
    ),
    layout.MonadWide(
        border_focus=color['bd'],
        border_normal=color['bg'],
        border_width=1, 
        margin=8
    ),
]

widget_defaults = dict(
    font="JetBrains Mono Nerd Font",
    fontsize=22,
    padding=10,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(top=bar.Bar(bar_type.bar_two, 48,)),
]

dgroups_key_binder = None
dgroups_app_rules = []  
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    border_focus=color['bd'],
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(wm_class="tk"),  # tk application in python
        Match(wm_class="python3.10"),  # kivy application in python
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
        Match(title="steam"), # steam
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = False
wl_input_rules = None
wmname = "Qtile"



