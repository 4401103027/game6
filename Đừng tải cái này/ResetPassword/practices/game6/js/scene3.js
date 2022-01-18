var blazewarriorsstatusgame = false;
var music;
var list3 = ["Hoa bừng mở mắt", "Xin chào bạn Ong!", "Hoa liền dâng mật", "Thơm ngát cánh rừng"];
var index3 = 0
var word;
var right;
var wrong;
var y;
var bee;
var checkButton3;
var validText3;
var text1, text2, text3, text4;
var exit;
var flag2 = false;
class scene3 extends Phaser.Scene{
	constructor(){
		super('nextGame1');
	}
	preload(){
		
		this.load.image('k2','assets/k2.png');
		this.load.image('input','assets/input.png');
		this.load.image('check', 'assets/check.png');
		this.load.image('k2d1', 'assets/k2d1.png');
		this.load.image('k2d2', 'assets/k2d2.png');
		this.load.image('k2d3', 'assets/k2d3.png');
		this.load.image('k2d4', 'assets/k2d4.png');
		for (var i = 5; i <= 8; i++) {
			this.load.image('check' + i, 'assets/check' + i + '.png');
		}
	}
	create(){
	
		this.add.image(610, 350, 'k2');
		text1 = this.add.image(600, 100, 'k2d1').setScale(0.9);
		text2 = this.add.image(600, 150, 'k2d2').setScale(0.9);
		text3 = this.add.image(600, 200, 'k2d3').setScale(0.9);
		text4 = this.add.image(600, 250, 'k2d4').setScale(0.9);
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
		
		validText3 = list3[index3]
		console.log(index3);
		console.log(validText3);
		
		checkButton3 = this.add.image(1090, 620, "check").setInteractive();
	}
	update(){
		this.typedGameObject.setText(this.typedMessage)
		validText3 = list3[index3]
		
		if(this.typedMessage != ''){
			checkButton3.on("pointerdown", () => {
				if (this.typedMessage === validText3) {
					// alert("It's the right text")
					this.typedMessage = '';

					right.visible = true;
					wrong.visible = false;
					
					if(index3 < 3)
						bee.y += 50;
					
					index3 += 1;
					
					if(index3 == 1)
						text1.setTexture('check5');
					else 
					if(index3 == 2)
						text2.setTexture('check6');
					else
					if(index3 == 3)
						text3.setTexture('check7');
					else
					if(index3 == 4){
						text4.setTexture('check8');
						exit = this.add.image(1100, 620, 'exit').setInteractive();
						exit.on("pointerdown", () => {
							this.scene.start("playGame");
							flag2 = true;
						})
					}
					

				}
				else if (this.typedMessage !== validText3 && this.typedMessage != ''){
					wrong.visible = true;
					right.visible = false;
					console.log(this.typedMessage);
					console.log(validText3);
				}
			})
		}
	
		
	}
}