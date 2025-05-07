import lustre
import lustre/effect
import lustre/element
import lustre/element/html

pub const name = "greet-component"

pub fn app() -> lustre.App(Nil, Model, Msg) {
  lustre.component(init, update, view, [])
}

pub type Model =
  String

pub fn init(_) -> #(Model, effect.Effect(Msg)) {
  let model = ""
  let effect = effect.none()

  #(model, effect)
}

pub type Msg

pub fn update(model: Model, _msg: Msg) -> #(Model, effect.Effect(Msg)) {
  #(model, effect.none())
}

// VIEW ------------------------------------------------------------------------

pub fn view(model: Model) -> element.Element(Msg) {
  html.div([], [html.text("hello " <> model)])
}
