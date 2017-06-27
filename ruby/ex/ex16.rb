ACCOUNT = [
{number:"1", name: "CREDIT  "},
{number:"2", name: "SAVINGS "},
{number:"3", name: "CHECKING"},
]
 ACCOUNT.each do |info|
  　puts  " #{info[:number]},#{info[:name]}"
  end
