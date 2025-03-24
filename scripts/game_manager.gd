extends Node

var score = 0

@onready var scorelabel: Label = $"../Labels/score"

func add_point():
	score += 1
	#print("Updated score is: ", score)
	scorelabel.text = "You've collected " + str(score) + " coins!!!"
	if score == 10:
		scorelabel.text = "You've collected " + str(score) + " coins!!!\n
							Congrats you've completed the level!"
