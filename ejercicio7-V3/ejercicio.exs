defmodule DatosLogicos do
  def main do
    "Ingrese el tipo de bolsa del cliente: "
    |> Util.ingresar(:texto)
    |> obtener_porcentaje_descuento()
    |> generar_mensaje()
    |> Util.mostrar()
  end

defp

  defp generar_mensaje(porcentaje) do
    "El porcentaje es de #{porcentaje}"
  end
end

DatosLogicos.main()
