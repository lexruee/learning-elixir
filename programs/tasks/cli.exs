defmodule TaskTracker do

  defmodule Taskfile do
    @taskfile ".tasks"

    def create, do: File.touch(@taskfile)

    def add(task) do
      File.write(@taskfile, "#{task}\n", [:append])
    end

    def remove(task_nr) do
      tasks = parse()
              |> Enum.reject(fn {_title, nr} -> nr == task_nr end)
              |> Enum.map(fn {title, _nr} -> title end)
      File.write(@taskfile, "", [:write])
      tasks
      |> Enum.each(&add/1)
    end

    def list do
      rows = parse()
             |> Enum.map(&task_output/1)
             |> Enum.join("\n")

      IO.puts "Nr - Title"
      IO.puts rows
    end

    def task_output({title, nr}) do
      "#{nr}  - #{title}"
    end

    def parse do
      {:ok, contents} = File.read(@taskfile)
      tasks = contents
              |> String.trim
              |> String.split("\n")
              |> Enum.reject(&(&1 == ""))

      tasks
      |> Enum.with_index
    end
  end


  defmodule Cli do
    def run!(argv) do
      Taskfile.create
      [command, args] = parse(argv)
      run_command(command, args)
    end

    def parse(["list" | _tail]), do: [:list, []]
    def parse(["add" | tail]), do: [:add, tail]
    def parse(["rm" | tail]), do: [:rm, tail]
    def parse([_head | tail]), do: parse(tail)
    def parse([]), do: [:help, []]

    def run_command(:list, _args), do: Taskfile.list
    def run_command(:add, [task | _]), do: Taskfile.add(task)
    def run_command(:rm, [task_nr | _]) do
      {nr, _} = Integer.parse(task_nr)
      Taskfile.remove(nr)
    end
    def run_command(:help, _args) do
      help_msg = """
        Commands:
          list             - List tasks
          add <task>       - Adds a task
          rm <task-nr>     - Removes the task
      """
      IO.puts help_msg
    end

    def run_command(_, args), do: run_command(:help, args)
  end
end

System.argv
|> TaskTracker.Cli.run!