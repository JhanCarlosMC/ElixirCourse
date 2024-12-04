defmodule DatosLogicos do
  def main do
    "Ingrese la antigüedad del cliente en años: "
    |> Util.ingresar(:entero)
    |> obtener_porcentaje_descuento()
    |> generar_mensaje()
    |> Util.mostrar()
  end

defp obtener_porcentaje_descuento(antiguedad) when antiguedad < 1, do: 0.0
defp obtener_porcentaje_descuento(antiguedad) when antiguedad <= 2, do: 0.10
defp obtener_porcentaje_descuento(antiguedad) when antiguedad <= 6, do: 0.14
defp obtener_porcentaje_descuento(_), do: 0.17

  defp generar_mensaje(porcentaje) do
    "El porcentaje es de #{porcentaje}"
  end
end

DatosLogicos.main()
