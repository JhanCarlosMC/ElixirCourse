defmodule SimulacionesParImpar do
  # Constantes de modulo
  @valores_prueba [10_000, 100_000, 1_000_000, 10_000_000, 100_000_000]
  @repeticiones 5

  def main do
    mensaje_simulaciones =
      hacer_simulaciones(@valores_prueba, @repeticiones)
      |> convertir_resultados_simulaciones_mensaje()
      |> agregar_titulos()

    mensaje_simulaciones
    |> escribir_archivo("par_impar.csv")

    mensaje_simulaciones
    |> Util.mostrar_mensaje()
  end

  defp hacer_simulaciones(valores_prueba, repeticiones) do
    tabla_resultados =
      Enum.map(valores_prueba, fn valor ->
        ejecutar_simulacion(valor, repeticiones)
      end)

    tabla_resultados
  end

  defp ejecutar_simulacion(valor, repeticiones) do
    algoritmos = [
      {__MODULE__, :determinar_par1?, [valor]},
      {__MODULE__, :determinar_par2?, [valor]},
      {__MODULE__, :determinar_par3?, [valor]},
      {__MODULE__, :determinar_par4?, [valor]}
    ]

    tiempo_promedio =
      Enum.map(algoritmos, fn algoritmo ->
        obtener_tiempo_promedio_ejecucion(algoritmo, repeticiones)
      end)

    {valor, tiempo_promedio}
  end

  defp obtener_tiempo_promedio_ejecucion(algoritmo, repeticiones) do
    # Map(mapper) es un elemento de transformacion
    suma =
      Enum.map(1..repeticiones, fn _ ->
        Benchmark.determinar_tiempo_ejecucion(algoritmo)
      end)
      |> Enum.sum()

    promedio = suma / repeticiones
    promedio
  end

  defp convertir_resultados_simulaciones_mensaje(resultado_simulaciones) do
    resultado_simulaciones
    |> Enum.map(fn simulacion -> generar_mensaje(simulacion) end)
    |> Enum.join("\n")
  end

  defp generar_mensaje(simulacion) do
    {valor, [promedio1, promedio2, promedio3, promedio4]} = simulacion
    "#{valor}, #{promedio1}, #{promedio2}, #{promedio3}, #{promedio4}"
  end

  defp agregar_titulos(mensaje_simulaciones) do
    agregar_titulos = fn contenido ->
      "Prueba, Algoritmo1, Algoritmo2, Algoritmo3, Algoritmo4\n" <>
        contenido
    end

    mensaje_simulaciones
    |> agregar_titulos.()
  end

  def determinar_par1?(0), do: true
  def determinar_par1?(1), do: false
  def determinar_par1?(n), do: determinar_par1?(n - 2)

  def determinar_par2?(n), do: determinar_par2?(0, n)
  def determinar_par2?(m, n) when m * 2 == n, do: true
  def determinar_par2?(m, n) when m * 2 > n, do: false
  def determinar_par2?(m, n), do: determinar_par2?(m + 1, n)

  def determinar_par3?(0), do: true
  def determinar_par3?(n), do: determinar_impar3?(n - 1)
  def determinar_impar3?(0), do: false
  def determinar_impar3?(n), do: determinar_par3?(n - 1)

  def determinar_par4?(n) when rem(n, 2) == 0, do: true
  def determinar_par4?(_), do: false

  defp escribir_archivo(contenido, nombre), do: File.write(nombre, contenido)
end

SimulacionesParImpar.main()
