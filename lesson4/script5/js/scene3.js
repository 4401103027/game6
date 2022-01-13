// <--chỗ đổ dữ liệu-->
var list2 = [
	'jj jk jl j;',
	'kj kk kl k;',
	'lj lk ll l;',
	 ';j ;k ;l ;;',
]
var list2_index = 0;
// <--end chỗ đổ dữ liệu-->

class scene3 extends Phaser.Scene{
	constructor(){
		super('playGame2');
	}
	preload(){
		this.load.image('bg2', 'assets/background2.png');
		this.load.image('keyboard','assets/keyboard.png');
		this.load.image('righthand4','assets/right_hand1.png');
		this.load.image('beefinger1', 'assets/beefinger1.png');
		this.load.image('beefinger2', 'assets/beefinger2.png');
		this.load.image('2beefinger', 'assets/2beefinger.png');
		this.load.image('false', 'assets/false.png');

		this.load.image('label1','assets/label1.png');
		this.load.image('label2','assets/label2.png');
		this.load.image('label3','assets/label3.png');
		this.load.image('line1','assets/line1.png');
		this.load.image('line2','assets/line2.png');
		this.load.image('star1','assets/star1.png');
		this.load.image('star2','assets/star2.png');

		for (var i in keys) {
			this.load.image(keys[i], 'assets/keys/' + keys[i] + '.png'); // Phím
			this.load.image(keys[i] + '1', 'assets/keys/' + keys[i] + '1.png'); // Trạng thái chưa gõ
			this.load.image(keys[i] + '2', 'assets/keys/' + keys[i] + '2.png'); // Trạng thái đã gõ

			this.load.image(keys[i] + '_char1', 'assets/char/' + keys[i] + '1.png'); // Trạng thái chưa gõ list2
			this.load.image(keys[i] + '_char2', 'assets/char/' + keys[i] + '2.png'); // Trạng thái đã gõ list2
		}

		this.load.image('space','assets/keys/space.png'); // Phím spacebar
		this.load.image('space_char1','assets/char/space1.png');
		this.load.image('space_char2','assets/char/space2.png');

		for (var i = 0; i <= 5; i++) {
			this.load.image('lefthand' + i, 'assets/left_hand' + i + '.png');
			this.load.image('righthand' + i, 'assets/right_hand' + i + '.png');
		}
	}
	create(){
		this.add.image(600, 350, 'bg2');
		this.add.image(600, 100, 'label2');
		this.add.image(600, 360, 'keyboard');

		// HIỆN PHÍM CẦN GÕ
		var x_key = 674, y_key = 314;
		var key = {}
		for (var i in keys) {
			key[keys[i]] = this.add.image(x_key, y_key, keys[i]);
			key[keys[i]].visible = false;
			x_key += 65;
		}

		key[' '] = this.add.image(598, 450, 'space');
		key[' '].visible = false;

		// HIỆN 4 TỪ GỒM 2 KÝ TỰ
		var str = list2[list2_index];
		var x_char = 375, y_char = 90;
		var char = []
		for (var i in str) {
			if (str[i] == ' ') {
				x_char += 10;
				char.push(this.add.image(x_char, y_char, 'space_char1'));
				x_char += 50;
			}
			else {
				char.push(this.add.image(x_char, y_char, str[i] + '_char1'));
				x_char += 40;
			}
		}

		var index = 0;
		var current_char = str[index]
		var current_line = this.add.image(char[index].x, char[index].y + 40, 'line2');
		// this.add.image(char[index].x - 25, char[index].y - 33, 'star1')
		key[current_char].visible = true;
		this.bee_finger(current_char);

		keypress = this.input.keyboard.addKeys('A,S,D,F,G,H,J,K,L,;,Q,W,E,R,T,Y,U,I,O,P,Z,X,C,V,B,N,M');
		var wrong = '';

		this.input.keyboard.on('keydown', function (event) {
			if (wrong != '') {
				wrong.visible = false;
			}
			if (event.keyCode === str[index].toUpperCase().charCodeAt(0)|| event.keyCode == 186)
			{
				if (current_char == ' ')
					this.add.image(char[index].x, char[index].y, 'space_char2');
				else
					this.add.image(char[index].x, char[index].y, current_char + '_char2');
				// this.add.image(char[index].x - 25, char[index].y - 33, 'star2')
				current_line.visible = false;
				key[current_char].visible = false;
				beefinger.visible = false;

				index += 1;

				if (index == str.length) {
					list2_index += 1;

					if (list2_index == list2.length)
						this.scene.start('playGame3')
					else
						this.scene.start('playGame2');
				}
				else {
					current_char = str[index]
					current_line = this.add.image(char[index].x, char[index].y + 40, 'line2');
					// this.add.image(char[index].x - 25, char[index].y - 33, 'star1')
					key[current_char].visible = true;
					this.bee_finger(current_char);
				}
			}
			else {
				// if (keypress.A.isDown) { wrong = showWrong(wrong, wrong_key['a']) }
				// if (keypress.S.isDown) { wrong = showWrong(wrong, wrong_key['s']) }
				// if (keypress.D.isDown) { wrong = showWrong(wrong, wrong_key['d']) }
				// if (keypress.F.isDown) { wrong = showWrong(wrong, wrong_key['f']) }

				wrong = this.add.image(600, 100, 'false');
			}
		}, this);

		// function showWrong(w, key){
		// 	w = key;
		// 	w.visible = true; 
		// 	return w;
		// }


		this.input.on('pointerup', function (pointer) {console.log(pointer.x, pointer.y)})	
	}
	update(){
		
	}

	bee_finger(current_char) {
		switch(current_char) {
			// left hand
			case 'a':
			case 'q':
			case 'z':
				this.add.image(750, 610, 'righthand0');
				this.add.image(450, 610, 'lefthand1');
				beefinger = this.add.image(left['ut'][0], left['ut'][1], 'beefinger1');
				break;
			case 's':
			case 'w':
			case 'x':
				this.add.image(750, 610, 'righthand0');
				this.add.image(450, 610, 'lefthand2');
				beefinger = this.add.image(left['ap'][0], left['ap'][1], 'beefinger1');
				break;
			case 'd':
			case 'e':
			case 'c':
				this.add.image(750, 610, 'righthand0');
				this.add.image(450, 610, 'lefthand3');
				beefinger = this.add.image(left['giua'][0], left['giua'][1], 'beefinger1');
				break;
			case 'f':
			case 'r':
			case 'v':
			case 't':
			case 'g':
			case 'b':
				this.add.image(750, 610, 'righthand0');
				this.add.image(450, 610, 'lefthand4');		
				beefinger = this.add.image(left['tro'][0], left['tro'][1], 'beefinger1');
				break;
			// right hand	
			case ';':
			case 'p':
			case '/':
				this.add.image(450, 610, 'lefthand0');
				this.add.image(750, 610, 'righthand1');
				beefinger = this.add.image(right['ut'][0], right['ut'][1], 'beefinger2');
				break;
			case 'l':
			case 'o':
			case '.':
				this.add.image(450, 610, 'lefthand0');
				this.add.image(750, 610, 'righthand2');
				beefinger = this.add.image(right['ap'][0], right['ap'][1], 'beefinger2');
				break;
			case 'k':
			case 'i':
			case ',':
				this.add.image(450, 610, 'lefthand0');
				this.add.image(750, 610, 'righthand3');
				beefinger = this.add.image(right['giua'][0], right['giua'][1], 'beefinger2');
				break;			
			case 'j':
			case 'u':
			case 'm':
			case 'y':
			case 'h':
			case 'n':
				this.add.image(450, 610, 'lefthand0');
				this.add.image(750, 610, 'righthand4');		
				beefinger = this.add.image(right['tro'][0], right['tro'][1], 'beefinger2');	
				break;
			case ' ':
				this.add.image(450, 610, 'lefthand5');	
				this.add.image(750, 610, 'righthand5');	
				beefinger = this.add.image(right['cai'][0], right['cai'][1], '2beefinger');
				break;
		}
	}
}