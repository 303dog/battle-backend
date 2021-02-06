class FighterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :winner_id, :loser_id
end
