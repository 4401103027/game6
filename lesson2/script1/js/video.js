var hasEnded;
var youtubePlayer;
var blazewarriorsstatusgame = false;

class Demo extends Phaser.Scene {
    constructor() {
        super({
            key: 'examples'
        })
    }

    preload() {
        var url = 'https://raw.githubusercontent.com/rexrainbow/phaser3-rex-notes/master/dist/rexyoutubeplayerplugin.min.js';
        this.load.plugin('rexyoutubeplayerplugin', url, true);
    }

    create() {           
        youtubePlayer = this.add.rexYoutubePlayer(0, 0, 1200, 700, {
            videoId: 'Uyg5acrw5Mc'
        })
            .on('ready', function () {
                youtubePlayer.setPosition(600, 350);
            })
    }

    update() { 
        hasEnded = youtubePlayer.hasEnded;
        if (hasEnded)
            blazewarriorsstatusgame = true;
    }
}

var config = {
    type: Phaser.AUTO,
    parent: 'phaser-example',
    width: 1200,
    height: 700,
    scale: {
        mode: Phaser.Scale.FIT,
        autoCenter: Phaser.Scale.CENTER_BOTH,
    },
    dom: {
        createContainer: true
    },
    scene: Demo
};

var game = new Phaser.Game(config);