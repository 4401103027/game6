var blazewarriorsstatusgame = false;
var music;
var n1, n2, n3;

class scene6 extends Phaser.Scene{
	constructor(){
		super('playGame');
	}
	preload(){
		
		// this.load.image('k1','assets/k1.png');
		// this.load.image('input','assets/input.png');
		// this.load.image('check', 'assets/check.png');
		// this.load.image('k1d1', 'assets/k1d1.png');
		// this.load.image('k1d2', 'assets/k1d2.png');
		// this.load.image('k1d3', 'assets/k1d3.png');
		// this.load.image('k1d4', 'assets/k1d4.png');
		// this.load.image('bee', 'assets/bee.png');
		// this.load.image('right', 'assets/right.png');
		// this.load.image('wrong', 'assets/wrong.png');
		this.load.image('map', 'assets/map.png');
		this.load.image('flag', 'assets/flag.png');
		this.load.image('new', 'assets/new.png');
		this.load.image('ok', 'assets/ok.png');

		// for (var i = 0; i <= 11; i++) {
		// 	this.load.image('check' + i, 'assets/check' + i + '.png');
		// }
	}
	create(){
		this.add.image(600, 280, 'map');
		var flag_red1 = this.add.image(160, 410, 'flag').setScale(0.6);
		// flag_red1.visible = true;
		// var flag_red2 = this.add.image(470, 455, 'flag').setScale(0.6);
		// flag_red2.visible = false;
		// console.log(flag);
		if(flag){
			n1 = this.add.image(220, 432, 'ok').setScale(0.85).setInteractive();
			var flag_red2 = this.add.image(440, 285, 'flag').setScale(0.6);
			flag_red1.visible = false;
		}else{
			n1 = this.add.image(220, 432, 'new').setScale(0.85).setInteractive();
		}

		console.log(flag2);
		if(flag2){
			n2 = this.add.image(473, 305, 'ok').setScale(0.85).setInteractive();
			var flag_red3 = this.add.image(470, 455, 'flag').setScale(0.6);
			flag_red2.visible = false;
			// flag_red2.visible = false;
			// flag_red2.visible = true;
		}else{
			n2 = this.add.image(473, 305, 'new').setScale(0.85).setInteractive();
			
		}

		if(flag3){
			n3 = this.add.image(500, 490, 'ok').setScale(0.85).setInteractive();
			// this.add.image(470, 455, 'flag').setScale(0.6);
			flag_red2.visible = false;
			// flag_red2.visible = true;
		}else{
			n3 = this.add.image(500, 490, 'new').setScale(0.85).setInteractive();
			// this.scene.start('gameOver');
		}
		
		

		n1.on('pointerdown', function(){
			this.scene.start('playGame1');
		}, this);

		
		n2.on('pointerdown', function(){
			this.scene.start('nextGame1');
		}, this);

		n3.on('pointerdown', function(){
			this.scene.start('nextGame2');
		}, this);
	}
	update(){
		// this.typedGameObject.setText(this.typedMessage)
		
	}
}