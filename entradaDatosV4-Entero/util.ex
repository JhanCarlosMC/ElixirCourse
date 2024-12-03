defmodule Util do
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

  def ingresar_texto(mensaje) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end

  # :texo -> Constante, es un valor para hacer matching
  # Es lo que se conoce como Atomo
  def ingresar(mensaje, :texto) do
    {entrada, 0} = System.cmd("python", ["ingresar_dialogo.py", mensaje])

    entrada
    |> String.trim()
  end

  def ingresar(mensaje, :entero) do
    mensaje
    |> Util.ingresar(:texto)
    |> String.to_integer()
  end
end
