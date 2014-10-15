/**
 * VARIABLES :
 *    personnage.x         e	x du personnage
 *    personnage.y          	position verticale du personnage
 *    personnage.precedent.xe	x du personnage à la frame précédente
 *    personnage.precedent.y 	position verticale du personnage à la frame précédente
 *
 *    mario.aLaClef 			vrai si Mario transporte la clef
 *    mario.peutTraverser 		vrai si Mario peut traverser un conduit
 * 
 * FONCTIONS :
 *    mario.courirDroite() 		Mario court vers la droite
 *    mario.courirGauche() 		Mario court vers la gauche
 *    mario.sauter() 			Mario saute (seulement s'il est sur une surface solide)
 *    mario.seBaisser() 		Mario se baisse (permet aussi de traverser les conduits)
 */

variable = false;
variable1 = false;
variable2 = false;
variable3 = null;
variable4 = null;
entier = 0;
entier1 = 0;
entier2 = 0;
flottant = 0.0;
flottant1 = 0.0;
flottant2 = 0.0;

void choixAction(mario, ennemis, nombreEnnemis)
{
	console.log(nombreEnnemis);
	lines = loadStrings("sketch/mario/algo.txt");

	String code = "";

	for (int i = 0; i < lines.length; i++) {
		code += interpret(lines[i]) + "\n";
	}

	console.log(code);

	eval(code);
}

String interpret(s)
{
	/*HashMap<String,String> t = new HashMap<String,String>();*/

	s = s.replace(" au ", " à le ");

	s = s.replace("mario court à droite", "mario.courirDroite();");
	s = s.replace("mario court à gauche", "mario.courirGauche();");
	s = s.replace("mario saute", "mario.sauter();");
	s = s.replace("mario se baisse", "mario.seBaisser();");

	s = s.replace("mario a la clef", "mario.aLaClef");
	s = s.replace("mario n'a pas la clef", "mario.aLaClef == false");
	s = s.replace("mario peut traverser", "mario.peutTraverser");
	s = s.replace("mario ne peut pas traverser", "mario.peutTraverser == false");

	s = s.replace("est vrai", "== true");
	s = s.replace("est faux", "== false");

	s = s.replace("est égal à", "==");
	s = s.replace("est supérieur à", ">");
	s = s.replace("est supérieur ou égal à", ">=");
	s = s.replace("est inférieur à", "<");
	s = s.replace("est inférieur ou égal à", "<=");
	s = s.replace("est égale à", "==");
	s = s.replace("est supérieure à", ">");
	s = s.replace("est supérieure ou égale à", ">=");
	s = s.replace("est inférieure à", "<");
	s = s.replace("est inférieure ou égale à", "<=");
	s = s.replace("prend la valeur de", "=");

	s = s.replace(" moins ", " - ");
	s = s.replace(" plus ", " + ");
	s = s.replace(" fois ", " * ");
	s = s.replace(" divisé par ", " / ");
	s = s.replace(" divisée par ", " / ");

	s = s.replace(" et ", " && ");
	s = s.replace(" ou ", " || ");
	s = s.replace(" alors", "){");
	s = s.replace("sinon si", "} else if (");
	s = s.replace("sinon", "} else {");
	s = s.replace("si ", "if (");
	s = s.replace("tant que", "");
	s = s.replace("fin tant que", "}");
	s = s.replace("fin si", "}");

	s = s.replace("pour chaque monstre", "i = 0; while (i < nombreEnnemis) { ennemi = ennemis.get(i);");
	s = s.replace("fin pour", "i++; }");

	s = s.replace("le x de mario", "mario.x");
	s = s.replace("le y de mario", "mario.y");

	s = s.replace("le x du monstre", "ennemi.x");
	s = s.replace("le y du monstre", "ennemi.y");

	s = s.replace("le x précédent de mario", "mario.precedent.x");
	s = s.replace("le y précédente de mario", "mario.precedent.y");

	s = s.replace("le x précédent du monstre", "ennemi.precedent.x");
	s = s.replace("le y précédente du monstre", "ennemi.precedent.y");

/*	s = s.replace("vrai", "true")*/

	/*for (Map.Entry me : t.entrySet()) {
		s = s = s.replace(me.getKey(), me.getValue());
	}*/

	return s;
}