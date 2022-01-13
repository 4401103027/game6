var blazewarriorsstatusgame = false;
var music;

class scene1 extends Phaser.Scene{
	constructor(){
		super('levelGame');
	}
	preload(){
		this.load.image('bg2','assets/bg2.png');
		this.load.image('level1', 'assets/level1.png');
		this.load.image('level2', 'assets/level2.png');
		this.load.image('level3', 'assets/level3.png');
		
	}
	create(){
		this.add.image(600, 350, 'bg2');

		// var x = 230, y = 150;
		// for (var i = 1; i <= 12; i++) {
		// 	level[i] = this.add.sprite(x, y, 'level' + i).setInteractive();

		// 	if (i == 4 || i == 8) {
		// 		x = 230;
		// 		y += 200;
		// 	}
		// 	else
		// 		x += 250;
		// }
		var level1 = this.add.sprite(200, 360, 'level1').setInteractive();

		level1.on('pointerdown', function(){
			this.scene.start('playGame1');
		}, this);

		var level2 = this.add.sprite(610, 360, 'level2').setInteractive();

		level2.on('pointerdown', function(){
			this.scene.start('playGame2');
		}, this);

		var level3 = this.add.sprite(1000, 360, 'level3').setInteractive();

		level3.on('pointerdown', function(){
			this.scene.start('playGame3');
		}, this);

		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		function loops()
		{
			zoomOut(level1, 0.8, 1, 0.01, 10, this);
			zoomOut(level2, 0.8, 1, 0.01, 10, this);
			zoomOut(level3, 0.8, 1, 0.01, 10, this);
		}
		// level[2].on('pointerdown', function(){
		// 	this.scene.start('playGame2');
		// }, this);
		
		// level[3].on('pointerdown', function(){
		// 	this.scene.start('playGame3');
		// }, this);

		// level[4].on('pointerdown', function(){
		// 	this.scene.start('playGame4');
		// }, this);

		// level[5].on('pointerdown', function(){
		// 	this.scene.start('playGame5');
		// }, this);

		// level[6].on('pointerdown', function(){
		// 	this.scene.start('playGame6');
		// }, this);

		// level[7].on('pointerdown', function(){
		// 	this.scene.start('playGame7');
		// }, this);

		// level[8].on('pointerdown', function(){
		// 	this.scene.start('playGame8');
		// }, this);
		
		// level[9].on('pointerdown', function(){
		// 	this.scene.start('playGame9');
		// }, this);

		// level[10].on('pointerdown', function(){
		// 	this.scene.start('playGame10');
		// }, this);

		// level[11].on('pointerdown', function(){
		// 	this.scene.start('playGame11');
		// }, this);

		// level[12].on('pointerdown', function(){
		// 	this.scene.start('playGame12');
		// }, this);
	}
	update(){
		
		
	}
}