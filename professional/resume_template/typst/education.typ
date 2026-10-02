// NOTE: Usage Summary starts
//
// -----------------Define the dated card-------------
//
// #let example_edu_var = [
//    #let institute = ""
//    #let dates     = ""
//    #let degree    = ""
//    #let location  = ""
//    #let content   = [
//      - bullet 1
//      - bullet 2
//      - bullet n
//    ]
//
//    #dated_card(institute, dates, degree, location, content)
// ]
//
// --------------push the card into the list------------
//
// #entries.push(example_edu_var)
//
// NOTE: Usage Summary ends

#import "./utils.typ": dated_card, section_builder

// NOTE: Stack of display entries

#let entries = ()

// NOTE: Definitions

#let edu_1 = [

  #let institute = "University of Mars"
  #let dates = "Jan 2000 - Dec 2010"
  #let degree = "Bachelor of Science, Computer Science"
  #let location = "Mars"
  #let content = [
    - Cumulative GPA: 3.7\/4.0
  ]

  #dated_card(institute, dates, degree, location, content)
]

// NOTE: Use stack to display your content

#entries.push(edu_1)

// NOTE: Section Builder

#let education() = {[
  #section_builder("Education", entries)
]}
