var blazewarriorsstatusgame = false;
var music;
var list2 = ["Hoa còn ngái ngủ", "Ong đã đến rồi", "Dậy mau đi chứ", "Kìa ông mặt trời!"];
var index = 0
var word;
var right;
var wrong;
var y;
var bee;
var checkButton;
var validText;
var text1, text2, text3, text4;
var exit;
// var flag = false;
class scene7 extends Phaser.Scene{
	constructor(){
		super('playGame2');
	}
	preload(){

		this.load.image('bg7','assets/bg7.png');
		this.load.image('c1', 'assets/c1.png');
		this.load.image('c2', 'assets/c2.png');
		// this.load.image('input','assets/input.png');
		// this.load.image('check', 'assets/check.png');
		// this.load.image('k1d1', 'assets/k1d1.png');
		// this.load.image('k1d2', 'assets/k1d2.png');
		// this.load.image('k1d3', 'assets/k1d3.png');
		// this.load.image('k1d4', 'assets/k1d4.png');
		this.load.image('right', 'assets/right.png');
		this.load.image('wrong', 'assets/wrong.png');
		this.load.image('exit', 'assets/exit.png');

		for (var i = 0; i <= 11; i++) {
			this.load.image('check' + i, 'assets/check' + i + '.png');
		}
	}
	create(){
		this.add.image(610, 350, 'bg7');
		this.add.image(580, 210, 'c1');
		this.add.image(580, 460, 'c2');
		
		// this.add.image(620, 620, "input");

		

		
	}
	update(){
		
	}
}