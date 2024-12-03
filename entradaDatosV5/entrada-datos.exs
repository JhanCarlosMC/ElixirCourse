defmodule EntradaDatos do
  def main do
    valor_total = "Ingrese valor total de la factura: "
    |> Util.ingresar(:entero)

    valor_entregado = "Ingrese valor entregado para el pago: "
    |> Util.ingresar(:entero)

    calcular_devuelta(valor_entregado, valor_total)
    |> generar_mensaje()
    |> Util.mostrar()
  end

  defp generar_mensaje(devuelta) do
    "El valor de la devuelta es $ #{devuelta}"
  end

  defp calcular_devuelta(valor_pago, valor_total) do
    valor_pago - valor_total
  end
end

EntradaDatos.main()
