import ui
import gx

struct App {
mut:
	window &ui.Window
	submit &ui.Button
	message string
}

const (
	win_width = 800
	win_height = 600
)

fn main() {

	mut app := &App{
		window: 0
		submit: ui.button(id: 'submit-btn', height: 40, width: 50, text: "submit", bg_color: gx.hex(222222), on_click: btn_submit_message)
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
									// Issue with this textbox causing a Unhandled Exception 0xC0000005 - mode multiline fixes this
									ui.textbox(
										text: &app.message
										placeholder: "Enter your message..."
										width: win_width - 100
										read_only: false
										mode: .multiline
									),
									ui.column(
										children: [
											app.submit
										]
									)
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

fn btn_submit_message(mut app App, x voidptr) {
	println("$app.message")

}