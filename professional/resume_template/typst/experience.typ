// NOTE: Usage Summary starts
//
// -----------------Define the dated card-------------
//
// #let example_experience_var = [
//    #let company  = ""
//    #let dates    = ""
//    #let role     = ""
//    #let location = ""
//    #let content  = [
//      - bullet 1
//      - bullet 2
//      - bullet n
//    ]
//
//    #dated_card(company, dates, role, location, content)
// ]
//
// --------------push the card into the list------------
//
// #entries.push(example_experience_var)
//
// NOTE: Usage Summary ends

#import "./utils.typ": dated_card, section_builder

// NOTE: Stack of display entries

#let entries = ()

// NOTE: Definitions

#let experience_1 = [

  #let company = "Company LTD"
  #let dates = "Jan 2000 - Dec 2010"
  #let role = "Unpaid Intern"
  #let location = "wiii, Mars"
  #let content = [
    - #lorem(20)
    - #lorem(20)
  ]

  #dated_card(company, dates, role, location, content)
]

#let experience_2 = [

  #let company = "Company LTD"
  #let dates = "Jan 2000 - Dec 2010"
  #let role = "Prompt Grammar Specialist"
  #let location = "wiii, Mars"
  #let content = [
    - #lorem(20)
    - #lorem(20)
  ]

  #dated_card(company, dates, role, location, content)
]

// NOTE: Use stack to display your content

#entries.push(experience_1)
#entries.push(experience_2)

// NOTE: Section Builder
#let experience() = {[
  #section_builder("Work Experience", entries)
]}
