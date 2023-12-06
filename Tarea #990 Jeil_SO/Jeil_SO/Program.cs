using System;
using System.Diagnostics;

class Program
{
    static void Main()
    {
        Console.WriteLine("Bienvenido. Si quieres salir Ingresa 'exit' para salir.");
        Console.WriteLine("Para ganar debes encontrar el archivo llamado key.txt");
        Console.WriteLine("Pero cada vez que quieras ejecutar un comando tendras que resolver un multiplicación");
        Console.WriteLine("Suerte");
        Console.WriteLine();
        // Bucle principal para recibir comandos del usuario
        while (true)
        {
            Random rnd = new Random();

            // Generar dos números aleatorios entre 1 y 10 (puedes ajustar los límites según tus necesidades)
            int num1 = rnd.Next(1, 100);
            int num2 = rnd.Next(1, 100);

            Console.WriteLine($"Cual es el resultado de la multiplicacion de {num1} X {num2} = ?");
            Console.Write("propm> ");
            string comand = Console.ReadLine();

            var result = num2 * num1;

            if (comand.Equals(result.ToString()))
            {
                Console.WriteLine("La respuesta es correcta, adelante puedes ejecutar un comando");

                Console.Write("propm> ");
                string comando = Console.ReadLine();
                if (comando.ToLower() == "exit")
                {
                    break;
                }

                // Crea un nuevo proceso para ejecutar el comando ingresado
                var procesoInfo = new ProcessStartInfo
                {
                    FileName = "cmd.exe",
                    Arguments = $"/C {comando}", // /C indica que se debe cerrar el símbolo del sistema después de ejecutar el comando
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true,
                    CreateNoWindow = true,
                };

                // Inicia el proceso
                var proceso = new Process { StartInfo = procesoInfo };
                proceso.Start();

                // Lee y muestra la salida estándar
                string resultado = proceso.StandardOutput.ReadToEnd();
                Console.WriteLine("Resultado:");
                Console.WriteLine(resultado);
                if (resultado.Equals("Esta es la key : soilakey"))
                {
                    proceso.WaitForExit();
                    Console.WriteLine("------------------------------------");
                    Console.WriteLine("------------------------------------");
                    Console.WriteLine("------------------------------------");
                    Console.WriteLine("------------------------------------");
                    Console.WriteLine("Has encontrado la key");
                    Console.WriteLine("------------------------------------");
                    Console.WriteLine("------------------------------------");
                    Console.WriteLine("------------------------------------");
                    Console.WriteLine("------------------------------------");
                    Console.WriteLine("Fin del jeil");
                    break;

                }


                // Lee y muestra los errores, si los hay
                string errores = proceso.StandardError.ReadToEnd();
                if (!string.IsNullOrWhiteSpace(errores))
                {
                    Console.WriteLine("Errores:");
                    Console.WriteLine(errores);
                }

                // Espera a que el proceso termine
                proceso.WaitForExit();
            }
            else
            {
                Console.WriteLine("La respuesta es incorrecta, el resultado es: " + result);
            }
        
        }
    }
}
