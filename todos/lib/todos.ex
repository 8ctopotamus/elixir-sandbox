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

  def complete_todos(tasks, task) do
    if contains?(tasks, task) do
      List.delete(tasks, task)
    else
      :not_found_error
    end
  end

  def add_todo(tasks, task) do
    List.insert_at(tasks, -1, task)
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

  def save(tasks, filename) do
    binary = :erlang.term_to_binary(tasks)
    File.write(filename, binary)
  end

  def read(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "File does not exist"
    end
  end
end
