defmodule ExceptionalSaga do
  def bust_synchronously() do
    Sage.new()
    |> Sage.run(:foo, &this_errors/2)
    |> Sage.execute()
  end

  def bust_asynchronously() do
    Sage.new()
    |> Sage.run_async(:foo, &this_errors/2, :noop)
    |> Sage.execute()
  end

  defp this_errors(_, _), do: raise(RuntimeError, "boop")
end
