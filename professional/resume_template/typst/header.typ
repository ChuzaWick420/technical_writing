#let github = link("https://www.github.com/John")[github.com/Jon]
#let linkedin = link("https://www.linkedin.com/in/Jon/")[linkedin.com/in/Jon]

#let location = "foreign planet, Mars"
#let phone = link("tel:+999999")[+999999]
#let email = link("mailto:john_doe@gmail.com")[john_doe\@gmail.com]

#let monkeytype = link("https://monkeytype.com/profile/john")[monkeytype.com/profile/john]

#let contacts = (
  phone,
  email,
  linkedin,
  github,
  location,
  // monkeytype
)

#let header() = {[

  #let name = "John Doe"

  = #name <name>

  #for index in range(0, contacts.len()) {[
    #if calc.rem(index, 2) == 0 {
      [#contacts.at(index) <contact>]
    } else {
      [| #contacts.at(index) <contact> \ ]
    }
  ]}

]}
