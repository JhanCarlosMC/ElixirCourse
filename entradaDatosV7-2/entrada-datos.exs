defmodule DatosLogicos do
  @anio_fundacion 1991

  def main do
    "Ingrese numero de cedula: "
    |> Util.ingresar(:entero)
    |> hay_promocion?(@anio_fundacion)
    |> generar_mensaje()
    |> Util.mostrar()
  end

  defp hay_promocion?(cedula, fecha_promocion)
    when rem(cedula, fecha_promocion) == 0, do: true

  defp hay_promocion?(_,_), do: false

  defp generar_mensaje(true), do: "Recibe el descuento"
  defp generar_mensaje(false), do: "No recibe el descuento"
end

DatosLogicos.main()
