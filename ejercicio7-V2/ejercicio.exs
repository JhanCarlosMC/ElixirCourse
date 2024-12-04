defmodule DatosLogicos do
  def main do
    "Ingrese el tipo de bolsa del cliente: "
    |> Util.ingresar(:texto)
    |> obtener_porcentaje_descuento()
    |> generar_mensaje()
    |> Util.mostrar()
  end

  defp obtener_porcentaje_descuento(tipo_bolsa) do
    cond do
      tipo_bolsa == "plastica" -> 0.02
      tipo_bolsa == "biodegradable" -> 0.12
      tipo_bolsa == "reutilizable" -> 0.17
      true -> 0.0
    end
  end

  defp generar_mensaje(porcentaje) do
    "El porcentaje es de #{porcentaje}"
  end
end

DatosLogicos.main()
