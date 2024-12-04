defmodule DatosLogicos do
  def main do
    "Ingrese el tipo de bolsa del cliente: "
    |> Util.ingresar(:texto)
    |> obtener_porcentaje_descuento()
    |> generar_mensaje()
    |> Util.mostrar()
  end

  defp obtener_porcentaje_descuento(tipo_bolsa) do
    if tipo_bolsa == "plastica" do
      0.02
    else
      if tipo_bolsa == "biodegradable" do
        0.12
      else
        if tipo_bolsa == "reutilizable" do
          0.17
        else
          0.0
        end
      end
    end
  end

  defp generar_mensaje(porcentaje) do
    "El porcentaje es de #{porcentaje}"
  end
end

DatosLogicos.main()
