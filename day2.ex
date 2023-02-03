defmodule Day2 do

  #Add .txt file parsing for input
def hand(:A) do :rock end
def hand(:X) do :rock end
def hand(:B) do :paper end
def hand(:Y) do :paper end
def hand(:C) do :scissors end
def hand(:Z) do :scissors end

def score(:rock) do 1 end #rock
def score(:paper) do 2 end #paper
def score(:scissors) do 3 end #scissors

def battle_score{{hand, hand}} do 3 end

def battle_score({:rock, :scissors}) do 6 end
def battle_score({:rock, :paper}) do 0 end

def battle_score({:scissors, :paper}) do 6 end
def battle_score({:scissors, :rock}) do 0 end

def battle_score({:paper, :rock}) do 6 end
def battle_score({:paper, :scissors}) do 0 end

def battle{mine, theirs} do
  score(hand(mine)) + battle_score({hand(mine), hand(theirs)})
end

end
