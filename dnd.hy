(import random)

(setv attributes [
	"Strength"
	"Dexterity"
	"Constitution"
	"Intelligence"
	"Wisdom"
	"Charisma"
])

(defn d6 []
	(.randint random 1 6))

(defn attribute-value []
	(->> (repeatedly d6)
		(take 4)
		sorted
		(drop 1)
		sum))

(print (list (zip attributes (repeatedly attribute-value))))