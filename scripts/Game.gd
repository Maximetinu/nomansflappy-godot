extends Spatial


var gameOverUiPrefab = load("res://prefabs/GameOverUI.tscn")


func _on_Player_player_dead():
	var gameOverUI = gameOverUiPrefab.instance()
	add_child(gameOverUI)
