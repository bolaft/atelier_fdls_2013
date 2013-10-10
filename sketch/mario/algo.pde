void doAlgorithm(mario, enemies)
{
	if (mario.hasKey == false){
		mario.d = true;
	} else {
		mario.q = true;
	}

	for (int i = 0; i < enemies.size(); i++) {
	    enemy = enemies.get(i);

	    if (enemy.x - mario.x < 35 && enemy.x > mario.x){
	    	mario.z = true;
	    }
	}

    if (mario.x == mario.previous.x) {
      mario.z = true;
    }
}