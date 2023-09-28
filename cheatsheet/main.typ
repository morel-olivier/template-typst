#import "conf.typ": conf

#show: doc => conf(
	fontSize: 12pt,
	title: "Mon Document",
	numColumnns: 4,
	color: true,
	doc
)

= Introduction
Toujour mettre des unités avec les formules !!!

#grid(
	columns: (1fr, auto),
	rows: (auto),
	[$a = F / m$],
	[[m/s^2]]
)

#lorem(80)

== Sous-section 1
#lorem(100)

=== Sous-sous-section 1
#lorem(100)

==== Sous-sous-sous-section 1
#lorem(100)

= Conclusion
#lorem(100)
