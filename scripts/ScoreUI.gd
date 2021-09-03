extends Control


func _on_Player_score_up(new_score):
	$ScorePanel/ScoreCounter.text = str(new_score)
