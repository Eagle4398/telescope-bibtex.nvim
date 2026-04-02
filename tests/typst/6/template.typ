
#let default(draft: false,body) = {
  body
  context if query(cite).len() > 0 [
    = Bibliografie
  ]
 // bibliography("bibliography.bib", title: none)

}

