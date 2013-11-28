require './tea_yourself'


describe 'TEST TEA YOURSELF' do

  it 'E=TEA' do
    TEAYOURSELF.do('E').should eq 'TEA'
  end
  it 'T=YOURSELF' do
    TEAYOURSELF.do('T').should eq 'YOURSELF'
  end
  it 'A=TEA YOURSELF' do
    TEAYOURSELF.do('A').should eq 'TEA YOURSELF'
  end
  it 'SOS=TEA TEA TEA YOURSELF YOURSELF YOURSELF TEA TEA TEA' do
    TEAYOURSELF.do('SOS').should eq 'TEA TEA TEA YOURSELF YOURSELF YOURSELF TEA TEA TEA'
  end
  it 'TEA YOURSELF' do
    TEAYOURSELF.do('TEA YOURSELF').should eq 'YOURSELF TEA TEA YOURSELF YOURSELF TEA YOURSELF YOURSELF YOURSELF YOURSELF YOURSELF TEA TEA YOURSELF TEA YOURSELF TEA TEA TEA TEA TEA TEA YOURSELF TEA TEA TEA TEA YOURSELF TEA'
  end
end