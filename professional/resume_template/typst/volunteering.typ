// NOTE: Usage Summary starts
//
// -----------------Define the dated card-------------
//
// #let example_activity_var = [
//   #let event = ""
//   #let activity = ""
//   #let location = ""
//   #let date = ""
//   #let content = [
//     - bullet 1
//     - bullet 2
//     - bullet N
//   ]
//
//   #dated_card(event, date, activity, location, content)
//
// ] 
//
// --------------push the card into the list------------
//
// #entries.push(example_activity_var)
//
// NOTE: Usage Summary ends

#import "./utils.typ": dated_card, section_builder

// NOTE: Stack of display entries

#let entries = ()

// NOTE: Definitions

#let hackathon = [
  #let event = "Capture the fly"
  #let activity = "bug hunting"
  #let location = "Remote, Neptune"
  #let date = "Jan 1970"
  #let content = [
    - #lorem(10)
  ]

  #dated_card(event, date, activity, location, content)

]

// NOTE: Use stack to display your content

#entries.push(hackathon)

// NOTE: Section Builder

#let volunteering() = {[
  #section_builder("Volunteer Experience", entries)
]}
