var blazewarriorsstatusgame = false;
var music;

class scene0 extends Phaser.Scene{
	constructor(){
		super('introGame');
	}
	preload(){
		
		// this.load.image('bg','assets/background.png');
		// this.load.image('play', 'assets/play.png');
		// this.load.image('more', 'assets/more.png');
		// this.load.image('menu', 'assets/menu.png');
		// this.load.image('exit', 'assets/exit.png')
		// this.load.image('logo', 'assets/logo.png');
		this.load.audio('bgmusic', 'assets/game.mp3');
		this.load.image('bg9','assets/bg9.png');
		this.load.image('start', 'assets/start.png');
		this.load.image('more', 'assets/more.png');
		this.load.image('menu', 'assets/menu.png');
	}
	create(){
	//	this.add.text(50, 100, "Trò chơi Ong vàng bắn bong bóng", { font: "40px Times New Roman", fill: "#ffa0d0"});
		music = this.sound.add('bgmusic');
		music.setLoop(true);
		music.play();
		
		this.add.image(630, 350, 'bg9');


		// this.add.image(300, 270, 'logo');
	
		// var more = this.add.sprite(600, 350, 'more').setInteractive();
		// more.visible = false;
		// var menu = this.add.sprite(500, 300, 'menu').setInteractive();
		var start = this.add.sprite(480, 420, 'start').setInteractive();
		var menu = this.add.sprite(830, 420, 'menu').setInteractive();
		var more = this.add.sprite(300, 230, 'more').setInteractive();
		more.visible = false;
		// var exit = this.add.sprite(550, 130, 'exit').setInteractive();
		// exit.visible = false;
		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		
		function loops()
		{
			zoomOut(start, 0.8, 1.1, 0.01, 10, this);
			zoomOut(menu, 0.8, 1.1, 0.01, 10, this);
		}
		start.on('pointerdown', function(){
			this.scene.start('playGame');
		}, this);
		
		menu.on('pointerdown', function(){
			more.visible = true;
			// exit.visible = true;
			// play.visible = false;
			menu.visible = false;
		}, this);
		
		this.input.on('pointerup', function (pointer) {console.log(pointer.x, pointer.y)})


	}
	update(){
		
		
	}
}

