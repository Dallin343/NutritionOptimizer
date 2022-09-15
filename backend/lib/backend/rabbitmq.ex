defmodule Backend.Rabbitmq do

  use AMQP

  @impl true
  def get_channel() do
    {:ok, connection} = AMQP.Connection.open
    {:ok, channel} = AMQP.Channel.open(connection)
    AMQP.Queue.declare(channel, "hello")
    channel
  end

  @impl true
  def publish(conn, msg) do
    1+2
  end
end
