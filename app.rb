class Logger
def initialize
  @f = File.open 'log.txt', 'a'
end
  # Class method
  def self.say_something
    p 'Ha-Ha'
  end

  def self.instance # Обозначает, что этот метот Синглтон
    if @@x == nil
      @@x = Logger.new
    end
    return @@x
  end

# При таком раскладе со всременем программа будет все дольше и дольше открываться
# и тормозить, что влечет увеличение трафика и расодов
# instance method
  def self.log_something wat
    #f = File.open 'log.txt', 'a'
    @f.puts wat
    #f.close
  end
end

Logger.say_something
logger.instance.log_something 'BlaBla' #Если мы обращаемся к этой переменной 1-й раз, то инициализируется
logger.instance.log_something 'BlaBla2' # функция def self.instance и создается переменная @@x. Если не первый, то этот этап пропускается
# так как переменная уже существует
#logger.say_something
Logger.log_something 'wazzap'
