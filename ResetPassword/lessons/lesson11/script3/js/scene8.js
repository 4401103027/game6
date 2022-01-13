class scene8 extends Phaser.Scene{
	constructor(){
		super('endGame');
	}
	preload(){
		this.load.image('jar_q','assets/jar_q.png');
		this.load.image('jar','assets/jar.png');
		this.load.image('1star','assets/1star.png');
		this.load.image('2star', 'assets/2star.png');
		this.load.image('3star', 'assets/3star.png');
		this.load.image('replay','assets/replay.png');
	}
	create(){
		blazewarriorsstatusgame = true;

		var width = game.config.width
		var height = game.config.height

		// for (var i = 0; i < 5; i++) {
		// 	this.add.image(width - (835 - 170*i), height - 620, 'jar_q');
		// 	var j = this.add.image(width - (835 - 170*i), height - 620, 'jar');
		// 	if (jar[i] == 0)
		// 		j.visible = false
		// }

		var star3 = this.add.image(width/2, height/2 - 100, '3star');	star3.visible = false
		var star2 = this.add.image(width/2, height/2 - 100, '2star'); star2.visible = false
		var star = this.add.image(width/2, height/2 - 100, '1star'); star.visible = false

		var count1 = 0; 
		for(var i = 0; i < jar.length; ++i) 
			if(jar[i] == 1) count1 ++; 

		if (count1 == 5)
			star3.visible = true;
		else if (count1 >= 3)
			star2.visible = true;
		else
			star.visible = true;

		var replay = this.add.sprite(width/2, height/2 + 200, 'replay').setInteractive();

		replay.on('pointerdown', function(){
			for(var i = 0; i < jar.length; ++i) 
				jar[i] = 0;
			this.scene.start('introGame');
		}, this);
	}
	update(){
		
		
	}
}