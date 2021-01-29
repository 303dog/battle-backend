# README


This is a fun application that allows you to compare all the superheros from Marvel & DC.
You will be able to :  

-Choose between GOOD and EVIL
    -good
    -evil
    
-Research heros [] <--API
    -aka's
    -affiliations
    -powerstats
        -smarts
        -strength
        -speed
        -stamina
        -power
        -combat-skills
    
When a hero is clicked-

-route to single hero page
    -render stats
    -render image/art
    -render "choose" button
        -button will "selectHero" the hero for the battle arena
        -hero will be pushed into "readyForBattle" []

-Prompt for 2nd "selectHero" and repeat options:

    -choose good or evil
    -research heros []
    -selectHero
    -readyForBattle []
        -render "readyForBattle" page
            -shows both chosen heros
            -countdown to battle??   3, 2, 1
            or render a "fight" button 
                -using the data from powerstats
                    calculate winner

-After both heros have been selected and after initaiting the "battle" 
    route to "results" page:
        -render winner
        -render total scores and +difference of winner
        -button to route back to home



MODELS

*HERO:

    Attributes-
    search name

    create_table :HERO do |t|
      hero_id
      name
      aka
      alignment
      powerstats{}
      smarts
      muscle
      speed
      stamina
      power
      combat_skills
      appearance
      work
      connections
      family
      xsImg
      smImg
      mdImg
      lgImg


{
"id": 499,
"name": "Offspring",
"slug": "499-offspring",
"powerstats": {
"intelligence": 50,
"strength": 10,
"speed": 35,
"durability": 99,
"power": 100,
"combat": 56
},
"appearance": {
"gender": "Male",
"race": null,
"height": [
"-",
"0 cm"
],
"weight": [
"- lb",
"0 kg"
],
"eyeColor": "-",
"hairColor": "-"
},
"biography": {
"fullName": "Luke O'Brian",
"alterEgos": "No alter egos found.",
"aliases": [
"Ernie McDunnagh",
"Plastic Lad"
],
"placeOfBirth": "-",
"firstAppearance": "-",
"publisher": "DC Comics",
"alignment": "good"
},
"work": {
"occupation": "-",
"base": "-"
},
"connections": {
"groupAffiliation": "-",
"relatives": "-"
},
"images": {
"xs": "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/xs/499-offspring.jpg",
"sm": "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/sm/499-offspring.jpg",
"md": "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/md/499-offspring.jpg",
"lg": "https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/images/lg/499-offspring.jpg"
}
},

