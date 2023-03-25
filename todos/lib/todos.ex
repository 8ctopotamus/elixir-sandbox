# Application.put_env(:elixir, :ansi_enabled, false)

defmodule Todos do
  def create_todos do
    { num_tasks, _ } =
      IO.gets("How many tasks do you want to add? ")
        |> Integer.parse()
    for _i <- 1..num_tasks do
      IO.gets("Enter a task: ") |> String.trim()
    end
  end

  def temp_todos do
    ["learn elixir", "learn rust", "learn c++"]
  end

  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def keyword_search(tasks, word) do
    for task <- tasks, String.contains?(task, word) do
      task
    end
  end

  def random_task(tasks) do
    [task] = Enum.take_random(tasks, 1)
    task
  end
end
