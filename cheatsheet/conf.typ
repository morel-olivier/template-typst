#let conf(
	fontSize: 11pt,
	title: "Titre",
	numColumnns: 4,
	color: true,
	doc
) = {
	set document(
		title: title,
		)

	set text(
		font: "FreeSans",
		size: fontSize,
		lang: "fr",
		region: "CH",
	)

	set page(
		paper: "a4",
		flipped: true,
		margin: 0.75cm,
	)

	set par(
		justify: true,

	)

	set heading(
		numbering: none,
	)

	show heading.where(level: 1): it =>[
		#let tmpcolor = black
		#if color {
			tmpcolor = blue
		}
		#set text(size: 1.1em, fill: tmpcolor)
		
		#it
	]

	show heading.where(level: 2): it =>[
		#let tmpcolor = black
		#if color {
			tmpcolor = aqua
		}

		#set text(size: 1.05em, fill: tmpcolor)

		#it
	]

	show heading.where(level: 3): it =>[
		#let tmpcolor = black
		#if color {
			tmpcolor = eastern
		}

		#set text(size: 1em, fill: tmpcolor)

		#it
	]

	let diplayTitle() = [
		#align(center, text(1.5em)[
		#smallcaps[*#title*]
		])
	]

	diplayTitle()

	columns(numColumnns)[
	#doc
	]
}