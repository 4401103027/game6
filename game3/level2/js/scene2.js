var blazewarriorsstatusgame = false;
var music;

var keyblue2 = {};
var keyred2 = {};

var lower_char_green = "abcdefgklmnrstuvwxyz";
var lower_blue_red = "_abcdefgklmnrstuvwxyz";

var key2_blue_grey_red = ";adefghijklopqrstuwy";
var key2_middle = "asdfghjkl;";
var key2_grey_up = "qwertyuiop";
var key2_blue_up = {};
var key2_red_up = {};

var words = ["few", "gel", "eds", "keg", "sale"];
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

		for (var i in lower_char_green) {
			this.load.image('char' + lower_char_green[i], 'assets/lower/char-' + lower_char_green[i] + '.png');
			this.load.image('green' + lower_char_green[i], 'assets/lower/green-' + lower_char_green[i] + '.png');
		}
		
		for (var i in lower_blue_red) {
			this.load.image('blue' + lower_blue_red[i], 'assets/lower/blue-' + lower_blue_red[i] + '.png');
			this.load.image('red' + lower_blue_red[i], 'assets/lower/red-' + lower_blue_red[i] + '.png');
		}
		
		for (var i in key2_blue_grey_red) {
			this.load.image('keyblue' + key2_blue_grey_red[i], 'assets/key2/blue-' + key2_blue_grey_red[i] + '.png');
			this.load.image('keyred' + key2_blue_grey_red[i], 'assets/key2/red-' + key2_blue_grey_red[i] + '.png');
			this.load.image('keygrey' + key2_blue_grey_red[i], 'assets/key2/grey-' + key2_blue_grey_red[i] + '.png');
		}

		this.load.image("energycontainer", "assets/energycontainer.png");
        this.load.image("energybar", "assets/energybar.png");
	}
	create(){		
		this.add.image(600, 350, 'bg2');
		this.add.image(600, 500, 'keyboard').setScale(0.8);

		var x_key2 = 338, y_key2 = 472;
		
		var row2 = "asdfghjkl;"; // hang phim giua
		for (var i in row2) {
			this.add.image(x_key2, y_key2, 'keygrey' + key2_middle[i]).setScale(0.8);			
			
			var k = row2[i]
			
			keyblue2[k] = this.add.image(x_key2, y_key2, 'keyblue' + key2_middle[i]).setScale(0.7);
			keyblue2[k].visible = false;			
			
			keyred2[k] = this.add.image(x_key2, y_key2, 'keyred' + key2_middle[i]).setScale(0.7);
			keyred2[k].visible = false;			
			
			x_key2 += 52;
		}

		var row3 = "qwertyuiop"; // hang phim trên
		var x_key2_up = 312, y_key2_up = 415;
		for(var i in row3){
			this.add.image(x_key2_up, y_key2_up, 'keygrey' + key2_grey_up[i]).setScale(0.8);
			
			var k = row3[i]

			key2_blue_up[k] = this.add.image(x_key2_up, y_key2_up, 'keyblue' + key2_grey_up[i]).setScale(0.7);
			key2_blue_up[k].visible = false;
			
			key2_red_up[k] = this.add.image(x_key2_up, y_key2_up, 'keyred' + key2_grey_up[i]).setScale(0.7);
			key2_red_up[k].visible = false;

			x_key2_up += 52;
		}
		
		keypress = this.input.keyboard.addKeys('A,S,D,F,G,H,J,K,L,Q,W,E,R,T,Y,U,I,O,P,Z,X,C,V,B,N,M,;');

		word = words[bigloop];
		this.addLabel(x_label, y_label, x_char, y_char)
		
		this.setCurrentValue();
		
		x_key2 = 327, y_key2 = 474;
		
		
		for(var i in key2_middle){
			if(current == key2_middle[i]){
				keyblue2[current].visible = true;
				break;				
			}
			else if(current == key2_grey_up[i]){
				key2_blue_up[current].visible = true;
				break;
			}
		}
		
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
				
			for (var i in key2_red_up)
				key2_red_up[i].visible = false;

			if (event.keyCode === current.toUpperCase().charCodeAt(0)) {
				
				for(var i in key2_middle){
					if(current == key2_middle[i]){
						keyblue2[current].visible = false;
						break;				
					}
					else if(current == key2_grey_up[i]){
						key2_blue_up[current].visible = false;
						break;
					}
				}
				
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

					for(var i in key2_middle){
						if(current == key2_middle[i]){
							keyblue2[current].visible = true;
							break;				
						}
						else if(current == key2_grey_up[i]){
							key2_blue_up[current].visible = true;
							break;
						}
					}
					
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
						
						for(var i in key2_middle){
							if(current == key2_middle[i]){
								keyblue2[current].visible = true;
								break;				
							}
							else if(current == key2_grey_up[i]){
								key2_blue_up[current].visible = true;
								break;
							}
						}

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

							for(var i in key2_middle){
								if(current == key2_middle[i]){
									keyblue2[current].visible = true;
									break;				
									}
								else if(current == key2_grey_up[i]){
									key2_blue_up[current].visible = true;
									break;
								}
							}

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
				if (keypress.G.isDown) { wrong = showWrong('g') }
				if (keypress.H.isDown) { wrong = showWrong('h') }
				if (keypress.J.isDown) { wrong = showWrong('j') }
				if (keypress.K.isDown) { wrong = showWrong('k') }
				if (keypress.L.isDown) { wrong = showWrong('l') }
				if (keypress.Q.isDown) { wrong = showWrong('q') }
				if (keypress.W.isDown) { wrong = showWrong('w') }
				if (keypress.E.isDown) { wrong = showWrong('e') }
				if (keypress.R.isDown) { wrong = showWrong('r') }
				if (keypress.T.isDown) { wrong = showWrong('t') }
				if (keypress.Y.isDown) { wrong = showWrong('y') }
				if (keypress.U.isDown) { wrong = showWrong('u') }
				if (keypress.I.isDown) { wrong = showWrong('i') }
				if (keypress.O.isDown) { wrong = showWrong('o') }
				if (keypress.P.isDown) { wrong = showWrong('p') }
				

				function showWrong(k){
					wrong = k;
					for(var i in key2_middle){
						if(k == key2_middle[i]){
							keyred2[k].visible = true; 
							break;				
						}
						else if(k == key2_grey_up[i]){
							key2_red_up[k].visible = true;
							break;
						}
					}
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