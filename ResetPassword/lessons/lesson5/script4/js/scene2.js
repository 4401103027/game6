var keys = 'as'
var akey = {}, qkey = {};


class scene2 extends Phaser.Scene {
	constructor() {
		super('playGame');
	}
	preload() {
		this.load.image('bg1', 'assets/background1.png');
		this.load.image('instruct','assets/instruct.png');
		this.load.image('keyboard','assets/keyboard.png');
		
		for (var i = 0; i < 2; i++) {
			this.load.image(keys[i] + '1','assets/keys/' + keys[i] + '1.png');
			this.load.image(keys[i] + '2','assets/keys/' + keys[i] + '2.png');
		}
	}
	create() {
		this.add.image(600, 350, 'bg1');
		this.add.image(600, 220, 'instruct');
		this.add.image(600, 520, 'keyboard');
		
		var key = shuffle()
		function shuffle() {
			var a = keys.split(""),
			n = a.length;
	
			for(var i = n - 1; i > 0; i--) {
				var j = Math.floor(Math.random() * (i + 1));
				var tmp = a[i];
				a[i] = a[j];
				a[j] = tmp;
			}
			return a.join("");
		}

		var x1 = 550, y1 = 320;
		var x2 = 535, y2 = 484;

		for (var i = 0; i < 2; i++) {
			qkey[key[i]] = this.physics.add.sprite(x1, y1, key[i] + '1').setInteractive();
			this.input.setDraggable(qkey[key[i]]);
			x1 += 100;

			akey[keys[i]] = this.physics.add.image(x2, y2, keys[i] + '2');
			akey[keys[i]].visible = false;
			x2 += 65;
		}

		this.input.dragDistanceThreshold = 16;

		//	this.sprite.input.dropZone = true;

        this.input.on('dragstart', function (pointer, gameObject) {
            // gameObject.setTint(0xff0000);
			// gameObject.setAlpha(1.5)
        },this);

        this.input.on('drag', function (pointer, gameObject, dragX, dragY) {
            gameObject.x = dragX;
            gameObject.y = dragY;
        });

		// this.input.on('dragenter', function (pointer, _gameObject, _dropZone) {
		// 	gameObject.setTint(0x00ff00);
		// });

        this.input.on('dragleave', function (pointer, _gameObject, _dropZone) {
			gameObject.clearTint();
		});
	
	    // this.input.on('drop', function (pointer, gameObject, dropZone) {
		// 	gameObject.x = dropZone.x;
		// 	gameObject.y = dropZone.y;
		// 	gameObject.setScale(0.0);
	
		// 	gameObject.input.enabled = false;
	
		// 	gameObject.clearTint();
		// });

		this.input.on('dragend', function (pointer, gameObject, dropped) {
			if (!dropped) {
				gameObject.x = gameObject.input.dragStartX;
				gameObject.y = gameObject.input.dragStartY;
			}
		});

		// // 10 seconds
		// this.initialTime = 20;

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
		// 	else {
		// 		this.scene.start('end'Game); 
		// 	}
		// }
	}
	update() {
		var count = 0;
		for (var i = 0; i < 2; i++)
			if (akey[keys[i]].visible == true)
				count += 1;

		if (count == 2)
			this.scene.start('endGame');

		for (var i = 0; i < 2; i++) {
			if ((qkey[keys[i]].x - 30 < akey[keys[i]].x) && (akey[keys[i]].x < qkey[keys[i]].x + 30) && (qkey[keys[i]].y - 30 < akey[keys[i]].y) && (akey[keys[i]].y < qkey[keys[i]].y + 30)) {
				found(qkey[keys[i]], akey[keys[i]])
			}
		}
		
		function found (q_key, a_key)
		{
			q_key.visible = false;
			a_key.visible = true;
		}
		
		// console.log(count)
		// var count = 0
		// for (var i = 0; i < 7; i++) {
		// 	if ((ans[i].x - 50 < qes[i].x) && (qes[i].x < ans[i].x + 50) && (ans[i].y - 50 < qes[i].y) && (qes[i].y < ans[i].y + 50)) {
		// 		qes[i].visible = false
		// 		ans[i].visible = false
		// 		this.add.image(ans[i].x, ans[i].y, 'tick')
		// 		correct[i] = 1
		// 	}
		// 	if (correct[i] == 1)
		// 		count ++
		// }
		
	}

	
}