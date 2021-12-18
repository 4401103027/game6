var blazewarriorsstatusgame = false;
var music;
var list = ["hoaconngaingu", "ong da den roi", "day mau di chu", "kia ong mat troi"];
var index = 0
var word;
var right;
var y = 90;
var bee;
var text1_flag = false;
var text1;
var text2;
var text3;
var text4;
var validText;
var char = [];
var x1;
var y1;
var wrong;
var index_key;
var current;
class scene2 extends Phaser.Scene{
	constructor(){
		super('playGame1');
	}
	preload(){
		
		this.load.image('k1','assets/k1.png');
		this.load.image('input','assets/input.png');
		this.load.image('check', 'assets/check.png');
		this.load.image('k1d1', 'assets/k1d1.png');
		this.load.image('k1d2', 'assets/k1d2.png');
		this.load.image('k1d3', 'assets/k1d3.png');
		this.load.image('k1d4', 'assets/k1d4.png');
		this.load.image('bee', 'assets/bee.png');
		this.load.image('right', 'assets/right.png');
		this.load.image('wrong', 'assets/wrong.png');

		for (var i = 0; i <= 11; i++) {
			this.load.image('check' + i, 'assets/check' + i + '.png');
		}
	}
	create(){
		this.add.image(610, 350, 'k1');
		text1 = this.add.image(600, 100, 'k1d1').setScale(0.9);
		text2 = this.add.image(600, 150, 'k1d2').setScale(0.9);
		text3 = this.add.image(600, 200, 'k1d3').setScale(0.9);
		text4 = this.add.image(600, 250, 'k1d4').setScale(0.9);
		this.add.image(620, 620, "input");
		
		validText = list[index];
		
		char = [];
		x1 = 230, y1 = 580;

		console.log(validText[0]);
		
		for (var i = 0; i <= validText.length; i++) {
			char.push(this.typedGameObject = this.add.text(x1, y1,  validText[i], {
				fontSize:74, color:'#c51b7d'
			}).setOrigin(0).setDepth(20)); 
			x1 += 50;
		}

		right = this.add.sprite(600,490, 'right').setInteractive();
		right.visible = false;
		
		wrong = this.add.sprite(600,490, 'wrong').setInteractive();
		wrong.visible = false;
		
		console.log(y);
		console.log(text1_flag);
		bee = this.add.image(750, y, 'bee');

		
		index_key = 0;
		current = validText[index_key];
		
		this.input.keyboard.on('keydown', function (event) {
			if (event.keyCode === current.toUpperCase().charCodeAt(0))
            {
				char[index_key].visible = false;
				if (index_key < validText.length - 1) {
					index_key += 1
					current = validText[index_key]
				}
				else {
				}
				if(char[validText.length-1].visible == false){
					right.visible = true;
					index += 1;
				}

            }
			else {
				
			}
			
		}, this);
	}
	update(){
		this.input.keyboard.on('keydown', function (event) {
			if (event.keyCode === current.toUpperCase().charCodeAt(0))
            {
				char[index_key].visible = false;
				if (index_key < validText.length - 1) {
					index_key += 1
					current = validText[index_key]
				}
				else {
				}
				if(char[validText.length-1].visible == false){
					right.visible = true;

					y += 50;
					
					if(index < 2){
						text1.setTexture('check1');
						bee.visible = false;
						bee = this.add.image(750, y, 'bee');
					}
					else
					if(index < 3){
						text1.setTexture('check1');
						text2.setTexture('check2');
						bee.visible = false;
						bee = this.add.image(750, y, 'bee');
					}
					else
					if(index < 4){
						text1.setTexture('check1');
						text2.setTexture('check2');
						text3.setTexture('check3');
						bee.visible = false;
						bee = this.add.image(750, y, 'bee');
					}
					else
					if(index < 5){
						text1.setTexture('check1');
						text2.setTexture('check2');
						text3.setTexture('check3');
						text4.setTexture('check4');
					}

					validText = list[index];
		
					char = [];
					x1 = 230, y1 = 580;
					
					for (var i = 0; i <= validText.length; i++) {
						char.push(this.typedGameObject = this.add.text(x1, y1,  validText[i], {
							fontSize:74, color:'#c51b7d'
						}).setOrigin(0).setDepth(20)); 
						x1 += 50;
					}

					right = this.add.sprite(600,490, 'right').setInteractive();
					right.visible = false;
					
					wrong = this.add.sprite(600,490, 'wrong').setInteractive();
					wrong.visible = false;
					
					index_key = 0;
					current = validText[index_key];
				}

            }
			else {

			}
			
		}, this);
	}
}