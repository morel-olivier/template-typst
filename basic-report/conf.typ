#let conf(
	fontSize: 12pt,
	title: "Titre",
	company: none,
	authors: (),
	frontPagePicture: none,
	doc
) = {

	let authorsList = []
	if type(authors) == "array"{
		for i in range(authors.len()) {
			if i == 0 {
				authorsList += [#authors.at(i)]
			} else {
				authorsList += [ & #authors.at(i)]
			}
		}
	} else {
		authorsList = [#authors]
	}

	set document(
		title: title,
		author: authors
		)

	set text(
		font: "FreeSans",
		size: fontSize,
		lang: "fr",
		region: "CH",
	)

	set page(
		paper: "a4",
		header: locate(
			loc => {
				let elems = query(
					selector(heading).before(loc,),
					loc,
				)
				let emphTitle = smallcaps(title)
				if elems != () {
					let body = elems.last().body
					emphTitle + h(1fr) + emph(body)
				}
				else{
					emphTitle
				}
			}
		),
		footer: [
			#if company != none {
				[#company | #authorsList
				#h(1fr)
				#counter(page).display("1/1", both: true)]
			}
			else {
				[#authorsList
				#h(1fr)
				#counter(page).display("1/1", both: true)]
			}
			],
	)

	set par(
		justify: true,

	)

	set heading(
		numbering: "1.1.1.",
	)

	let diplayTitle() = [
		#align(center, text(2em)[
		#smallcaps[*#title*]
		])
	]

	let firstPage(
	) = {
		set page(
			header: none,
			footer: none,
		)
		if frontPagePicture != none {
			align(center + horizon, text(2em)[
				#smallcaps[*#title*]
				#layout(size => {
					let width = size.width
					image(frontPagePicture, width: size.width)
				})
			])
		} else {
			align(center + horizon, text(2em)[
				#smallcaps[*#title*]
			])
		}
		align(bottom, text(1.4em)[
			Auteur#if(type(authors) == "array"){[s]}~: #authorsList

			#if company != none {
				company
			}

			Date~: #datetime.today().display()
		])
	}

	//diplayTitle()
	firstPage()

	outline()

	pagebreak()

	doc
}