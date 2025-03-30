defmodule TutorialProjectTest do
  use ExUnit.Case
  doctest TutorialProject

  test "greets the world" do
    assert TutorialProject.hello() == :world
  end
end
