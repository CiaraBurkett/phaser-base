var boot = {

	preload: function () {
		game.load.image('progressBar', 'assets/progressBar.png');
	},

	create: function() { 
		// Set a background color and the physic system
		game.stage.backgroundColor = '#3498db';
		game.physics.startSystem(Phaser.Physics.ARCADE);

		game.state.start('load');
	}
};
