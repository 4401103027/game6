class scene5 extends Phaser.Scene{
	constructor(){
		super('question4');
	}
	preload(){
		this.load.image('bg2','assets/background2.png');
		this.load.image('rec','assets/rectangle.png');
	//	this.load.image('img1','assets/img1.png');
		this.load.image('label4','assets/label4.png');
		this.load.image('q4','assets/q4.png');
		this.load.image('true','assets/true.png');
		this.load.image('false','assets/false.png');
		this.load.image('continue1','assets/continue1.png');
		this.load.image('jar','assets/jar.png');
		this.load.image('jar_q','assets/jar_q.png');
		this.load.image('bee','assets/bee-jar.png');
		this.load.image('wrong','assets/wrong.png');
		this.load.image('right','assets/right.png');
		this.load.image('bee','assets/ong-ham-hoc.png');
		this.load.image('continue','assets/continue.png');
		this.load.image('bg1','assets/bg1.png');
		this.load.image('keyboard','assets/keyboard.png');
		this.load.image('left','assets/left.png');
		this.load.image('point','assets/point.png');
		this.load.image('keya', 'assets/keyA.png');
		this.load.image('keys', 'assets/keyS.png');
		this.load.image('keyd', 'assets/keyD.png');
		this.load.image('keyf', 'assets/keyF.png');
	}
	create(){
		this.add.image(600, 350, 'bg2');
		var width = game.config.width
		var height = game.config.height
		
		for (var i = 0; i < 5; i++) {
			this.add.image(width - (835 - 170*i), height - 620, 'jar_q');
			var j = this.add.image(width - (835 - 170*i), height - 620, 'jar');
			var r = this.add.image(width - (835 - 170*i), height - 620, 'right');
			var w = this.add.image(width - (835 - 170*i), height - 620, 'wrong');
			if (jar[i] == 0)
				j.visible = false
			if (ans_jar[i] == 0) {
				r.visible = false
				w.visible = false
			}
			else if (ans_jar[i] == 'r')
				w.visible = false
			else
				r.visible = false
		}

		this.add.image(width - 835, height - 540, 'bee');

		this.add.image(580, 400, 'rec');

		this.add.image(width/2, 200, 'label4');
		this.add.image(400,320, 'q4').setScale(0.8);
		this.add.image(370,490, 'left1').setScale(0.5);
		this.add.image(380,410, 'point').setScale(0.7);
		var right = this.add.sprite(width/2 + 50, height - 200, 'right').setInteractive();
		var wrong = this.add.sprite(width/2 + 250, height - 200, 'wrong').setInteractive();
		right.visible = false
		wrong.visible = false

		var bt_continue = this.add.sprite(width - 350, height - 50, 'continue1').setInteractive();
		bt_continue.visible = false

		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		
        function loops()
		{
			zoomOut(bt_continue, 0.8, 1.1, 0.01, 10, this);
		}
        
        bt_continue.on('pointerdown', function(){
			this.scene.start('question5');
		}, this);
		var s1 = this.add.sprite(920,500,'keya').setInteractive();
		s1.on('pointerdown', function(){
			wrong.visible = true
			bt_continue.visible = true

			ans_jar[3] = 'w'
			this.add.image(width - (835 - 170*3), height - 620, 'wrong');
		}, this);
		
		var incorrect = this.add.image(200,500, 'incorrect').setScale(0.8).setInteractive();
		incorrect.visible = false;
	
		var s2 = this.add.sprite(700,500, 'keys').setInteractive();
		s2.on('pointerdown', function(){
			wrong.visible = true
			bt_continue.visible = true

			ans_jar[3] = 'w'
			this.add.image(width - (835 - 170*3), height - 620, 'wrong');
		}, this);
	
		var s3 = this.add.sprite(700,300, 'keyd').setInteractive();
		s3.on('pointerdown', function(){
			wrong.visible = true
			bt_continue.visible = true

			ans_jar[3] = 'w'
			this.add.image(width - (835 - 170*3), height - 620, 'wrong');
		}, this);
	
	
		var s4 = this.add.sprite(920,300,'keyf').setInteractive();
		s4.on('pointerdown', function(){
			right.visible = true
			bt_continue.visible = true
			
			jar[3] = 1
			ans_jar[3] = 'r'
			this.add.image(width - (835 - 170*3), height - 620, 'jar');
			this.add.image(width - (835 - 170*3), height - 620, 'right');
			
		}, this);
	/*	var bt_continue = this.add.sprite(900, 540, 'continue').setScale(0.8).setInteractive();
        
        bt_continue.on('pointerdown', function(){
			this.scene.start('end2');
		}, this);

		this.input.keyboard.on('keydown-ENTER', function (event) {
			this.scene.start('end2'); 
		}, this); */

		// 10 seconds
		this.initialTime = 10;

		var text = this.add.text(50, 32, formatTime(this.initialTime), { font: '120px Arial Black',  color: '#ff0000' });

		// Each 1000 ms call onEvent
		var timedEvent = this.time.addEvent({ delay: 1000, callback: onEvent, callbackScope: this, loop: true });

		function formatTime(seconds){
			// Minutes
			var minutes = Math.floor(seconds/60);
			// Seconds
			var partInSeconds = seconds%60;
			// Adds left zeros to seconds
			partInSeconds = partInSeconds.toString().padStart(2,'0');
			// Returns formated time
			return `${partInSeconds}`;
			//return `${minutes}:${partInSeconds}`;
		 }		
		
		function onEvent ()
		{
			if (this.initialTime > 0) {
				this.initialTime -= 1; // One second
				text.setText(formatTime(this.initialTime));
			}
		}

		this.input.on('pointerup', function (pointer) {console.log(pointer.x, pointer.y)})

	}
	update(){
		
		
	}
}