defmodule Estructuras do
  def main do
    "\nIngrese los datos del cliente: "
    |> Cliente.ingresar(:clientes)
    |> generar_mensaje_clientes()
    |> Util.mostrar()
  end

  defp generar_mensaje(cliente) do
    altura = cliente.altura |> Float.round(2)
    "Hola #{cliente.nombre}, tu edad es de #{cliente.edad} años y " <>
      "tienes una altura de #{altura}\n"
  end

  defp generar_mensaje_clientes(lista_clientes)  do
    lista_clientes
    |> Enum.map(&generar_mensaje/1)
    |> Enum.join()
  end
end

Estructuras.main()
