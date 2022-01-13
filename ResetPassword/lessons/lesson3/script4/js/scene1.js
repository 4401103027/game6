var blazewarriorsstatusgame = false;
var music;

class scene1 extends Phaser.Scene{
	constructor(){
		super('introGame');
	}
	preload(){
		this.load.image('start','assets/start.png');
		this.load.image('bg', 'assets/background.png');	
		this.load.audio('bgmusic', 'assets/happy.mp3');	
	}
	create(){	
		music = this.sound.add('bgmusic');
		music.setLoop(true);
		music.play();

		this.add.image(600, 350, 'bg');

		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		var start = this.add.sprite(600, 540, 'start').setInteractive();
        function loops()
		{
			zoomOut(start, 0.8, 1.1, 0.01, 10, this);
		}

        start.on('pointerdown', function(){
			this.scene.start('playGame');
		}, this);
	}
	update(){	
		
	}

}