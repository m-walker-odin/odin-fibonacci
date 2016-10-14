def fibs(members, result = [0, 1])
  return [] if members == 0
  return [result[0]] if members == 1

  (members - 2).times { result << (result[-1] + result[-2]) }
  result
end

def fibs_rec(members, result = [0, 1])
  return [] if members == 0
  return [result[0]] if members == 1
  return result if members == 2

  if members > 2
    fibs_rec(members - 1, result)
    return result << (result[-1] + result[-2])
  end
end