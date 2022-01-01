defmodule SageExceptionsTest do
  use ExUnit.Case

  test "raises an error during a synchronous task" do
    assert_raise RuntimeError, "boop", fn ->
      ExceptionalSaga.bust_synchronously()
    end
  end

  test "raises an error during an asynchronous task" do
    assert_raise RuntimeError, "boop", fn ->
      ExceptionalSaga.bust_asynchronously()
    end
  end
end
