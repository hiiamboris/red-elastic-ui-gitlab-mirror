Red [
	title:   "Elastic UI provider TEST"
	author:   @hiiamboris
	license:  BSD-3
	needs:    view
]

#include %elasticity.red

layout*: collect [
	keep [backdrop white]
	loop 5 [
		loop 5 [
			keep reduce [
				'base  40x40 + random 80x80  c: random white  white - c + 50
				ankx: random/only [#ignore-x #fix-x #fill-x #scale-x]
				anky: random/only [#ignore-y #fix-y #fill-y #scale-y]
				form reduce [ankx anky]
			]
		]
		keep 'return
	]
]

view/flags elastic layout* 'resize

