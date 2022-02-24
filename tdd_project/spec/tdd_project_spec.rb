require 'tdd_project'

describe "#my_uniq" do
let(:arr) {my_uniq([1,2,1,3,3])}
  it "removes duplicates from array" do
    expect(arr).to eq([1,2,3])
  end

  it "keeps elements in the same order" do
    expect(arr).to eq([1,2,1,3,3].uniq)
  end
end

describe "#two_sum" do
  let(:arr) {two_sum([-1, 0, 2, -2, 1])}
  it "finds all pairs of positions where the elements at those positions sum to zero" do
    expect(arr).to include([0,4])
  end

  it "pairs of positions maintain relative order" do 
    expect(arr).to eq(arr.sort)
  end
end

describe "#my_transpose" do 
  it "correctly transposes input matrix" do
    rows = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
    expect(my_transpose(rows)).to eq(rows.transpose)
  end
end

describe "#stock_picker" do 
  let(:stocks) { [5,10,4,5,2,15] }
  it "correctly returns the most profitable pair of days" do 
    expect(stock_picker(stocks)).to eq([2,15])
  end

  it "doesn't sell stock before it's bought" do 
    result = stock_picker(stocks)
    expect(stocks.index(result[0])).to be < (stocks.index(result[1])) 
  end
end






