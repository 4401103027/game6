var level = {};
var current_level

class scene1 extends Phaser.Scene{
	constructor(){
		super('levelGame');
	}
	preload(){
		this.load.image('bg1','assets/background1.png');
		this.load.image('maze','assets/maze.png');
		this.load.image('beemaze','assets/bee_maze.png');
		this.load.image('text1','assets/text_instruct.png');
		this.load.image('play','assets/play.png');

		for (var i = 1; i <= 3; i++) {
			this.load.image('ballred' + i, 'assets/ballred' + i + '.png');
			this.load.image('ballgreen' + i, 'assets/ballgreen' + i + '.png');
			this.load.image('ballblue' + i, 'assets/ballblue' + i + '.png');
		}
	}
	create(){
		this.add.image(600, 350, 'bg1');
		this.add.image(320, 285, 'maze');
		this.add.image(90, 300, 'beemaze');
		this.add.image(920, 225, 'text1');
		var play = this.add.sprite(930, 530, 'play').setInteractive();

		var ballred1 = this.add.sprite(110, 240, 'ballred1').setInteractive();
		var ballred2 = this.add.sprite(310, 130, 'ballred2').setInteractive();
		var ballred3 = this.add.sprite(440, 80, 'ballred3').setInteractive();

		var ballgreen1 = this.add.sprite(250, 340, 'ballgreen1').setInteractive();
		var ballgreen2 = this.add.sprite(500, 340, 'ballgreen2').setInteractive();
		var ballgreen3 = this.add.sprite(470, 150, 'ballgreen3').setInteractive();

		var ballblue1 = this.add.sprite(460, 540, 'ballblue1').setInteractive();
		var ballblue2 = this.add.sprite(560, 380, 'ballblue2').setInteractive();
		var ballblue3 = this.add.sprite(590, 170, 'ballblue3').setInteractive();

		ballred1.on('pointerdown', function(){
			current_level = 'levelballred1';
			this.scene.start('playGame1');	// easy
		}, this);
		// ballred2.on('pointerdown', function(){
		// 	current_level = 'levelballred2';
		// 	this.scene.start('playGame2');	// medium
		// }, this);
		// ballred3.on('pointerdown', function(){
		// 	current_level = 'levelballred3';
		// 	this.scene.start('playGame3');	// hard
		// }, this);

		// ballgreen1.on('pointerdown', function(){
		// 	current_level = 'levelballgreen1';
		// 	this.scene.start('playGame1');
		// }, this);
		// ballgreen2.on('pointerdown', function(){
		// 	current_level = 'levelballgreen2';
		// 	this.scene.start('playGame2');
		// }, this);
		// ballgreen3.on('pointerdown', function(){
		// 	current_level = 'levelballgreen3';
		// 	this.scene.start('playGame3');
		// }, this);

		// ballblue1.on('pointerdown', function(){
		// 	current_level = 'levelballblue1';
		// 	this.scene.start('playGame1');
		// }, this);
		// ballblue2.on('pointerdown', function(){
		// 	current_level = 'levelballblue2';
		// 	this.scene.start('playGame2');
		// }, this);
		// ballblue3.on('pointerdown', function(){
		// 	current_level = 'levelballblue3';
		// 	this.scene.start('playGame3');
		// }, this);

		play.on('pointerdown', function(){
			current_level = 'levelballred1';
			this.scene.start('playGame1');
		}, this);
		
	}
	update(){
		
		
	}
}

