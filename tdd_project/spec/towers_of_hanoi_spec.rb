require 'towers_of_hanoi.rb'

describe TowerOfHanoi do
  subject(:tower) {TowerOfHanoi.new}
  let(:finished_board) do 
    [[       ],
    [       ],
    [4,3,2,1]]
  end
  let(:middle_of_game_board) do 
    [[4,3    ],
     [1      ],
     [2      ]]
  end
  describe "#move" do
    it "raises error if player tries to move from empty pile" do 
      expect{tower.move([1,2])}
    end
    it "raise error if player tries to place larger disc on smaller disc" do
      tower.board = middle_of_game_board
      expect{tower.move([0,1])}
    end
  end

  describe "#won?" do
    it "correctly determines when game is won" do 
      tower.board = finished_board 
      expect(tower.won?).to be true
    end
  end
end

# start_board = [
# [4,3,2,1],
# [       ],
# [       ]
# ]
