defmodule EntradaDatos do
  def main do
    "Ingrese nombre del empleado: "
    |> Util.ingresar_texto()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp generar_mensaje(nombre) do
    "Bienvenidos #{nombre} a la empresa Once Ltda"
  end
end

EntradaDatos.main()
