def method(arguments)

  yield(arguments)

end

method(%w(raven finch hawk eagle)) do |_,_,*raptors| 
  p "The raptors are: #{raptors.join(', ')}"
end