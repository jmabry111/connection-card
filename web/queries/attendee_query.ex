defmodule ConnectionCard.AttendeeQuery do
  alias ConnectionCard.Repo
  alias ConnectionCard.Attendee
  import Ecto.Query

  def find_attendee!(id) do
    Attendee
    |> Repo.get!(id)
    |> Repo.preload([:weekly_info])
  end
end
