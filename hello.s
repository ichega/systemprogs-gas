//Код программы
.text      		                          
    .global _start   

_start: // Начало программы, точка входа
      //Ниже вывод
	  movl    $len,%edx          
	  movl    $msg,%ecx           
	  movl    $1,%ebx            
	  movl    $4,%eax            
	  int     $0x80   

      // Завершение
	  movl    $0,%ebx            
	  movl    $1,%eax            
	  int     $0x80   

//Блок для данных
.data                           
msg:
	.ascii    "Привет!\nЭту программу написал Кацков Павел под Ubuntu 20.04 (Linux)!\n" 
	len = . - msg               