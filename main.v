import ui

struct App {
mut:
	window &ui.Window
	label &ui.Label
}

const (
	win_width = 1250
	win_height = 700
)


fn main() {

	mut app := &App{
		window: 0
		label: ui.label( text: "Tester Socket")
	}

	app.window = ui.window(
		width: win_width,
		height: win_height,
		title: "Shutt Socket",
		children: [
			ui.listbox(
				id: "player_zone"
				height: win_height
				selection: 3
				width: 200
				items: {
					'playerone':  'username'
					'playertwo':  'username'
					'playerthree':  'username'
				}
			)
		]
	)

	ui.run(app.window)
	
}
