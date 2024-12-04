defmodule ParImpar do
  def main do
    valor = 20_000_000

    algoritmo1 = {__MODULE__, :determinar_par1?, [valor]}
    algoritmo2 = {__MODULE__, :determinar_par2?, [valor]}

    duracion1 = Benchmark.determinar_tiempo_ejecucion(algoritmo1)
    duracion2 = Benchmark.determinar_tiempo_ejecucion(algoritmo2)

    Benchmark.generar_mensaje(duracion1, duracion2)
    |> Util.mostrar()
  end

  def determinar_par1?(0), do: true
  def determinar_par1?(1), do: false
  def determinar_par1?(n), do: determinar_par1?(n - 2)

  def determinar_par2?(n), do: determinar_par2?(0, n)
  def determinar_par2?(m, n) when m * 2 == n, do: true
  def determinar_par2?(m, n) when m * 2 > n, do: false
  def determinar_par2?(m, n), do: determinar_par2?(m + 1, n)
end

ParImpar.main()
