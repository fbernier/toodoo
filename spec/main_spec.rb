require 'toodoo'

describe 'toodoo' do
  it 'set another color than red for high priority' do
    Toodoo.configuration.priority_color[:high] = Toodoo::Color.cyan
    Toodoo.configuration.priority_color[:high].should == Toodoo::Color.cyan
  end
end
