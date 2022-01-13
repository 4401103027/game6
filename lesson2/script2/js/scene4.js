class scene4 extends Phaser.Scene{
	constructor(){
		super('question3');
	}
	preload(){
		this.load.image('rec','assets/rectangle.png');
		this.load.image('img3','assets/img3.png');
		this.load.image('label3','assets/label3.png');
		this.load.image('question3','assets/question3.png');
		this.load.image('true','assets/true.png');
		this.load.image('false','assets/false.png');
		this.load.image('continue1','assets/continue1.png');
		this.load.image('jar_q','assets/jar_q.png');
		this.load.image('jar','assets/jar.png');
		this.load.image('bee','assets/bee-jar.png');
		this.load.image('wrong','assets/wrong.png');
		this.load.image('right','assets/right.png');
	}
	create(){
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
		
		this.add.image(width - (835 - 170*2), height - 540, 'bee');

		this.add.image(width/2, height - 250, 'rec');
		this.add.image(width/2, height - 450, 'label3');
		this.add.image(width - 770, height - 240, 'img3');
		this.add.image(width - 350, height - 350, 'question3');
		var yes = this.add.sprite(width/2 + 50, height - 200, 'true').setInteractive();
		var no = this.add.sprite(width/2 + 250, height - 200, 'false').setInteractive();

		var wrong = this.add.sprite(width/2 + 50, height - 200, 'wrong').setInteractive();
		var right = this.add.sprite(width/2 + 250, height - 200, 'right').setInteractive();
		wrong.visible = false
		right.visible = false

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

		yes.on('pointerdown', function(){
			wrong.visible = true
			bt_continue.visible = true

			ans_jar[2] = 'w'
			this.add.image(width - (835 - 170*2), height - 620, 'wrong');
		}, this);

		no.on('pointerdown', function(){
			right.visible = true
			bt_continue.visible = true			
			
			jar[2] = 1
			ans_jar[2] = 'r'
			this.add.image(width - (835 - 170*2), height - 620, 'jar');
			this.add.image(width - (835 - 170*2), height - 620, 'right');
		}, this);
	}
	update(){
			
	}
}