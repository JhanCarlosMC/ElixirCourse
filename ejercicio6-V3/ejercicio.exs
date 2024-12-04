defmodule DatosLogicos do
  def main do
    "Ingrese la antigüedad del cliente en años: "
    |> Util.ingresar(:entero)
    |> obtener_porcentaje_descuento()
    |> generar_mensaje()
    |> Util.mostrar()
  end

  defp obtener_porcentaje_descuento(antiguedad) do
    cond do
      antiguedad < 1 -> 0.0
      antiguedad <= 1 -> 0.10
      antiguedad <= 6 -> 0.14
      true -> 0.17
    end
  end

  defp generar_mensaje(porcentaje) do
    "El porcentaje es de #{porcentaje}"
  end
end

DatosLogicos.main()
