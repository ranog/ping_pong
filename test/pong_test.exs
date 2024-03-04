defmodule App.PongTest do
  use ExUnit.Case

  test "should return pong when receiving a ping" do
    pid = spawn(App.Pong, :start, [])
    send(pid, {self(), :ping})
    assert_receive {^pid, :pong}
  end
end
