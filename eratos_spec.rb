require_relativ 'eratos'

describe Eratos do
  [
    {arg:  2, expect: [2]},
    {arg:  3, expect: [2,3]},
    {arg:  4, expect: [2,3]},
    {arg:  5, expect: [2,3,5]},
    {arg:  6, expect: [2,3,5]},
    {arg:  7, expect: [2,3,5,7]},
    {arg:  8, expect: [2,3,5,7]},
    {arg:  9, expect: [2,3,5,7]},
    {arg: 10, expect: [2,3,5,7]},
    {arg: 11, expect: [2,3,5,7,11]},
    {arg: 12, expect: [2,3,5,7,11]},
    {arg: 13, expect: [2,3,5,7,11,13]},
    {arg: 14, expect: [2,3,5,7,11,13]},
    {arg: 15, expect: [2,3,5,7,11,13]},
    {arg: 16, expect: [2,3,5,7,11,13]},
    {arg: 17, expect: [2,3,5,7,11,13,17]},
    {arg: 18, expect: [2,3,5,7,11,13,17]},
    {arg: 19, expect: [2,3,5,7,11,13,17,19]},
    {arg: 20, expect: [2,3,5,7,11,13,17,19]},
    {arg: 21, expect: [2,3,5,7,11,13,17,19]},
    {arg: 22, expect: [2,3,5,7,11,13,17,19]},
    {arg: 23, expect: [2,3,5,7,11,13,17,19,23]},
    {arg: 24, expect: [2,3,5,7,11,13,17,19,23]},
    {arg: 25, expect: [2,3,5,7,11,13,17,19,23]},
    {arg: 100, expect: [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]},
  ].each do |e|
     context 'with argument '+e[:arg].to_s do
       subject { Eratos.new(e[:arg].to_i).prime }
       it { is_expected.to eq e[:expect] }
    end
  end
end

