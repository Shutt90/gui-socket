import ui

struct App {
mut:
	window &ui.Window
	label &ui.Label
}

const (
	win_width = 600
	win_height = 800
)

fn main() {

	mut app := &App{
		window: 0
		label: ui.label( text: "Shutt Socket")
	}

	app.window = ui.window(
		width: win_width,
		height: win_height,
		title: "Shutt Socket",
	)

	ui.run(app.window)
	
}