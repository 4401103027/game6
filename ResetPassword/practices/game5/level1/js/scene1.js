var blazewarriorsstatusgame = false;
var music;
var a1;
var validText1;
var s1;
var beePositions;
var bee;
class scene1 extends Phaser.Scene{
	constructor(){
		super('playGame');
	}

	preload(){
        this.load.image('bgs1','assets/bgs1.png');
		this.load.image('lefthand','assets/left_hand.png');
		this.load.image('righthand','assets/right_hand.png');
		this.load.image('bee3', 'assets/bee3.png');
		this.load.image('ans', 'assets/ans.png');
		// this.load.image('cloud', 'assets/cloud.png');
		this.load.image('input', 'assets/input.png');
		this.load.image('check', 'assets/check.png');
		this.load.image('s1', 'assets/s1.png');
		this.load.image('check1', 'assets/check1.png');
		this.load.image('arrow', 'assets/arrow.png');
		this.load.image('a1', 'assets/a1.png');
	
		// this.load.image('ans1', 'assets/ans/ans1.png');
		bee = this.load.image('beefinger', 'assets/bee.png');
		bee.visible = false;
		// this.load.image('a1', 'assets/ans/a1.png' );

	}

	create(){
		this.add.image(610, 350, 'bgs1');
		this.add.image(600, 50, 'ans');
		// this.add.image(1140, 610, 'bee3').setScale(0.7);
		// this.add.image(650, 300, "cloud");
		
		bee = this.add.image(722, 629, 'beefinger');
		// bee.visible = false;
		
		s1 = this.add.sprite(600, 300, "s1").setInteractive();
		arrow = this.add.sprite(595, 540, "arrow").setInteractive();
		arrow.visible = false;
		this.add.image(400, 690, "input").setScale(0.7);
		this.add.image(790, 650, 'lefthand').setScale(0.6);
		this.add.image(950, 650, 'righthand').setScale(0.6);
		a1 = this.add.sprite(320, 650, 'a1').setScale(0.8).setInteractive();
		ans1 = this.add.sprite(510,350, 'check1').setInteractive();
		ans1.visible = false;

	
	
		this.typedMessage = " ";
		this.typedGameObject = this.add.text(150, 620,  " ", {
			fontSize:74, color:'#c51b7d'
		}).setOrigin(0).setDepth(20);

		const leftHand = [
			["rfvtgb", {x : 818, y : 590}], 
			["edc", {x : 782, y : 586}],
			["wsx", {x : 749, y : 586}],
			["qaz", {x : 722, y : 629}],
		]

		const rightHand = [
			["yhnujm", {x : 919, y : 598}],
			["ik", {x : 957, y : 583}],
			["ol", {x : 990, y : 593}],
			["p", {x : 1030, y : 626}],
		]

		beePositions = new Map();
		
		for (let finger of leftHand) {
			finger[0].split("").forEach(k => {
				beePositions.set(k, finger[1])
			})
		}

		for (let finger of rightHand) {
			finger[0].split("").forEach(k => {
				beePositions.set(k, finger[1])
			})
		}
		
		//từ khóa của scene
		validText = "máy tính";
		validText1 = " máy tính";
		

		const keypressHandler = (e) => {
			
			this.typedMessage += e.key;
			a1.visible = false;
			bee.visible = true;
			
			vietnamcode(e.key, bee.x);
			
			if (e.key == 'ơ' || e.key == 'ư') {
				const position = beePositions.get('w')
				
				//this.typedMessage += e.key;
				if (position) {
					bee.setPosition(position.x, position.y);
				}
			}
			else {
				// bee.visible = true;
				const position = beePositions.get(e.key);
				if (position) {
					bee.setPosition(position.x, position.y);
				}
			}
			
			// console.log("key",e.key);
			// this.typedMessage += e.key;
			// console.log();
			// console.log(this.typedMessage.length);
			// bee.visible = true;
			// const position = beePositions.get(e.key);
			// if (position) {
			// 	bee.setPosition(position.x, position.y)
			// }
			// var bee2 = this.add.image(700, 535, 'beefinger');
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
		
		checkButton = this.add.image(620, 650, "check").setInteractive();

		arrow.on('pointerdown', function(){
			this.scene.start('playGame1');
		}, this);
	}
	update() {	
		this.typedGameObject.setText(this.typedMessage)
		
		
		if(this.typedMessage != ''){
			checkButton.on("pointerdown", () => {
				if (this.typedMessage === validText || this.typedMessage === validText1) {
					// alert("It's the right text")
					this.typedMessage = '';
					ans1.visible = true;
					s1.visible = false;
					arrow.visible = true;
					
				}
				else if (this.typedMessage !== validText && this.typedMessage != ''){
					alert("Đáp án chưa chính xác!");
					this.typedMessage = '';
					// wrong.visible = true;
					// right.visible = false;
					console.log(this.typedMessage);
					// console.log(index);
				}
				
			})
		}
	}	
}