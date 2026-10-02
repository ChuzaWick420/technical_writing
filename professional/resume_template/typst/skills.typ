// NOTE: Usage Summary starts
//
// -----------------Define the skill card-------------
//
// #let example_skill_var = [
//    #let skill_heading = ""
//    #let content       = ""
//
//    #skill_entry(skill_heading, content)
// ]
//
// --------------push the card into the list------------
//
// #entries.push(example_skill_var)
//
// NOTE: Usage Summary ends

#import "./utils.typ": skill_entry, section_builder

// NOTE: Stack of display entries

#let entries = ()

// NOTE: Definitions

#let lang = [
  #let skill_heading = "Languages"
  #let content = "C, C++, Python, JavaScript (JS), LaTeX, Typst, YAML"

  #skill_entry(skill_heading, content)
]

#let concepts = [
  #let skill_heading = "Concepts"
  #let content = "Object Oriented Programming (OOP), Data Structure and algorithm design (DSA)"

  #skill_entry(skill_heading, content)
]

// NOTE: Use stack to display your content

#entries.push(lang)
#entries.push(concepts)

// NOTE: Section Builder

#let skills() = {[
  #section_builder("Skills", entries)
]}
