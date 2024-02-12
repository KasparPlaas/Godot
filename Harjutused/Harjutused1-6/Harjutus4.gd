extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var mangijad = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]

	var kogus = mangijad.size()
	print("Mängijate arv: ",kogus)
	print(mangijad[0])
	mangijad.sort()
	mangijad.erase("Reyes")
	mangijad.append("Kaspar")
	var suurim = mangijad.max()
	print("Pikim nimi on ",suurim)
	for mangija in mangijad:
		print(mangija)
	print("--------------")
	var player = {"posx":10, "posy":10, "Health":100, "Items":["mõõk","kirves"], "gold":1000}
	for i in range(2):
		player.gold=player.gold*5
	print(player.gold)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
