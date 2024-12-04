defmodule DatosLogicos do
  def main do
    "\nIngrese un numero: "
    |> Util.ingresar(:entero)
    |> determinar_par?()
    |> generar_mensaje()
    |> Util.mostrar()
  end

  defp determinar_par?(0), do: true;
  defp determinar_par?(1), do: false;
  defp determinar_par?(n), do: determinar_par?(n-2);

  defp generar_mensaje(true), do: "El numero ingresado es PAR"
  defp generar_mensaje(false), do: "El numero ingresado es IMPAR"
end

DatosLogicos.main()
