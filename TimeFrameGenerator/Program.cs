using System;

namespace TimeFrameGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime startDate, endDate;
            
            Console.WriteLine("Podaj datę początku");
            startDate = DateTime.ParseExact(Console.ReadLine(),"yyyy-MM-dd", null);
            Console.WriteLine("Podaj datę końca");
            endDate = DateTime.ParseExact(Console.ReadLine(), "yyyy-MM-dd", null);
            var csv = new CsvGenerator() { TimeFrom = startDate, TimeTo = endDate, Path = $"C:/Users/Piotr Nowek/Documents/DATA_Timeframe.csv" };
            Console.WriteLine("Rozpoczęto generację");
            csv.GenerateCsv();
            Console.WriteLine("Zakończono generację");
        }
    }
}
