defmodule Cliente do
  @moduledoc """
  Módulo para crear una cliente con los datos: nombre, edad y altura
  """
  defstruct nombre: "", edad: 0, altura: 0.0

  def crear(nombre, edad, altura) do
    %__MODULE__{nombre: nombre, edad: edad, altura: altura}
  end

  def ingresar(mensaje) do
    mensaje
    |> Util.mostrar()

    nombre =
      "Ingrese nombre: "
      |> Util.ingresar(:texto)

    edad =
      "Ingresar edad: "
      |> Util.ingresar(:entero)

    altura =
      "Ingrese la altura: "
      |> Util.ingresar(:real)

    crear(nombre, edad, altura)
  end
end
