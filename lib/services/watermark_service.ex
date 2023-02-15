defmodule ExtensionApi.Services.WatermarkService do
  alias Mogrify

  def test() do
    %Mogrify.Image{path: "priv/static/images/download.jpeg", ext: "jpeg"}
    |> Mogrify.custom("size", "280x280")
    |> Mogrify.custom("background", "#000000")
    |> Mogrify.custom("gravity", "center")
    |> Mogrify.custom("fill", "white")
    |> Mogrify.custom("font", "DejaVu-Sans-Mono-Bold")
    |> Mogrify.custom("pango", ~S(<span foreground="yellow">hello markup world</span>))
    |> IO.inspect(label: "11111")
    |> Mogrify.create(path: "priv/static/images")
  end
end
