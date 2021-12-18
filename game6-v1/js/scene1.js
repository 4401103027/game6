var blazewarriorsstatusgame = false;
var music;

class scene1 extends Phaser.Scene{
	constructor(){
		super('introGame');
	}
	preload(){
		this.load.image('bg','assets/bg.png');
		this.load.image('play','assets/play.png');
		this.load.image('menu', 'assets/menu.png');
		this.load.image('more', 'assets/more.png');
		
	}
	create(){
		this.add.image(610, 350, 'bg');
		var more = this.add.sprite(670, 350, 'more').setInteractive();
		more.visible = false;
		var menu = this.add.sprite(1000, 400, 'menu').setInteractive();
		var play = this.add.sprite(1000, 500, 'play').setInteractive();
		// var exit = this.add.sprite(790, 250, 'exit').setScale(0.6).setInteractive();
		// exit.visible = false;
		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		
		function loops()
		{
			zoomOut(play, 0.8, 1.1, 0.01, 10, this);
			zoomOut(menu, 0.8, 1.1, 0.01, 10, this);
		}
		play.on('pointerdown', function(){
			this.scene.start('playGame');
		}, this);

		menu.on('pointerdown', function(){
			more.visible = true;
			// exit.visible = true;
			// play.visible = false;
			menu.visible = false;
		}, this);

		// exit.on('pointerdown', function(){
		// 	more.visible = false;
		// 	// exit.visible = false;
		// 	play.visible = true;
		// 	menu.visible = true;
		// }, this);
	}
	update(){
		
		
	}
}