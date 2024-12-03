# El nombre del modulo sigue la convencion PascalCase
defmodule Mensaje do
  def main do
    "Bienvenidos a la empresa Once Ltda"
    |> mostrar_mensaje()
  end

  #defp = Funcion privada, solo se puede utilizar dentro del modulo
  defp mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end
end

Mensaje.main()
