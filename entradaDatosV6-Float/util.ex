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

  def ingresar(mensaje, :real) do
    try do
      mensaje
      |> ingresar(:texto)
      |> String.to_float()
    rescue
      ArgumentError ->
        "Error, se espera que ingrese un número real"
        |> mostrar_error()

        mensaje
        |> ingresar(:real)
    end
  end

  def mostrar(mensaje) do
    System.cmd("cmd.exe",["/c","python","mostrar_dialogo.py", mensaje])
  end

  def mostrar_error(mensaje) do
    IO.puts(:standard_error, mensaje)
  end
end
