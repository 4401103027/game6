var blazewarriorsstatusgame = false;
var music;
var list2 = ["Hoa còn ngái ngủ", "Ong đã đến rồi", "Dậy mau đi chứ", "Kìa ông mặt trời!"];
var index = 0
var word;
var right;
var wrong;
var y;
var bee;
var checkButton;
var validText;
var text1, text2, text3, text4;
var exit;
var flag = false;
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
		this.load.image('exit', 'assets/exit.png');

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

		this.typedMessage = "";
		this.typedGameObject = this.add.text(230, 583,  "Hello world", {
			fontSize:70, color:'#c51b7d'
		}).setOrigin(0).setDepth(20);

		const keypressHandler = (e) => {
			this.typedMessage += e.key;
		}

		const keydownHandler = (e) => {
			if (e.key === "Backspace") {
				this.typedMessage = this.typedMessage.substr(0, this.typedMessage.length - 1)
			}
		}


		window.addEventListener("keypress", keypressHandler);

		window.addEventListener("keydown", keydownHandler);
		
		this.events.once("shutdown", () => {
			window.removeEventListener("keypress", keypressHandler);
			window.removeEventListener("keydown", keydownHandler);
		})
		right = this.add.sprite(600,490, 'right').setInteractive();
		right.visible = false;
		
		wrong = this.add.sprite(600,490, 'wrong').setInteractive();
		wrong.visible = false;
		
		y = 90;
		bee = this.add.image(750, y, 'bee');
		
		validText = list2[index]
		
		checkButton = this.add.image(1090, 620, "check").setInteractive();

		
	}
	update(){
		this.typedGameObject.setText(this.typedMessage)
		validText = list2[index]
		
		if(this.typedMessage != ''){
			checkButton.on("pointerdown", () => {
				if (this.typedMessage === validText) {
					// alert("It's the right text")
					this.typedMessage = '';

					right.visible = true;
					wrong.visible = false;
					
					if(index < 3)
						bee.y += 50;
					
					index += 1;
					
					if(index == 1)
						text1.setTexture('check' + [index]);
					else 
					if(index == 2)
						text2.setTexture('check' + [index]);
					else
					if(index == 3)
						text3.setTexture('check' + [index]);
					else
					if(index == 4){
						text4.setTexture('check' + [index]);
						exit = this.add.image(1100, 620, 'exit').setInteractive();
						exit.on("pointerdown", () => {
							this.scene.start("playGame");
							flag = true;
						})
					}
				}
				else if (this.typedMessage !== validText && this.typedMessage != ''){
					wrong.visible = true;
					right.visible = false;
					console.log(this.typedMessage);
					console.log(index);
				}
				
			})
		}
	}
}