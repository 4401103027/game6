// let gameOptions = {
// 	initialTime: 60
// }
// this.timeLeft = gameOptions.initialTime;

class scene5 extends Phaser.Scene{
	constructor(){
		super('getAcquainted;');
	}
	preload(){
		this.load.image('bg2', 'assets/background2.png')
		this.load.image('keyboard4','assets/keyboard4.png');
		this.load.image('lefthand4','assets/left_hand4.png');
		this.load.image('righthand','assets/right_hand.png');
		this.load.image('beefinger', 'assets/bee.png')

		this.load.image('line','assets/line.png');
		this.load.image('f1','assets/keys/;1.png');
		this.load.image('f2','assets/keys/;2.png');
		this.load.image('f3','assets/keys/;3.png');

		// this.load.image('energycontainer', 'assets/energycontainer.png');
        // this.load.image('energybar', 'assets/energybar.png');
	}
	create(){
		this.add.image(600, 350, 'bg2');
		this.add.image(600, 360, 'keyboard4');
		this.add.image(450, 610, 'lefthand4');
		this.add.image(750, 610, 'righthand4');
		this.add.image(865, 580, 'beefinger');
		
		var key = [];
		var x = 250;
		var y = 100;
		for (var i = 0; i < 8; i++) {
			key[i] = this.add.image(x, y, 'f1'); x += 100;
		}

		var index = 0;
		var current_key = this.add.image(key[0].x, key[0].y, 'f2');
		var current_line = this.add.image(key[0].x, key[0].y + 60, 'line');
		var char = ';'
		this.input.keyboard.on('keydown', function (event) {
			if (event.keyCode == 186)
            {
				this.add.image(key[index].x, key[index].y, 'f3');
				current_key.visible = false;
				current_line.visible = false;
				
				index += 1;

				if (index == 8)
					this.scene.start('endGame'); 
				else {
					current_key = this.add.image(key[index].x, key[index].y, 'f2');
					current_line = this.add.image(key[index].x, key[index].y + 60, 'line');
				}

            }
			else
				this.scene.start('getAcquainted;'); 
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