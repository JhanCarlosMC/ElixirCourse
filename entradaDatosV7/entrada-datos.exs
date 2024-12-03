defmodule DatosLogicos do
  @anio_fundacion 1991

  def main do
    "Ingrese numero de cedula: "
    |> Util.ingresar(:entero)
    |> hay_promocion?(@anio_fundacion)
    |> generar_mensaje()
    |> Util.mostrar()
  end

  defp hay_promocion?(cedula, fecha_promocion) do
    rem(cedula, fecha_promocion) == 0
  end

  defp generar_mensaje(hay_promocion) do
    if hay_promocion do
      "Recibe el descuento"
    else
      "No recibe el descuento"
    end
  end

end

DatosLogicos.main()
