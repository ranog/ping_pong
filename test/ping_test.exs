defmodule App.PingTest do
  use ExUnit.Case

  test "should return ping when receiving a pong" do
    pid = spawn(App.Ping, :start, [])
    send(pid, {self(), :pong})
    assert_receive {^pid, :ping}
  end
end
