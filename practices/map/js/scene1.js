var blazewarriorsstatusgame = false;
var music;

class scene1 extends Phaser.Scene{
	constructor(){
		super('mapGame');
	}
	preload(){
		this.load.image('map','assets/map.jpg');
		this.load.image('circle1','assets/circle1.png');
		this.load.image('circle2','assets/circle2.png');
		this.load.image('circle3','assets/circle3.png');
		this.load.image('circle4','assets/circle4.png');
		this.load.image('circle5','assets/circle5.png');
		this.load.image('circle6','assets/circle6.png');
		this.load.image('tick','assets/Ok-icon.png');
	}
	create(){	
		var map = this.add.image(500, 325, 'map');
		map.displayWidth = 1000;
		map.displayHeight = 650;

		var circle1 = this.add.sprite(175, 353, 'circle1').setInteractive(); 
		var circle2 = this.add.sprite(270, 210, 'circle2').setInteractive();
		var circle3 = this.add.sprite(492, 172, 'circle3').setInteractive();
		var circle4 = this.add.sprite(666, 82, 'circle4').setInteractive();
		var circle5 = this.add.sprite(853, 253, 'circle5').setInteractive();
		var circle6 = this.add.sprite(668, 433, 'circle6').setInteractive();

		this.showTick(circle1);
		this.showTick(circle2);
		this.showTick(circle3);
		this.showTick(circle4);
		this.showTick(circle5);
		this.showTick(circle6);

		this.tick(circle2)
		this.tick(circle3)

		this.startGame(circle1, 'introGame1');

		this.input.on('pointerup', function (circle1) {console.log(pointer.x, pointer.y)});
		circle1.on('pointerover', function (pointer) {console.log('over')});

		// var c1 = this.add.button(175, 353, 'circle1', this.actionOnClick(), this, 2, 1, 0); 
	}
	update(){	
		
	}

	actionOnClick () {

		console.log('click')
	
	}

	// vào game
	startGame(circle, game) {
		circle.on('pointerdown', function() { 
			console.log(game)
			this.scene.start(game); // sai choox nay!!
		}, this);
	}
	
	// show tick khi hoàn thành game
	showTick(circle) {
		circle.displayWidth = 65;
		circle.displayHeight = 65;
	}

	tick(circle) {
		circle.on('pointerdown', function() { 
			this.add.image(circle.x, circle.y, 'tick'); }, this);
	}
}