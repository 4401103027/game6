var blazewarriorsstatusgame = false;
var jar = [0,0,0,0,0]
var ans_jar = [0,0,0,0,0]

class scene2 extends Phaser.Scene{
	constructor(){
		super('question1');
	}
	preload(){
		this.load.image('bg2','assets/background2.png');
		this.load.image('rec','assets/rectangle.png');
		this.load.image('label1','assets/label1.png');
		this.load.image('continue1','assets/continue1.png');
		this.load.image('jar','assets/jar.png');
		this.load.image('jar_q','assets/jar_q.png');
		this.load.image('bee','assets/bee-jar.png');
		this.load.image('wrong','assets/wrong.png');
		this.load.image('right','assets/right.png');
		this.load.image('bee','assets/ong-ham-hoc.png');
		this.load.image('bg1','assets/bg1.png');
		this.load.image('keyboard','assets/keyboard.png');
		this.load.image('left','assets/left.png');
		this.load.image('point','assets/point.png');

		this.load.image('q1', 'assets/q1.png');
		this.load.image('h1', 'assets/1.png');
		this.load.image('h2', 'assets/2.png');
		this.load.image('h3', 'assets/3.png');
		this.load.image('h4', 'assets/4.png');
		this.load.image('h5', 'assets/5.png');
		this.load.image('left1', 'assets/left1.png');
		this.load.image('incorrect', 'assets/incorrect.png');
		this.load.image('keya', 'assets/keyA.png');
		this.load.audio('tune', 'assets/tune.mp3');
	
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
			j.visible = false
			r.visible = false
			w.visible = false
	}

		this.add.image(width - 835, height - 540, 'bee');

		this.add.image(580, 400, 'rec');
		this.add.image(width/2, 200, 'label1');

		this.add.image(400,340, 'q1').setScale(0.8);
		this.add.image(850,400, 'left1');
		this.add.image(400,490, 'keya').setScale(0.5);
		
		//this.add.image(800,400, 'h1');
		//this.add.image(700,240, 'h2');
	//	this.add.image(582,250, 'h3');
		//this.add.image(490,300, 'h4');
		//this.add.image(440,390, 'h5');

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
			this.scene.start('question2');
		}, this);
		
		var sprite1 = this.add.sprite(700,340, 'h5').setScale(0.8).setInteractive();
		sprite1.on('pointerdown', function(){
				right.visible = true
				jar[0] = 1
				ans_jar[0] = 'r'
				this.add.image(width - 835, height - 620, 'jar');
				this.add.image(width - 835, height - 620, 'right');
				bt_continue.visible = true
				// this.scene.start('question2');
			}, this);

			var incorrect = this.add.image(200,500, 'incorrect').setScale(0.8).setInteractive();
			incorrect.visible = false;

			var s2 = this.add.sprite(984,360, 'h1').setScale(0.8).setInteractive();
			s2.on('pointerdown', function(){
			// incorrect.visible = true;
			wrong.visible = true
			ans_jar[0] = 'w'
			this.add.image(width - 835, height - 620, 'wrong');
			bt_continue.visible = true
			}, this);

			var s3 = this.add.sprite(870,240, 'h2').setScale(0.8).setInteractive();
			s3.on('pointerdown', function(){
				// incorrect.visible = true;
				// incorrect.visible = true;
			wrong.visible = true
			ans_jar[0] = 'w'
			this.add.image(width - 835, height - 620, 'wrong');
			bt_continue.visible = true
			}, this);

			var s4 = this.add.sprite(790,250, 'h3').setScale(0.8).setInteractive();
			s4.on('pointerdown', function(){
			wrong.visible = true
			ans_jar[0] = 'w'
			this.add.image(width - 835, height - 620, 'wrong');
			bt_continue.visible = true
			}, this);
		
			var s5 = this.add.sprite(730,280, 'h4').setScale(0.8).setInteractive();
			s5.on('pointerdown', function(){
			wrong.visible = true
			ans_jar[0] = 'w'
			this.add.image(width - 835, height - 620, 'wrong');
			bt_continue.visible = true
			}, this);
/*	var bt_continue = this.add.sprite(900, 540, 'continue').setScale(0.8).setInteractive();
        
        bt_continue.on('pointerdown', function(){
			this.scene.start('question2');
		}, this);

		this.input.keyboard.on('keydown-ENTER', function (event) {
			this.scene.start('question2'); 
		}, this); */

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
		//  }		
		
		// function onEvent ()
		// {
		// 	if (this.initialTime > 0) {
		// 		this.initialTime -= 1; // One second
		// 		text.setText(formatTime(this.initialTime));
		// 	}
		// }

		// this.input.on('pointerup', function (pointer) {console.log(pointer.x, pointer.y)})
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