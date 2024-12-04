defmodule DatosLogicos do
  def main do
    "Ingrese la antigüedad del cliente en años: "
    |> Util.ingresar(:entero)
    |> obtener_porcentaje_descuento()
    |> generar_mensaje()
    |> Util.mostrar()
  end

  defp obtener_porcentaje_descuento(antiguedad) do
    if antiguedad < 1 do
      0.0
    else
      if antiguedad <= 2 do
        0.10
      else
        if antiguedad <= 6 do
          0.14
        else
          0.17
        end
      end
    end
  end

  defp generar_mensaje(porcentaje) do
    "El porcentaje es de #{porcentaje}"
  end
end

DatosLogicos.main()
