CssReset.inject()

module App = {
  @react.component
  let make = () => {
    let url = Router.useUrl()

    React.useEffect1(() => {
      let () = window["scrollTo"](. 0, 0)
      None
    }, [url.path])

    <>
      <Head
        defaultTitle="ReScript React Starter Kit" titleTemplate="%s - ReScript React Starter Kit"
      />
      <Header />
      {switch url.path {
      | list{} => <Home />
      | list{"about"} => <About />
      | list{"robots"} => <Robots />
      | _ => <ErrorPage text="Not found" />
      }}
      <Footer />
    </>
  }
}

switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<App />, root)
| None => Console.error("Missing #root element")
}
