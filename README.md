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