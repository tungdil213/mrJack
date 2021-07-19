type socket

@send external on: (socket, string, 'a => unit) => unit = "on"
@send external off: (socket, string, 'a => unit) => unit = "off"
@send external emit: (socket, string, 'a) => unit = "emit"

module Client = {
  @val external io: unit => socket = "io"
}
