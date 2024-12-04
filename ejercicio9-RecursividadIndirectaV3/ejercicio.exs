defmodule DatosLogicos do
  def main do
    "\nIngrese un numero: "
    |> Util.ingresar(:entero)
    |> determinar_par?()
    |> generar_mensaje()
    |> Util.mostrar()
  end

  defp determinar_par?(0), do: true
  defp determinar_par?(n), do: determinar_impar?(n-1)

  defp determinar_impar?(0), do: false
  defp determinar_impar?(n), do: determinar_par?(n-1)


  defp generar_mensaje(true), do: "El numero ingresado es PAR"
  defp generar_mensaje(false), do: "El numero ingresado es IMPAR"
end

DatosLogicos.main()
