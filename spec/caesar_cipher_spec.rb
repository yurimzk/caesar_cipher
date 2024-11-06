require_relative '../app'

RSpec.describe 'caesar_cipher'do
 it 'encrypts a word with a positive shift' do
    expect(caesar_cipher("HELLO", 3)).to eq("KHOOR")
  end

  it 'encrypts a word with a negative shift' do
    expect(caesar_cipher("KHOOR", -3)).to eq("HELLO")
  end

  it 'keeps non-alphabetic characters unchanged' do
    expect(caesar_cipher("Hello, World!", 3)).to eq("Khoor, Zruog!")
  end

  it 'encrypts a word with mixed uppercase and lowercase letters' do
    expect(caesar_cipher("Hello", 3)).to eq("Khoor")
  end

  it 'keeps the word unchanged with a shift of 0' do
    expect(caesar_cipher("Hello", 0)).to eq("Hello")
  end

  it 'handles shifts larger than 26' do
    expect(caesar_cipher("Hello", 29)).to eq("Khoor")  # 29 is equivalent to a shift of 3
  end
end
