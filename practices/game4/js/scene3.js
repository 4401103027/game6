/** @type {Phaser.Physics.Arcade.StaticGroup} */
// var music;
var sound;
var sound_off;
// var player;
// var ball1;
// var bg2;
var tool;
var teddy1;
var loop = 0;
var animal = [];
class scene3 extends Phaser.Scene{
	constructor(){
		super('nextGame');
	}

	preload(){

        this.load.image('bgg','assets/bgg.png');
		// this.load.image('bg7','assets/bg7.png');
		
	//	this.load.image('beecute','assets/beecute.png', 35, 35);
		// this.load.image('gun','assets/cross-bow.png');
		// this.load.image('bullet', 'assets/ball.png');
     //   this.load.audio('bgmusic', 'assets/game.mp3');
		//this.load.audio('pop', 'assets/pop.mp3');
		this.load.image('frog','assets/a1.png');
		this.load.image('lion','assets/a2.png');
		this.load.image('tiger','assets/a3.png');
		this.load.image('rabbit','assets/a4.png');
		this.load.image('monkey','assets/a5.png');
		this.load.image('giraffe','assets/a6.png');
		this.load.image('machine', 'assets/machine.png');

		this.load.image('pause', 'assets/pause.png');
		// this.load.image('resume', 'assets/resume.png');
		this.load.image('sound', 'assets/sound.png');
        this.load.image('sound-off', 'assets/sound-off.png')

		// for (var i = 0; i < 26; i++) {
		// 	this.load.image('ball-' + keys[i],'assets/ball' + keys[i] + '.png');
		// }
		
	}

	create(){
	//	this.add.image(600, 350, "bg7");
       this.add.image(600, 350, "bgg");


		var pause = this.add.sprite( 1000, 50, 'pause').setInteractive().on('pointerdown', () => {this.scene.start('playGame');
	});

		this.add.image(700, 300, "machine");
		tool = this.add.sprite(700, 100, "tool");
		// if (wrong == false)
		// 	this.add.image(700,500, words[index]);
		index += 1;
		


        // 120 seconds
		this.initialTime = 220;

	var text = this.add.text(20, 32, formatTime(this.initialTime), { font: '80px Arial Black',  color: '#ff0000' });
	text.visible = false;
		// Each 1000 ms call onEvent
		var timedEvent = this.time.addEvent({ delay: 10, callback: onEvent, callbackScope: this, loop: true });
		function formatTime(seconds){
			// Minutes
			var minutes = Math.floor(seconds/60);
			// Seconds
			var partInSeconds = seconds%60;
			// Adds left zeros to seconds
			partInSeconds = partInSeconds.toString().padStart(2,'0');
			// Returns formated time
			return `${minutes}:${partInSeconds}`;
		}		
		
		function onEvent ()
		{
			if (this.initialTime > 0) {
				this.initialTime -= 1; // One second
				text.setText(formatTime(this.initialTime));
			}
			else {
				if (index > 7) //fix 5 thanh 7
					this.scene.start('gameOver');
				else {
			this.scene.start('playGame');

				}
				
			}
		}	
		
		pause.on('pointerdown', function () {			
			timedEvent.paused = !timedEvent.paused;
		});
		this.input.on('pointerup', function (pointer) {console.log(pointer.x, pointer.y)})
	}

	update(){
		tool.y += 2;
		if (tool.y > 350 && loop == 0)
		{
			tool.y = 350;
			if (wrong == false) {
				
				this.add.image(700,500, words[index-1]);
				console.log(wrong)	
				wrong = false;
			}
			
		}
		
	}
}