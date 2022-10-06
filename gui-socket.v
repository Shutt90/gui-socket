import ui

struct App {
mut:
	window &ui.Window
	text string
}

const (
	win_width = 1250
	win_height = 700
)


fn main() {

	mut app := &App{
		window: 0
	}

	app.window = ui.window(
		width: win_width,
		height: win_height,
		title: "Shutt Socket",
		children: [
			ui.row(
				children: [
					ui.listbox(
						id: "player_zone"
						height: win_height
						selection: 3
						width: 200
						items: {
							"playerone":  "username"
							"playertwo":  "username"
							"playerthree":  "username"
						}
					)
					ui.column(
						children: [
							ui.row(
								children: [
									ui.listbox(
										id: "chat_zone"
										height: win_height
										width: win_width
										items: {
											"player": "hello"
											"playerthree": "hi"
										}
									)
								]
							),
							ui.row(
								children: [
									// Issue with this textbox causing a Unhandled Exception 0xC0000005
									ui.textbox(
										text: &app.text
										placeholder: "Enter your message..."
										width: 20
										read_only: false
									),
								]
							)
						]
					)
				]
			)
		]
	)


	ui.run(app.window)
	
}