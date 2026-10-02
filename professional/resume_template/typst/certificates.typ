// NOTE: Usage Summary starts

// -----------------Define the certificate card-------------
//
// #let example_cert_var = [
//    #let name = ""
//    #let org  = ""
//    #let ID   = link("")[display_text_you_want_to_show]
//    #let date = ""
//
//    #certificate_card(
//      name,
//      org,
//      date, 
//      id: [(#ID)]
//    )
// ]
//
// --------------push the card into the list------------
//
// #entries.push(example_cert_var)
//
// NOTE: Usage Summary ends

#import "./utils.typ": certificate_card, section_builder

// NOTE: Stack of display entries

#let entries = ()

// NOTE: Definitions

#let english_test = [
  #let name = "EF SET English Certificate 100/100 (C2 Advanced)"
  #let org = "EF SET"
  #let ID = link("https://cert.efset.org/xxxx")[xxxx]
  #let date = "Jan 1970"

  #certificate_card(
    name,
    org,
    date, 
    id: [(#ID)]
  )
]

// NOTE: Use stack to display your content

#entries.push(english_test)

// NOTE: Section Builder

#let certificates() = {[
  #section_builder("Certificates", entries)
]}
