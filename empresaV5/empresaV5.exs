# El nombre del modulo sigue la convencion PascalCase
defmodule Mensaje do
  def main do
    "Bienvenidos a la empresa Once Ltda"
    |> Util.mostrar_mensaje()
  end

end

Mensaje.main()
