# My custom keyboard layouts

## US / SE
US-keyboard layout with swe-keys added (åäö) added to the regular places.

_On Ubuntu 19.10 (and later?) there ia now a us-variant added by default. That uses right alt for åäö. I want it as default, with original keys accessible by pressing right-alt._


`sudo gedit /usr/share/X11/xkb/symbols/se`

### Change this
```
partial alphanumeric_keys
xkb_symbols "us" {
    include "us"

    name[Group1]="Swedish (US, with Swedish letters)";

    key <AC10> { [ NoSymbol, NoSymbol, odiaeresis, Odiaeresis ] };
    key <AC11> { [ NoSymbol, NoSymbol, adiaeresis, Adiaeresis ] };
    key <AD11> { [ NoSymbol, NoSymbol, aring, Aring ] };

    include "level3(ralt_switch)"
};
```

### To this
```
partial alphanumeric_keys
xkb_symbols "us" {
    include "us"

    name[Group1]="Swedish (US, with Swedish letters)";

    key <AC10> { [ odiaeresis, Odiaeresis, semicolon, colon ] };
    key <AC11> { [ adiaeresis, Adiaeresis, apostrophe, quotedbl ] };
    key <AD11> { [ aring, Aring, bracketleft, braceleft ] };

    include "level3(ralt_switch)"
};
```


## US / shift-for-numbers
US-keyboard layout with number row accessible by pressing shift and symbols active by default (i.e. reverse shift behaviour for numbers) (for programming).

Added swe-keys on right alt, as a bonus...


`sudo gedit  /usr/share/X11/xkb/symbols/us`

### Add this to the end on the file

```
partial alphanumeric_keys
xkb_symbols "shift-for-numbers" {

  include "us"
  name[Group1]= "Shift for numbers in numbers row, defaults to symbols";

    key <AE01> { [   exclam,      1   ] };
    key <AE02> { [   at,          2  ] };
    key <AE03> { [   numbersign,  3 ] };
    key <AE04> { [   dollar,      4  ] };
    key <AE05> { [   percent,     5  ] };
    key <AE06> { [   asciicircum, 6 ] };
    key <AE07> { [   ampersand,   7 ] };
    key <AE08> { [   asterisk,    8 ] };
    key <AE09> { [   parenleft,   9 ] };
    key <AE10> { [   parenright,  0 ] };

    key <AC10> { [ NoSymbol, NoSymbol, odiaeresis, Odiaeresis ] };
    key <AC11> { [ NoSymbol, NoSymbol, adiaeresis, Adiaeresis ] };
    key <AD11> { [ NoSymbol, NoSymbol, aring, Aring ] };

    include "level3(ralt_switch)"
};
```
