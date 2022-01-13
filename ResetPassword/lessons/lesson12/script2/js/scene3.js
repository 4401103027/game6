class scene3 extends Phaser.Scene{
	constructor(){
		super('getAcquaintedS');
	}
	preload(){
		this.load.image('bg2', 'assets/background2.png');
		this.load.image('keyboard2','assets/keyboard2.png');
		this.load.image('beefinger', 'assets/bee.png');
		this.load.image('line','assets/line.png');

		for (var i = 0; i < 5; i++) {
			this.load.image('righthand' + i,'assets/right_hand' + i + '.png');
			this.load.image('lefthand' + i,'assets/left_hand' + i + '.png');
		}
		
		var char = keys[1]
		for (var i = 1; i <= 3; i++)
			this.load.image(char + i, 'assets/keys/' + char + i + '.png');
	}
	create(){
		this.add.image(600, 350, 'bg2');
		this.add.image(600, 360, 'keyboard2');
		this.add.image(450, 610, 'lefthand0');
		this.add.image(750, 610, 'righthand3');
		this.add.image(right['giua'][0], right['giua'][1], 'beefinger');
		
		var char = keys[1]
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
			if (event.keyCode === 188)
            {
				this.add.image(key[index].x, key[index].y, char + '3');
				current_key.visible = false;
				current_line.visible = false;
				
				index += 1;

				if (index == 8)
					this.scene.start('getAcquaintedD'); 
				else {
					current_key = this.add.image(key[index].x, key[index].y, char + '2');
					current_line = this.add.image(key[index].x, key[index].y + 60, 'line');
				}
            }
			else
				this.scene.start('getAcquaintedS'); 
		}, this);
	}
	update(){
		
		
	}
}