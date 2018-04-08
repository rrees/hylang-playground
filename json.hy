(import json)

(setv payload {
	"message" "Hello world"
})


(print (.dumps json payload))