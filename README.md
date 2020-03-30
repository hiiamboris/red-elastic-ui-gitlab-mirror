# Red Elastic UI

Provides automatic window resize handling for [Red Language](https://www.red-lang.org/)

![Illustration GIF](https://i.gyazo.com/51e60f50da56e5fae5db47ac8a025ffa.gif)

Simple starter example:
```
Red [needs: view]
#include %elasticity.red
view/flags elastic [
	area "Hello tensile world!" #fill
	button "OK" [quit] #fix
] 'resize
```

Anchors meaning:
- `#ignore = #ignore-x #ignore-y` (default if no anchor provided) - ignored by the geometry manager (fixed size & offset)
- `#fix    = #fix-x    #fix-y` - size is fixed, offset is scaled proportionally to window size 
- `#scale  = #scale-x  #scale-y` - both size and offset are scaled proportionally to window size 
- `#fill   = #fill-x   #fill-y` - same as `#scale` but fills the available space and avoids collision (with fixed faces)

Tip: anchors should come after style name (e.g. `base`) and before the other style name to be properly assigned.

Another tip: it remembers the *initial* layout of your window and tries to conform with it (and thus infers a lot of parameters indirectly, from VID).
