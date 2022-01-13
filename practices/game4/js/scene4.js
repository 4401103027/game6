class scene4 extends Phaser.Scene{
	constructor(){
		super('gameOver');
	}
	preload(){
		// this.load.image('bee','assets/ong-ham-hoc.png');
		this.load.image('bg-win','assets/bg-win.png');
		this.load.image('1star','assets/1star.png');
		this.load.image('2star', 'assets/2star.png');
		this.load.image('3star', 'assets/3star.png');
    }
	create(){	
        this.add.image(600, 350, 'bg-win').setScale(0.6);
     	var star3 = this.add.image(600, 300, '3star').setScale(0.6).setInteractive();
		star3.visible = false
		var star2 = this.add.image(600, 300, '2star').setScale(0.6).setInteractive();
		star2.visible = false
		var star = this.add.image(600, 300, '1star').setScale(0.6).setInteractive();
		star.visible = false
		console.log("f"+sco);
		if (sco > 6)
			star3.visible = true;
			// console.log(this.score);
		else if (sco < 6 && sco > 4)
			star2.visible = true;	
			
		else
			star.visible = true;
			// console.log(this.score);
		// this.add.image(900, 200, 'bee');

		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		
		function loops()
		{
			zoomOut(star3, 0.8, 1.1, 0.01, 10, this);
			zoomOut(star2, 0.8, 1.1, 0.01, 10, this);
			zoomOut(star, 0.8, 1.1, 0.01, 10, this);
		}

		// this.add.image(900, 200, 'bee');

		// var t = "Bây giờ các bạn hãy cùng chị tập gõ phím nhé, chúng ta cần mau mau hoàn thành mỗi phím trước 10 giây đó!"
		// this.add.text(100, 32, t, { font: '16px Arial',  color: '#ff0000' });

		// var bt_continue = this.add.sprite(600, 540, 'continue').setScale(0.8).setInteractive();

		// this.input.keyboard.on('keydown-ENTER', function (event) {
		// 	this.scene.start('getAcquaintedA'); 
		// }, this);

		//this.input.on('pointerup', function (pointer) {console.log(pointer.x, pointer.y)})
	}
	update(){	
		
	}

}