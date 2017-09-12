
defmodule Handler.InfoPage do
  def init(req, opts) do
    headers = %{"content-type" => "application/json"}

    # bindings = :cowboy_req.parse_qs(req)
    %{foo: foo} = :cowboy_req.match_qs([{:foo, [], :undefined}], req)

    # {foo, _} = :cowboy_req.qs_val("foo", req)

    resp = :cowboy_req.reply(200, headers, body(foo), req)

    {:ok, resp, opts}
  end

  def body(foo) do
    %{tbd: "WTF2", foo: foo}
    # |> :jiffy.encode
    |> Poison.encode!()
  end
end
