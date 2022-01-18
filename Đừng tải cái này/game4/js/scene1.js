var blazewarriorsstatusgame = false;
var music;

class scene1 extends Phaser.Scene{
	constructor(){
		super('introGame');
	}
	preload(){
		
		this.load.image('bg8','assets/bg8.png');
		this.load.image('start', 'assets/start.png');
		
	}
	create(){

		// music = this.sound.add('bgmusic');
		// music.setLoop(true);
		// music.play();
		
		this.add.image(600, 350, 'bg8');

		// this.add.image(300, 270, 'logo');
	
		// var more = this.add.sprite(600, 350, 'more').setInteractive();
		// more.visible = false;
		// var menu = this.add.sprite(500, 300, 'menu').setInteractive();
		var start = this.add.sprite(850, 500, 'start').setInteractive();
		// var exit = this.add.sprite(550, 130, 'exit').setInteractive();
		// exit.visible = false;
		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		
		function loops()
		{
			zoomOut(start, 0.8, 1.1, 0.01, 10, this);
		}
		start.on('pointerdown', function(){
			this.scene.start('playGame');
		}, this);

		// menu.on('pointerdown', function(){
		// 	more.visible = true;
		// 	exit.visible = true;
		// 	play.visible = false;
		// 	menu.visible = false;
		// }, this);

		// exit.on('pointerdown', function(){
		// 	more.visible = false;
		// 	exit.visible = false;
		// 	play.visible = true;
		// 	menu.visible = true;
		// }, this);

		this.input.on('pointerup', function (pointer) {console.log(pointer.x, pointer.y)})

	}
	update(){
		
		
	}
}