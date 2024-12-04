defmodule DatosLogicos do
  def main do
    "Ingrese el tipo de bolsa del cliente: "
    |> Util.ingresar(:texto)
    |> obtener_porcentaje_descuento()
    |> generar_mensaje()
    |> Util.mostrar()
  end

  defp obtener_porcentaje_descuento(tipo_bolsa) when tipo_bolsa == "plastica", do: 0.02
  defp obtener_porcentaje_descuento(tipo_bolsa) when tipo_bolsa == "biodegradable", do: 0.12
  defp obtener_porcentaje_descuento(tipo_bolsa) when tipo_bolsa == "reutilizable", do: 0.17
  defp obtener_porcentaje_descuento(_), do: 0.0

  defp generar_mensaje(porcentaje) do
    "El porcentaje es de #{porcentaje}"
  end
end

DatosLogicos.main()
