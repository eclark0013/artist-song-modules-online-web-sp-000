module Memorable

  @@all=[]

  def all
    @@all
  end

  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end

end
