defmodule Util do
  @moduledoc """
  Modulo con funciones que se reutilizan
  - autor: Jhan Carlos MC
  - fecha: 2/12/2024
  - licencia: GNU GPL v3
  """

  @doc """
  Funcion para mostrar un mensaje en la pantalla.
  ## Parametro
    - mensaje: texto que se le presenta al usuario
  ## Ejemplo
    iex> Util.mostrar_mensaje("Hola Mundo")

    o puede usar

    "Hola Mundo"
    |> Util.mostrar_mensaje()
  """
  def mostrar_mensaje(mensaje) do
    System.cmd("cmd.exe",["/c","python","mostrar_dialogo.py", mensaje])
  end
end
