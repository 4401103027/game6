class scene4 extends Phaser.Scene{
	constructor(){
		super('question3');
	}
	preload(){
		this.load.image('bg2','assets/background2.png');
		this.load.image('rec','assets/rectangle.png');
		this.load.image('label3','assets/label3.png');
		this.load.image('true','assets/true.png');
		this.load.image('false','assets/false.png');
		this.load.image('continue1','assets/continue1.png');
		this.load.image('jar','assets/jar.png');
		this.load.image('jar_q','assets/jar_q.png');
		this.load.image('bee','assets/bee-jar.png');
		this.load.image('wrong','assets/wrong.png');
		this.load.image('right','assets/right.png');
		this.load.image('keys', 'assets/keyS.png');

		this.load.image('bg1','assets/bg1.png');
		this.load.image('left','assets/left.png');


		
		this.load.image('q3', 'assets/q3.png');
		this.load.image('h1', 'assets/1.png');
		this.load.image('h2', 'assets/2.png');
		this.load.image('h3', 'assets/3.png');
		this.load.image('h4', 'assets/4.png');
		this.load.image('h5', 'assets/5.png');
		this.load.image('left1', 'assets/left1.png');
		this.load.image('incorrect', 'assets/incorrect.png');
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
	var right = this.add.sprite(width/2 + 50, height - 200, 'right').setInteractive();
	var wrong = this.add.sprite(width/2 + 250, height - 200, 'wrong').setInteractive();
	right.visible = false
	wrong.visible = false
		this.add.image(width - 835, height - 540, 'bee');
		this.add.image(580, 400, 'rec');
		this.add.image(width/2, 200, 'label3');




		this.add.image(400,340, 'q3').setScale(0.8);
		this.add.image(850,400, 'left1');
		this.add.image(400,490, 'keyd').setScale(0.5);

		

		var bt_continue = this.add.sprite(width - 350, height - 50, 'continue1').setInteractive();
		bt_continue.visible = false

		var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		
        function loops()
		{
			zoomOut(bt_continue, 0.8, 1.1, 0.01, 10, this);
		}
        
        bt_continue.on('pointerdown', function(){
			this.scene.start('question4');
		}, this);	
	
	var s1 = this.add.sprite(700,340, 'h5').setScale(0.8).setInteractive();
	s1.on('pointerdown', function(){
		wrong.visible = true
			bt_continue.visible = true

			ans_jar[2] = 'w'
			this.add.image(width - (835 - 170*2), height - 620, 'wrong');
	}, this);

	var s2 = this.add.sprite(984,360, 'h1').setScale(0.8).setInteractive();
	s2.on('pointerdown', function(){
		wrong.visible = true
			bt_continue.visible = true

			ans_jar[2] = 'w'
			this.add.image(width - (835 - 170*2), height - 620, 'wrong');
	}, this);

	var s3 = this.add.sprite(960,290, 'h2').setScale(0.8).setInteractive();
	s3.on('pointerdown', function(){
		right.visible = true
			bt_continue.visible = true			
			
			jar[2] = 1
			ans_jar[2] = 'r'
			this.add.image(width - (835 - 170*2), height - 620, 'jar');
			this.add.image(width - (835 - 170*2), height - 620, 'right');
	}, this);

	var s4 = this.add.sprite(840,250, 'h3').setScale(0.8).setInteractive();
	s4.on('pointerdown', function(){
		wrong.visible = true
		bt_continue.visible = true

		ans_jar[2] = 'w'
		this.add.image(width - (835 - 170*2), height - 620, 'wrong');
	}, this);
  
	var s5 = this.add.sprite(910,250, 'h4').setScale(0.8).setInteractive();
	s5.on('pointerdown', function(){
		wrong.visible = true
		bt_continue.visible = true

		ans_jar[2] = 'w'
		this.add.image(width - (835 - 170*2), height - 620, 'wrong');
	}, this);
	
		
		
	/*	var bt_continue = this.add.sprite(900, 540, 'continue').setScale(0.8).setInteractive();
        
        bt_continue.on('pointerdown', function(){
			this.scene.start('question4');
		}, this);

		this.input.keyboard.on('keydown-ENTER', function (event) {
			this.scene.start('question4'); 
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