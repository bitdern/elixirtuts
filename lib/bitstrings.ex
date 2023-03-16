defmodule Bitstrings do

# Fly to Base => FB
# Fly to Earth => FE
# Hover => H
# Tractor beam ON => T
# Tractor beam OFF => O

  @doc """
  Converts readable characters into binary values
  Returns `binary` from `charset`
  ## Parameters
  - binary: binary value
  - charset: list of characters available for scripting
  ## Examples
    iex> Bitstrings.encode_instruction(?H)
    0
    iex> Bitstrings.encode_instruction(?T)
    8
  """
  def encode_instruction(code_point) do
    case code_point do
      ?H -> 0b0000
      ?F -> 0b0001
      ?B -> 0b0010
      ?E -> 0b0100
      ?T -> 0b1000
      ?O -> 0b0011
    end
  end

  @doc """
  Converts binary instructions into readable characters
  Returns `charset` from `binary`
  ## Parameters
  - binary: binary value
  - charset: list of characters available for scripting
  ## Examples
    iex> Bitstrings.decode_instruction(8)
    84
    iex> Bitstrings.decode_instruction(2)
    66
  """
  def decode_instruction(encoded_code) do
    case encoded_code do
      0b0000 -> ?H
      0b0001 -> ?F
      0b0010 -> ?B
      0b0100 -> ?E
      0b1000 -> ?T
      0b0011 -> ?O
    end
  end

  @doc """
  Returns bitstrings of blork's flight automation scripts
  Returns `bitstring` based on `charscript`
  ## Parameters
  - bitstring: bitstring value
  - charscript: list of characters arranged in a script
  ## Examples
      iex> Bitstrings.encode('FEHTOFB')
      <<20, 8, 49, 2::size(4)>>
      iex> Bitstrings.encode('FBFEHTOFB')
      <<18, 20, 8, 49, 2::size(4)>>
  """
  def encode(instructions, encoded_value \\ <<0::size(0)>>)
  def encode([], encoded_value), do: encoded_value
  def encode([head | tail], encoded_value) do
    encode(tail, <<encoded_value::bitstring, encode_instruction(head)::4>>)
  end

   @doc """
  Returns readable characters of blork's flight automation scripts
  Returns `charscript` based on `bitstrings`
  ## Parameters
  - bitstring: bitstring value
  - charscript: list of characters arranged in a script
  ## Examples
      iex> Bitstrings.decode(<<18, 20, 8, 49, 2::size(4)>>)
      'FBFEHTOFB'
      iex> Bitstrings.decode(<<1, 36, 131>>)
      'HFBETO'
  """
  def decode(instructions, decoded_value \\ '')
  def decode(<<0::0>>, decoded_value), do: decoded_value
  def decode(<<head::4, tail::bitstring>>, decoded_value) do
    decode(tail, decoded_value ++ [decode_instruction(head)])
  end
end
