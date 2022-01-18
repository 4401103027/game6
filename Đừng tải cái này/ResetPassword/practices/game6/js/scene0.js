var blazewarriorsstatusgame = false;
var music;

class scene0 extends Phaser.Scene{
	constructor(){
		super('introGame');
	}
	preload(){
		this.load.image('bg','assets/bg.png');
		// this.load.image('title','assets/title.png');
		// this.load.image('start', 'assets/start.png');
		this.load.image('intro', 'assets/menu.png');
	
		this.load.image('start', 'assets/play.png');
		// this.load.image('menu', 'assets/menu.png');
		// this.load.image('intro1', 'assets/intro1.png');
		// this.load.audio('bgmusic', 'assets/game.mp3');
	}
	create(){
		// music = this.sound.add('bgmusic');
		// music.setLoop(true);
		// music.play();
		
		this.add.image(600, 350, 'bg');
		// this.add.image(600, 260, 'title');
		var start = this.add.sprite(990, 350, 'start').setInteractive();
		var intro = this.add.sprite(990, 490, 'intro').setInteractive();

		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		function loops()
		{
			zoomOut(start, 0.8, 1, 0.01, 10, this);
			zoomOut(intro, 0.8, 1, 0.01, 10, this);
		}

		start.on('pointerdown', function(){
			this.scene.start('levelGame');
		}, this);

		intro.on('pointerdown', function(){
			this.scene.start('intro1');
		}, this);
	}
	update(){
		
		
	}
}

