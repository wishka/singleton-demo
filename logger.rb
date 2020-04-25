class Logger
def initialize
  @f = File.open 'log.txt', 'a'
end

  @@x = Logger.new

  def self.instance # Обозначает, что этот метот Синглтон
    return @@x
  end
# При таком раскладе со всременем программа будет все дольше и дольше открываться
# и тормозить, что влечет увеличение трафика и расодов
# instance method
  def log_something wat
    #f = File.open 'log.txt', 'a'
    @f.puts wat
    #f.close
  end
  private_class_method :new #Защищает от случайного создания элемента вне класса
end
