/*******************************************************************************
* This template is based on the template of Pascal Huber : typst-letter-template
* available on GitHub :
* https://github.com/pascal-huber/typst-letter-template/tree/master
*******************************************************************************/

#import "lttr.typ": *
#show: lttr_init.with(
	debug: false,
	format: "C5-WINDOW-RIGHT",
	title: "Ceci est le sujet de la lettre",
	opening: "Madame, Monsieur,",
	closing: "Meilleures salutations",
	signature: [Pierre Bolomey
				#image("mbernasconi.svg", width: 4cm)],
	date_place: (
		date: "le 21 novembre 2023",
		place: "Pont-le-Vieux",
	),
	receiver: (
		"Michel test",
		"Rue du four 4",
		"1234 perpet les oies",
	),
	sender: ([
		Olivier Morel\
		Chemin des blés 8\
		1234 Pont-le-Vieux
	]),
)

#show: lttr_preamble

#lorem(100)

#lorem(100)

#lorem(100)

#show: lttr_closing