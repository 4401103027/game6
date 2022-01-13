class scene3 extends Phaser.Scene{
	constructor(){
		super('gameOver');
	}
	preload(){
		this.load.image('bg','assets/bg-end.png');
		this.load.image('3star','assets/stars.png');
		this.load.image('jar','assets/jar.png');
    }
	create(){	
		blazewarriorsstatusgame = true;
		console.log(blazewarriorsstatusgame)
		this.add.image(600, 350, 'bg')
		this.add.image(600, 200, '3star')
		this.add.image(100, 100, 'jar').setScale(0.4);
		this.add.image(100, 600, 'jar').setScale(0.4);
		this.add.image(1100, 100, 'jar').setScale(0.4);
		this.add.image(1100, 600, 'jar').setScale(0.4);

		this.add.text(606, 285, '20', {
			fontFamily: 'Ballo',
			fontSize: '48px',
			color: '#f00'
		})

		this.add.text(688, 358, '100%', {
			fontFamily: 'Ballo',
			fontSize: '48px',
			color: '#f00'
		})

		this.add.text(735, 429, count_right, {
			fontFamily: 'Ballo',
			fontSize: '48px',
			color: '#f00'
		})

		this.add.text(715, 500, count_wrong, {
			fontFamily: 'Ballo',
			fontSize: '48px',
			color: '#f00'
		})
	}
	update(){	
		
	}

}