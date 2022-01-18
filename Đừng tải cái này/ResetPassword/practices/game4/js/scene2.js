/** @type {Phaser.Physics.Arcade.StaticGroup} */
// var music;
var sound;
var sound_off;

// var spacebar;

var words = ["frog", "lion", "tiger", "rabbit", "monkey", "giraffe"];
var label = [], row = [], r;
var word;

var x_label, y_label;
var x_char, y_char;

var index = 0;

var wrong;
var check_score=false;
var sco = 0;


class scene2 extends Phaser.Scene{
	constructor(){
		super('playGame');
	}

	preload(){
        this.load.image('bgg','assets/bgg.png');
		this.load.image('tool', 'assets/tool.png');
		this.load.image('machine1', 'assets/machine1.png');
		this.load.image('coin', 'assets/coin.png');
		this.load.image('coin2', 'assets/coin2.png');
		this.load.image('bar', 'assets/bar.png');
		this.load.image('right', 'assets/right.png');
		this.load.image('wrong', 'assets/wrong.png');
		this.load.image('text', 'assets/text.png');


		// this.load.image('pause', 'assets/pause.png');
		// this.load.image('resume', 'assets/resume.png');
		this.load.image('sound', 'assets/sound.png');
        this.load.image('sound-off', 'assets/sound-off.png')

		var keys = "abefgiklmnorty";
		for (var i in keys) {
			this.load.image('w_'+keys[i], 'assets/word/w_'+keys[i]+'.png');
			this.load.image(keys[i], 'assets/word/w_'+keys[i]+'.png');
		}
	}

	create(){
		wrong = false;
        this.add.image(600, 350, "bgg");
		var right = this.physics.add.sprite(500, 500, 'right').setInteractive();
		var wrongs = this.physics.add.sprite(500, 500, 'wrong').setInteractive();
		
		right.visible = false
		wrongs.visible = false
		var text1 = this.physics.add.sprite(600, 100, 'text').setInteractive();
		text1.visible = false
		var machine1 = this.physics.add.sprite(800, 500, 'machine1').setInteractive();
		var coin = this.physics.add.sprite(120, 200, 'coin').setInteractive();
		var coin2 = this.add.image(120, 200, 'coin2');

		coin.visible = false

		this.add.image(450, 200, "bar");
		// console.log(score);
		// var right_key = {}
		// // for (var i in keys){
		// // 	right_key[keys[i]] = this.add.image(x0, 200, 'w_' + keys[i]).setScale(0.8);
		// // 	right_key[keys[i]].visible = false; 
		// // 	x0 += 56;
		// // }

		word = words[index]
		var char = []
		
		var x1 = 350, y1 = 210;
		for (var i = 0; i <= word.length; i++) {
			char.push(this.add.image(x1, y1, word[i])); 
			x1 += 50;
		}
		
		var index_key = 0
		var current = word[index_key]
		this.input.keyboard.on('keydown', function (event) {
			if (event.keyCode === current.toUpperCase().charCodeAt(0))
            {
				char[index_key].visible = false;

				if (index_key < word.length - 1) {
					index_key += 1
					current = word[index_key]
				}
				else {
					coin2.visible = false
					coin.visible = true
					text1.visible = true
					right.visible = true
					this.score += 1;
					this.scoreText.setText(this.score);
					console.log(this.score);
					sco = this.score;
					check_score=true;
				}				
            }
			else {
				wrong = true
				wrongs.visible = true
				this.scene.start('nextGame')
			}
			
		}, this);
		
		



		this.input.setDraggable(coin);
		this.input.on('dragstart', function (pointer, gameObject) {
            gameObject.setTint(0xff0000);
		//   this.children.bringToTop(gameObject);
        },this);

        this.input.on('drag', function (pointer, gameObject, dragX, dragY) {
            gameObject.x = dragX;
            gameObject.y = dragY;
        });

		this.input.on('dragenter', function (pointer, _gameObject, _dropZone) {
			gameObject.setTint(0x00ff00);
		});

        this.input.on('dragleave', function (pointer, _gameObject, _dropZone) {
			gameObject.clearTint();
		});
	
	    this.input.on('drop', function (pointer, gameObject, dropZone) {
			gameObject.x = dropZone.x;
			gameObject.y = dropZone.y;
			gameObject.setScale(0.0);
	
			gameObject.input.enabled = false;
	
			gameObject.clearTint();
		});

		// this.addLabel(x_label, y_label, x_char, y_char);

		this.physics.add.overlap(coin, machine1, () => {
			this.scene.start('nextGame');
		});

        // 120 seconds
		this.initialTime = 120;
		
		var text = this.add.text(20, 32, formatTime(this.initialTime), { font: '80px Arial Black',  color: '#ff0000' });
		
		if(!check_score)
			this.score = 0;
		
		this.scoreText = this.add.text(400, 32, this.score, {fontFamily:'Comic Sans MS', fontSize:90, color:'#FE3333'});
		// this.scoreText.setText(this.score);

		// Each 1000 ms call onEvent
		var timedEvent = this.time.addEvent({ delay: 1000, callback: onEvent, callbackScope: this, loop: true });

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
			else
				this.scene.start('gameOver'); 
		}	
	

		
//		this.input.on('pointerup', function (pointer) {console.log(pointer.x, pointer.y)})
	}

	update() {
		
	}

	
	
	
}