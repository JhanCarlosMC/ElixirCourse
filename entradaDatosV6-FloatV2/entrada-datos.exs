defmodule EntradaDatos do
  def main do
    valor_producto = "Ingrese valor total del producto: "
    |> Util.ingresar(:real)

    porcentaje_descuento = "Ingrese el porcentaje de descuento: "
    |> Util.ingresar(:real)

    valor_descuento = calcular_valor_descuento(valor_producto, porcentaje_descuento)
    valor_final = calcular_valor_final(valor_producto,valor_descuento)

    generar_mensaje(valor_descuento, valor_final)
    |> Util.mostrar_mensaje()
  end

  defp generar_mensaje(valor_descuento, valor_final) do
    valor_descuento = valor_descuento |> Float.round(1)
    valor_final = valor_final |> Float.round(1)

    "Valor de descuento $#{valor_descuento} y el valor final $#{valor_final}"
  end

  defp calcular_valor_descuento(valor_producto, procentaje_descuento) do
    valor_producto * procentaje_descuento
  end

  defp calcular_valor_final(valor_producto, valor_descuento) do
    valor_producto - valor_descuento
  end
end

EntradaDatos.main()
