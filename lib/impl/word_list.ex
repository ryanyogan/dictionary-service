defmodule Dictionary.Impl.WordList do
  @file_path "../../assets/words.txt"

  @type t :: list(String.t())

  @spec word_list() :: t
  def word_list do
    @file_path
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/, trim: true)
  end

  @spec random_word(t()) :: String.t()
  def random_word(words) do
    Enum.random(words)
  end
end
