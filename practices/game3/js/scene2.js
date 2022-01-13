var blazewarriorsstatusgame = false;
var music;

var keyblue2 = {};
var keyred2 = {};

// var char = "abcdefghijklmnopqrstuvwxyz_"
var char = "asdfghjkl;_";
var words = ["ads", "fad", "fas", "sad", "fads"];
var blue_, red_;

var bigloop = 0, loop;
var label = [], row = [], r;
var word;

var x_label, y_label;
var x_char, y_char;

var index;
var current;
var currentX, currentY;
var currentIndex;

let gameOptions = {
    initialTime: 60
}

var keypress;
// var char = "QWERTYUIOPASDFGHJKLZXCVBNM_"

var count_right = 0;
var count_wrong = 0;

class scene2 extends Phaser.Scene{
	constructor(){
		super('playGame1');
	}
	preload(){
		this.load.image('bg2','assets/bg.png');
		this.load.image('rectangle','assets/rectangle.png');
		this.load.image('bg-keyboard','assets/bg-keyboard.png');
		this.load.image('keyboard','assets/bee-keyboard.png');
		this.load.image('label3','assets/label3.png');
		this.load.image('label4','assets/label4.png');

		for (var i = 0; i <= (char.length - 1); i++) {
			this.load.image('char' + char[i], 'assets/lower/char-' + char[i] + '.png');
			this.load.image('blue' + char[i], 'assets/lower/blue-' + char[i] + '.png');
			this.load.image('green' + char[i], 'assets/lower/green-' + char[i] + '.png');
			this.load.image('red' + char[i], 'assets/lower/red-' + char[i] + '.png');

			this.load.image('keyblue' + char[i], 'assets/key2/blue-' + char[i] + '.png');
			this.load.image('keyred' + char[i], 'assets/key2/red-' + char[i] + '.png');
			this.load.image('keygrey' + char[i], 'assets/key2/grey-' + char[i] + '.png');
			
		}


		// for (var i in words) {
		// 	this.load.image(words[i], 'assets/' + words[i] + '.png')
		// 	this.load.image(words[i], 'assets/' + words[i] + '1.png')
		// 	this.load.image(words[i], 'assets/' + words[i] + '2.png')
		// }

		// this.load.image('ads','assets/ads.png');
		// this.load.image('ads1','assets/ads1.png');
		// this.load.image('ads2','assets/ads2.png');

		this.load.image("energycontainer", "assets/energycontainer.png");
        this.load.image("energybar", "assets/energybar.png");

		// this.load.image('bee', 'assets/bee-cute.gif')
	}
	create(){		
		this.add.image(600, 350, 'bg2');
		// this.add.image(200, 100, 'bee');

		// this.add.image(600, 500, 'bg-keyboard').setScale(0.8);
		this.add.image(600, 500, 'keyboard').setScale(0.8);

		var x_key2 = 338, y_key2 = 472;
		// var keys = [];
		
		var row2 = "asdfghjkl;"; // hang phim giua		

		for (var i in row2) {
			this.add.image(x_key2, y_key2, 'keygrey' + char[i]).setScale(0.8);
			
			var k = row2[i]

			keyblue2[k] = this.add.image(x_key2, y_key2, 'keyblue' + char[i]).setScale(0.7);
			keyblue2[k].visible = false;

			keyred2[k] = this.add.image(x_key2, y_key2, 'keyred' + char[i]).setScale(0.7);
			keyred2[k].visible = false;

			x_key2 += 52;
		}

		keypress = this.input.keyboard.addKeys('A,S,D,F,G,H,J,K,L,Q,W,E,R,T,Y,U,I,O,P,Z,X,C,V,B,N,M');
		// console.log(char.indexOf('Q'))
		// blue_.setAlpha(0.1)

		// var word = words[Math.floor(Math.random() * words.length)];
		word = words[bigloop];
		this.addLabel(x_label, y_label, x_char, y_char)

		this.setCurrentValue();

		x_key2 = 327, y_key2 = 474;

		keyblue2[current].visible = true;
		this.addBlue(currentX, currentY);
		this.addRed(currentX, currentY);

		var wrong = '';

		this.input.keyboard.on('keydown', function (event) {
			count_right += 1;

			// if (wrong != '') {
			// 	console.log(wrong)
			// 	keyred2[wrong].visible = false; 
			// }
			for (var i in keyred2)
				keyred2[i].visible = false; 

			if (event.keyCode === current.toUpperCase().charCodeAt(0)) {
				keyblue2[current].visible = false;
				this.addGreen(currentX, currentY);
				
				blue_.visible = false;
				if (red_.visible)
					red_.visible = false;
				
				r += 1;
				currentIndex = row[r];
								
				if (index < word.length - 1) {
					currentX = currentIndex.x;

					// set current-char
					index += 1;
					current = word[index];

					keyblue2[current].visible = true;
					this.addBlue(currentX, currentY);
					this.addRed(currentX, currentY);
				}
				else {
					if (loop < 3) {
						index = 0; 
						current = word[index];
						currentX = currentIndex.x;
						loop += 1;
						
						label[loop].setAlpha(1)
						
						keyblue2[current].visible = true;
						this.addBlue(currentX, currentY);
						this.addRed(currentX, currentY);
					}
					else {
						bigloop += 1;
						if (bigloop < words.length) {
							// word = words[Math.floor(Math.random() * words.length)];
							word = words[bigloop];
							label = [];
							row = []
							this.addLabel(x_label, y_label, x_char, y_char);

							this.setCurrentValue()

							keyblue2[current].visible = true;
							this.addBlue(currentX, currentY)
							this.addRed(currentX, currentY)
						}
						else {
							this.scene.start('gameOver')
						}
					}
				}
			}
			// if wrong
			else {
				count_wrong += 1;
				this.add.image(currentX, currentY, 'red' + current).setScale(0.7);
				red_.visible = true;

				if (keypress.A.isDown) { wrong = showWrong('a') }
				if (keypress.S.isDown) { wrong = showWrong('s') }
				if (keypress.D.isDown) { wrong = showWrong('d') }
				if (keypress.F.isDown) { wrong = showWrong('f') }

				function showWrong(k){
					wrong = k;
					keyred2[k].visible = true; 
					return wrong;
				}

			}
        }, this);

		// --time--
		this.timeLeft = gameOptions.initialTime;
 
        // the energy container. A simple sprite
        // let energyContainer = this.add.sprite(game.config.width / 2, game.config.height / 2 + 250, "energycontainer");
		let energyContainer = this.add.sprite(game.config.width / 2, 80, "energycontainer");
 
        // the energy bar. Another simple sprite
        let energyBar = this.add.sprite(energyContainer.x + 46, energyContainer.y, "energybar");
 
        // a copy of the energy bar to be used as a mask. Another simple sprite but...
        this.energyMask = this.add.sprite(energyBar.x, energyBar.y, "energybar");
 
        // ...it's not visible...
        this.energyMask.visible = false;
 
        // and we assign it as energyBar's mask.
        energyBar.mask = new Phaser.Display.Masks.BitmapMask(this, this.energyMask);
 
        // a boring timer.
        this.gameTimer = this.time.addEvent({
            delay: 1000,
            callback: function(){
                this.timeLeft --;
 
                // dividing enery bar width by the number of seconds gives us the amount
                // of pixels we need to move the energy bar each second
                let stepWidth = this.energyMask.displayWidth / gameOptions.initialTime;
 
                // moving the mask
                this.energyMask.x -= stepWidth;
                if(this.timeLeft == 0){
                    this.scene.start("gameOver")
                }
            },
            callbackScope: this,
            loop: true
        });
		// --end time--

	}
	update(){
			
	}

	addLabel(x_label, y_label, x_char, y_char) {
		this.add.image(600, 250, 'rectangle')
		
		// show label ngang
		var stepx
		if (word.length == 3) {
			x_label = 230, y_label = 250;
			x_char = x_label - 50, y_char = y_label;
			stepx = 250;
		}
		else {
			x_label = 150, y_label = 250;
			x_char = x_label - 70, y_char = y_label;
			stepx = 300;
		}
		for (var i = 0; i < 4; i++) {
			label.push(this.add.image(x_label, y_label, word.length == 3 ? 'label3': 'label4').setScale(0.8));
			if (i > 0)	label[i].setAlpha(0.8)
			x_label += stepx;

			for (var j in word) {
				row.push(this.add.image(x_char, y_char, 'char' + word[j]).setScale(0.7)); 
				x_char += 50;
			}
			x_char += 100;
		}
		
		// show label dọc
		// x_label = 600, y_label = 100;
		// x_char = 550, y_char = 100;

		// for (var i = 0; i < 4; i++) {
		// 	label.push(this.add.image(x_label, y_label, 'label').setScale(0.8));
		// 	y_label += 100;

		// 	x_char = 550;
		// 	for (var j in word) {
		// 		row.push(this.add.image(x_char, y_char, 'char' + word[j]).setScale(0.7)); 
		// 		x_char += 50;
		// 	}
		// 	y_char += 100;
		// }
	}

	setCurrentValue() {
		index = 0, r = 0;
		currentIndex = row[r];
		current = word[index];
		currentX = currentIndex.x;
		currentY = currentIndex.y;
		loop = 0;
	}

	addBlue(x, y) {
		this.add.image(x, y, 'blue' + current).setScale(0.7);
		blue_ = this.add.image(x, y + 30, 'blue_').setScale(0.7);
	}

	addRed(x, y) {
		red_ = this.add.image(x, y + 30, 'red_').setScale(0.7); 
		red_.visible = false;
	}

	addGreen(x, y) {
		this.add.image(x, y, 'green' + current).setScale(0.7);
	}

	newword() {
		
	}
}