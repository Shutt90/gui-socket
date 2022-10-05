import ui

struct App {
mut:
	window &ui.Window
	text string
}

struct Player {
mut:
	username string
}

struct Players {
mut:
	players []&Player
}

const (
	playerWidth = 60
	playerHeight = 20
	playerPadding = 5
)

fn main() {

	mut app := &App{
		window: 0
	}

	mut players := &Players{
		&Player{
			player.username
		},
		&Player {
			player.username
		}
	}

	children = [
		ui.textbox(
			text: &app.text
			placeholder: '0'
			width: 135
		),
	]

	for player in players {
		children << ui.row(
			spacing: playerPadding,
			height: playerHeight,
			widths: ui.stretch

		)
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