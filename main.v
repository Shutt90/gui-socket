import ui

struct App {
mut:
	first_name string
	last_name string
	window &ui.Window
	rows []&ui.Layout
}

fn main() {

	mut app := &App{
		window: 0
	}

	ui.window(
		width: 600,
		height: 800,
		title: "Shutt Socket",
		children: [
			ui.textbox(
				max_len: 20
				width: 200
				placeholder: 'First name'
				text: &app.first_name
			),
			ui.textbox(
				max_len: 50
				width: 200
				placeholder: 'Last name'
				text: &app.last_name
			)
		]
	)

	ui.run(app.window)
	
}