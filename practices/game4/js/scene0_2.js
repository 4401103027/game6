class scene0_2 extends Phaser.Scene{
	constructor(){
		super('intro2');
	}
	preload(){
		this.load.image('bg1','assets/bg1.png');
		this.load.image('intro_text', 'assets/intro_text.png');
		this.load.image('arrow2','assets/arrow2.png');
	}
	create(){
		this.add.image(600, 350, 'bg1');
		this.add.image(600, 350, 'intro_text');
		var arrow = this.add.sprite(600, 600, 'arrow').setInteractive();

		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		function loops()
		{
			zoomOut(arrow, 0.8, 1, 0.01, 10, this);
		}

		arrow.on('pointerdown', function(){
			this.scene.start('introGame');
		}, this);
	}
	update(){
		
		
	}
}

