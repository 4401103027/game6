var blazewarriorsstatusgame = false;
var music;
var list4 = ["Suốt ngày mê mải", "Cánh Ong bồn chồn", "Từng li mật ấy", "Đong đầy tổ thơm"];
var index4 = 0
var word;
var right;
var wrong;
var y;
var bee;
var checkButton4;
var validText4;
var text1, text2, text3, text4;
var exit;
var flag3 = false;
class scene4 extends Phaser.Scene{
	constructor(){
		super('nextGame2');
	}
	preload(){
		
		this.load.image('k3','assets/k3.png');
		this.load.image('input','assets/input.png');
		this.load.image('check', 'assets/check.png');
		this.load.image('k3d1', 'assets/k3d1.png');
		this.load.image('k3d2', 'assets/k3d2.png');
		this.load.image('k3d3', 'assets/k3d3.png');
		this.load.image('k3d4', 'assets/k3d4.png');
		for (var i = 9; i <= 12; i++) {
			this.load.image('check' + i, 'assets/check' + i + '.png');
		}
	}
	create(){
	
		this.add.image(610, 350, 'k3');
		text1 = this.add.image(600, 100, 'k3d1').setScale(0.9);
		text2 = this.add.image(600, 150, 'k3d2').setScale(0.9);
		text3 = this.add.image(600, 200, 'k3d3').setScale(0.9);
		text4 = this.add.image(600, 250, 'k3d4').setScale(0.9);
		this.add.image(620, 620, "input");
		// this.add.image(1090, 620, "check");
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
		
		validText4 = list4[index4]
		console.log(index4);
		console.log(validText4);
		
		checkButton4 = this.add.image(1090, 620, "check").setInteractive();
	}
	update(){
		this.typedGameObject.setText(this.typedMessage)
		validText4 = list4[index4]
		
		if(this.typedMessage != ''){
			checkButton4.on("pointerdown", () => {
				if (this.typedMessage === validText4) {
					// alert("It's the right text")
					this.typedMessage = '';

					right.visible = true;
					wrong.visible = false;
					
					if(index4 < 3)
						bee.y += 50;
					
					index4 += 1;
					console.log(index4);
					if(index4 == 1)
						text1.setTexture('check9');
					else 
					if(index4 == 2)
						text2.setTexture('check10');
					else
					if(index4 == 3)
						text3.setTexture('check11');
					else
					if(index4 == 4){
						text4.setTexture('check12');
						exit = this.add.image(1100, 620, 'exit').setInteractive();
						exit.on("pointerdown", () => {
							this.scene.start('gameOver');
							flag3 = true;
						})
					}
					

				}
				else if (this.typedMessage !== validText4 && this.typedMessage != ''){
					wrong.visible = true;
					right.visible = false;
					console.log(this.typedMessage);
					console.log(validText4);
				}
			})
		}
	
		
	}
}