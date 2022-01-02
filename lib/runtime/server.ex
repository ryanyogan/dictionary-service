defmodule Dictionary.Runtime.Server do
  alias Dictionary.Impl.WordList

  @self __MODULE__

  def start_link do
    Agent.start_link(&WordList.word_list/0, name: @self)
  end

  def random_word do
    Agent.get(@self, &WordList.random_word/1)
  end
end
