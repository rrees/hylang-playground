(import random)

(defn d6 []
	(.randint random 1 6))

(print (d6))

(defn attribute-value []
	(->> (repeatedly d6)
		(take 4)
		sorted
		(drop 1)
		sum))

(print (attribute-value))

(defn my-repeatedly []
	(while True
		(yield (d6))))

(print (list (take 4 (my-repeatedly))))

(print (list (take 4 (repeatedly d6))))

(->>
	(repeatedly d6)
	(take 4)
	sorted
	(drop 1)
	list
	sum
	print)

(->> (repeatedly attribute-value)
	(take 6)
	list
	print)
