defmodule Dictionary do
  alias Dictionary.WordList

  @opaque t :: Dictionary.Impl.WordList.t()

  @spec start() :: t()
  defdelegate start(), to: WordList, as: :word_list

  @spec random_word(t()) :: String.t()
  defdelegate random_word(words), to: WordList
end
