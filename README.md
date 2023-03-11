# MTGLandCalc
A simple bash script for calculating how many lands are necessary to support your Magic: The Gathering deck.

The purpose of this script is to roughly calculate the optimal number of lands to run in a given Magic: The Gathering deck.  This is determined by averaging the total Converted Mana Cost ("CMC") of spells in your deck and finding the ratio of lands to non-lands necessary for an equal number of lands to appear in an average opening hand of 7 cards.

For example; if the average mana cost of spells in your 60-card deck is 2, then the script will recommend at least 16 lands, which averages out to approximately 2 lands in every hand of 7 cards.  This is intended to provide the player with a land base that will draw them, on average, enough lands to cast the average spell that appears in their opening hand.

The calculator determines your landbase relative to the average CMC of every spell you're considering (which should be less than your deck size), therefor you may be advised to add or remove spells to compensate for the respective change in necessary lands.  Consider removing spells well above and below your average CMC and adding cards at or close to your average CMC.  If you must make radical changes to your mana curve (such as by removing a disproportionately large number of high or low cost cards) consider running your deck through the calculator a second or third time to ensure an optimal land count for the cards you most wish to run.

WARNING!: This calculator does not account for alternate casting costs.  If your deck includes cards which are normally cast for more or less mana than their stated CMC, use that number instead.

NOTE!: This is just one method of choosing a land base in Magic: The Gathering and probably skews low.  Consider rounding up from the number of lands advised.

MTGLandCalc.sh is written in bash and executed from the same directory with
```bash
bash mtglandcalc.sh

```
