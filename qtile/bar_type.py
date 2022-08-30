from libqtile import widget
from libqtile.lazy import lazy
from colors import color


bar_one = [
    widget.TextBox(
        text=' \uF303 ',
        background=color['ac'],
        foreground=color['dark_bg'],
        padding=0,
        fontsize=28,
        mouse_callbacks = {'Button1': lazy.spawn("rofi -show run")},
    ),
    widget.TextBox(
        text='\uE0BC ',
        background=color['dark_bg'],
        foreground=color['ac'],
        padding=0,
        fontsize=35,
    ),
    widget.GroupBox(
        background=color['dark_bg'],
        disable_drag=True,
        highlight_method='line',
        urgent_alert_method='text',
        highlight_color=color['dark_bg'],
        this_current_screen_border=color['fg'],
        this_screen_border=color['fg'],
        other_current_screen_border=color['fg'],
        other_screen_border=color['fg'],
        active=color['fg'],
        inactive=color['dark_fg'],
        urgent_text=color['fg'],
        use_mouse_wheel=False,
    ),
    widget.TextBox(
        text='\uE0BA ',
        background=color['dark_bg'],
        foreground=color['ac'],
        padding=0,
        fontsize=36,
    ),
    widget.CurrentLayout(
        fmt='{}',
        foreground=color['dark_bg'],
        background=color['ac'],
    ),
    widget.TextBox(
        text='\uE0BC ',
        background=color['black'],
        foreground=color['ac'],
        padding=0,
        fontsize=35,
    ),
    widget.WindowName(
        background=color['black'],
        foreground=color['fg'],
        max_chars=26,
        fmt=' {}',
        format='{name}',
    ),
    #widget.Spacer(),
    widget.Systray(
        icon_size=30,
    ),
    widget.TextBox(
        text='\uE0BA ',
        background=color['black'],
        foreground=color['dark_bg'],
        padding=0,
        fontsize=36,
    ),
    widget.Wlan(
        foreground=color['fg'],
        background=color['dark_bg'],
        format='  {essid} ',
        update_interval=3,
        mouse_callbacks = {'Button1': lazy.spawn("kitty -e nmtui")},
    ),
    widget.TextBox(
        text='\uE0BA ',
        background=color['dark_bg'],
        foreground=color['bg'],
        padding=0,
        fontsize=36,
    ),
    widget.Battery(
        format='   {percent:2.0%} ',
        foreground=color['fg'],
        background=color['bg'],
        update_interval=120,
    ),
    widget.TextBox(
        text='\uE0BA ',
        background=color['bg'],
        foreground=color['ac'],
        padding=0,
        fontsize=36,
    ),
    widget.Clock(
        format="  %I:%M %p ",
        background=color['ac'],
        foreground=color['dark_bg'],
        mouse_callbacks = {'Button1': lazy.spawn("kitty -e calcurse")},
    ),
]

bar_two = [
    widget.TextBox(
        text=' ',
        padding=0.1,
    ),
    widget.GroupBox(
        background=color['black'],
        disable_drag=True,
        highlight_method='line',
        urgent_alert_method='text',
        highlight_color=color['black'],
        this_current_screen_border=color['ac'],
        this_screen_border=color['ac'],
        other_current_screen_border=color['ac'],
        other_screen_border=color['ac'],
        active=color['ac'],
        inactive=color['dark_fg'],
        urgent_text=color['fg'],
        use_mouse_wheel=False,
    ),
    widget.Prompt(
        prompt='cmd: ',
        fmt='{}',
        foreground=color['dark_fg'],
        cursor_color=color['dark_fg'],
    ),
    widget.Spacer(),
    widget.Clock(
        format="%d %a, %I:%M %p ",
        background=color['black'],
        foreground=color['fg'],
        mouse_callbacks = {'Button1': lazy.spawn("alacritty -e calcurse")},
    ),
    widget.Spacer(),
    widget.Systray(
        icon_size=30,
    ),
    widget.Wlan(
        foreground=color['ac'],
        background=color['black'],
        format='   {essid} ',
        update_interval=3,
    ),
    widget.Battery(
        format='  {percent:2.0%} ',
        foreground=color['ac'],
        background=color['black'],
        update_interval=120,
    ),
]
