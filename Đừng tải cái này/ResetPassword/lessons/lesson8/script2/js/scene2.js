// TAY TRÁI
var left = {
	'cai': [572, 610],
	'tro': [500, 510],
	'giua': [435, 490],
	'ap': [382, 510],
	'ut': [338, 560],
}

// TAY PHẢI
var right = {
	'cai': [625, 610],
	'tro': [699, 510],
	'giua': [764, 490],
	'ap': [818, 510],
	'ut': [865, 560],
}

// <-- edit dữ liệu -->
var keys = 'uiop'
// <-- end edit -->

class scene2 extends Phaser.Scene{
	constructor(){
		super('getAcquaintedA');
	}
	preload(){
		this.load.image('bg2', 'assets/background2.png');
		this.load.image('keyboard1','assets/keyboard1.png');
		this.load.image('beefinger', 'assets/bee.png');
		this.load.image('line','assets/line.png');

		for (var i = 0; i < 5; i++) {
			this.load.image('righthand' + i,'assets/right_hand' + i + '.png');
			this.load.image('lefthand' + i,'assets/left_hand' + i + '.png');
		}

		var char = keys[0]
		for (var i = 1; i <= 3; i++)
			this.load.image(char + i, 'assets/keys/' + char + i + '.png');
	}
	create(){
		this.add.image(600, 350, 'bg2');
		this.add.image(600, 360, 'keyboard1');
		this.add.image(450, 610, 'lefthand0');
		this.add.image(750, 610, 'righthand4');
		this.add.image(right['tro'][0], right['tro'][1], 'beefinger');
		var char = keys[0]

		var key = [];
		var x = 250;
		var y = 100;
		for (var i = 0; i < 8; i++) {
			key[i] = this.add.image(x, y, char + '1'); x += 100;
		}
		var index = 0;
		var current_key = this.add.image(key[0].x, key[0].y, char + '2');
		var current_line = this.add.image(key[0].x, key[0].y + 60, 'line');
		
		this.input.keyboard.on('keydown', function (event) {
			console.log(event.keyCode)
			if (event.keyCode === char.toUpperCase().charCodeAt(0))
            {
				this.add.image(key[index].x, key[index].y, char + '3');
				current_key.visible = false;
				current_line.visible = false;
				
				index += 1;

				if (index == 8)
					this.scene.start('getAcquaintedS'); 
				else {
					current_key = this.add.image(key[index].x, key[index].y, char + '2');
					current_line = this.add.image(key[index].x, key[index].y + 60, 'line');
				}
            }
			else
				this.scene.start('getAcquaintedA'); 
		}, this);
	}
	update(){
		
		
	}
}