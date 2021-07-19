module Styles = {
  open Emotion
  let container = css({
    "width": "100%",
    "maxWidth": 800,
    "margin": "auto",
    "postion": "relative",
  })
  let text = css({
    "textAlign": "center",
    "fontSize": 32,
  })
  let input = css({
    "width": "100%",
    "maxWidth": "80%",
    "backgroundColor": Theme.mainBackgroundColor,
    "color": Theme.mainTextColor,
    "fontFamily": "inherit",
    "fontSize": "inherit",
    "padding": "10px",
    "borderRadius": 8,
    "border": "none",
    "position": "sticky",
    "bottom": 15,
    "boxSizing": "border-box",
    "boxShadow": `0 0 0 1px ${Theme.mainContrastAccentedBackgroundColor}, 0 5px 10px ${Theme.mainContrastBackgroundColor}`,
  })
}

type state = {input: string}

@react.component
let make = () => {
  let (state, setState) = React.useState(() => {
    input: "",
  })

  let socket = SocketIO.Client.io
  let onInputChange = event => {
    let target = event->ReactEvent.Form.target
    let input = target["value"]
    Console.log(socket)
    // socket.emit("chat message", input)
    // socket->SocketIO.emit("chat message", input)
    setState(_ => {input: input})
  }

  let onInputKeyDown = event => {
    if event->ReactEvent.Keyboard.key === "Enter" {
      event->ReactEvent.Keyboard.preventDefault
      Console.log(state.input)
      setState(_ => {
        input: "",
      })
    }
  }

  <>
    <Head> <title> {"Welcome"->React.string} </title> </Head>
    <div className=Styles.container>
      <p className=Styles.text> {"Welcome Mr. jack"->React.string} </p>
      <input
        className=Styles.input
        type_="text"
        value=state.input
        onChange={onInputChange}
        onKeyDown={onInputKeyDown}
        placeholder="Write a new task"
      />
    </div>
  </>
}
