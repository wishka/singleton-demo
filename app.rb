require '.\logger.rb'


Logger.instance.log_something 'BlaBla' #Если мы обращаемся к этой переменной 1-й раз, то инициализируется
 # функция def self.instance и создается переменная @@x. Если не первый, то этот этап пропускается
# так как переменная уже существует
