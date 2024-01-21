# Editor

## Misc
warning: Passing an atom to "for" in the form component is deprecated.
Instead of:

    <.form :let={f} for={:editor} ...>

You might do:

    <.form :let={f} for={%{}} as={:editor} ...>

Or, if you prefer, use to_form to create a form in your LiveView:

    assign(socket, form: to_form(%{}, as: :editor))

and then use it in your templates (no :let required):

    <.form for={@form}>

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
