module Styles = {
  open Emotion
  let container = css({
    "fontFamily": "sans-serif",
    "flexGrow": 1,
    "display": "flex",
    "flexDirection": "column",
    "alignItems": "stretch",
    "justifyContent": "center",
    "width": "100%",
    "maxWidth": 600,
    "margin": "auto",
  })
  let row = css({
    "flexDirection": "row",
  })
  let text = css({
    "color": "rgba(0, 0, 0, 0.5)",
  })
  let navItem = css({
    "padding": 10,
    "textDecoration": "none",
    "color": "#0091FF",
    "borderRadius": 5,
  })
}

@react.component
let make = () => {
  <>
    <Head> <title> {"Request demo"->React.string} </title> </Head>
    <div className=Styles.container>
      <div className=Styles.text>
        {`template : `->React.string}
        <a
          href="https://github.com/bloodyowl/rescript-react-starter-kit"
          target="_blank"
          className=Styles.navItem>
          {`https://github.com/bloodyowl/rescript-react-starter-kit`->React.string}
        </a>
      </div>
      <div className=Styles.text> {`template : `->React.string} </div>
      <Spacer height="5px" />
      <div className=Styles.text> {``->React.string} </div>
    </div>
  </>
}
