class scene4 extends Phaser.Scene{
	constructor(){
		super('loseGame');
	}
	preload(){
		this.load.image('bg4','assets/background4.png');
        this.load.image('box', 'assets/box.png');
		this.load.image('1star','assets/1star.png');
		this.load.image('replay', 'assets/replay.png');
    }
	create(){	
    	this.add.image(600, 350, 'bg4');
        this.add.image(600, 350, 'box');
       	var star1 = this.add.image(600, 350, '1star');
        var replay = this.add.sprite(600, 600, 'replay').setInteractive();

		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
        function loops()
		{
			zoomOut(star1, 0.8, 1.1, 0.01, 10, this);
		}

        replay.on('pointerdown', function(){
			this.scene.start('introGame');
		}, this);
	}
	update(){	
		
	}

}