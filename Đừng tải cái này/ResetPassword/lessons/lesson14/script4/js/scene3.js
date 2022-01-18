class scene3 extends Phaser.Scene{
	constructor(){
		super('endGame');
	}
	preload(){
		this.load.image('bg2','assets/background2.png');
		this.load.image('text','assets/text.png');
		this.load.image('stars','assets/3stars.png');
    }
	create(){	
		blazewarriorsstatusgame = true;
		
        this.add.image(600, 350, 'bg2');
		this.add.image(420, 235, 'text');
        var stars = this.add.image(420, 410, 'stars');

		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
        function loops()
		{
			zoomOut(stars, 0.8, 1.1, 0.01, 10, this);
		}
	}
	update(){	
		
	}

}