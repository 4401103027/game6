let gameOptions = {
	initialTime: 60
}
this.timeLeft = gameOptions.initialTime;

class scene2 extends Phaser.Scene{
	constructor(){
		super('getAcquaintedJ');
	}
	preload(){
		this.load.image('bg2', 'assets/background2.png')
		this.load.image('keyboard1','assets/keyboard1.png');
		 this.load.image('lefthand','assets/left_hand.png');
		this.load.image('righthand','assets/right_hand.png');
		this.load.image('beefinger', 'assets/bee.png')

		this.load.image('line','assets/line.png');
		this.load.image('j1','assets/keys/b1.png');
		this.load.image('j2','assets/keys/b2.png');
		this.load.image('j3','assets/keys/b3.png');

		// this.load.image('energycontainer', 'assets/energycontainer.png');
        // this.load.image('energybar', 'assets/energybar.png');
	}
	create(){
		this.add.image(600, 350, 'bg2');
		this.add.image(600, 360, 'keyboard1');
		this.add.image(450, 610, 'lefthand');
		this.add.image(750, 610, 'righthand');
		this.add.image(500, 528, 'beefinger');
		
		var key = [];
		var x = 250;
		var y = 100;
		for (var i = 0; i < 8; i++) {
			key[i] = this.add.image(x, y, 'j1'); x += 100;
		}

		var index = 0;
		var current_key = this.add.image(key[0].x, key[0].y, 'j2');
		var current_line = this.add.image(key[0].x, key[0].y + 60, 'line');

		this.input.keyboard.on('keydown', function (event) {
			if (event.keyCode === Phaser.Input.Keyboard.KeyCodes.B)
            {
				this.add.image(key[index].x, key[index].y, 'j3');
				current_key.visible = false;
				current_line.visible = false;
				
				index += 1;

				if (index == 8)
					this.scene.start('getAcquaintedK'); 
				else {
					current_key = this.add.image(key[index].x, key[index].y, 'j2');
					current_line = this.add.image(key[index].x, key[index].y + 60, 'line');
				}
            }
			else
				this.scene.start('getAcquaintedJ'); 
		}, this);

		// // 10 seconds
		// this.initialTime = 10;

		// var text = this.add.text(50, 32, formatTime(this.initialTime), { font: '120px Arial Black',  color: '#ff0000' });

		// // Each 1000 ms call onEvent
		// var timedEvent = this.time.addEvent({ delay: 1000, callback: onEvent, callbackScope: this, loop: true });

		// function formatTime(seconds){
		// 	// Minutes
		// 	var minutes = Math.floor(seconds/60);
		// 	// Seconds
		// 	var partInSeconds = seconds%60;
		// 	// Adds left zeros to seconds
		// 	partInSeconds = partInSeconds.toString().padStart(2,'0');
		// 	// Returns formated time
		// 	return `${partInSeconds}`;
		// 	//return `${minutes}:${partInSeconds}`;
		// }		
		
		// function onEvent ()
		// {
		// 	if (this.initialTime > 0) {
		// 		this.initialTime -= 1; // One second
		// 		text.setText(formatTime(this.initialTime));
		// 	}
		// }


	
    //     // the energy container. A simple sprite
    //  //   let energyContainer = this.add.sprite(game.config.width / 2, game.config.height / 2, "energycontainer");
	//  	let energyContainer = this.add.sprite(550, 100, "energycontainer");

    //     // the energy bar. Another simple sprite
    //     let energyBar = this.add.sprite(energyContainer.x + 46, energyContainer.y, "energybar");

    //     // a copy of the energy bar to be used as a mask. Another simple sprite but...
    //     this.energyMask = this.add.sprite(energyBar.x, energyBar.y, "energybar");

    //     // ...it's not visible...
    //     this.energyMask.visible = false;

    //     // and we assign it as energyBar's mask.
    //     energyBar.mask = new Phaser.Display.Masks.BitmapMask(this, this.energyMask);

    //     // a boring timer.
    //     this.gameTimer = this.time.addEvent({
    //         delay: 1000,
    //         callback: function(){
    //             this.timeLeft --;

    //             // dividing enery bar width by the number of seconds gives us the amount
    //             // of pixels we need to move the energy bar each second
    //             let stepWidth = this.energyMask.displayWidth / gameOptions.initialTime;

    //             // moving the mask
    //             this.energyMask.x -= stepWidth;
    //             if(this.timeLeft == 0){
    //                 this.scene.start("getAcquaintedA")
    //             }
    //         },
    //         callbackScope: this,
    //         loop: true
    //     });
		this.input.on('pointerup', function (pointer) {console.log(pointer.x, pointer.y)})

	}
	update(){
		
		
	}
}