using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TimeFrameGenerator
{
    public class CsvGenerator
    {
        public DateTime TimeFrom { get; set; }
        public DateTime TimeTo { get; set; }

        public string Path { get; set; }

        public void GenerateCsv()
        {
            //before your loop
            var csv = new StringBuilder();
            var currentDate = TimeFrom;
            int id = 1;
            //addHeader
            var header = string.Format("{0},{1},{2},{3},{4}", "Id", "Name", "Day", "Month", "Year");
            csv.AppendLine(header);

            while (currentDate <= TimeTo)
            {
                //in your loop
                //var id = id;
                var name = currentDate.ToString("yyyy'/'MM'/'dd");
                //Console.WriteLine(name);
                var day = currentDate.Day;
                var month = currentDate.Month;
                var year = currentDate.Year;
                //Suggestion made by KyleMit
                var newLine = string.Format("{0},{1},{2},{3},{4}", id, name,day,month,year);
                csv.AppendLine(newLine);
                id += 1;
                currentDate = currentDate.AddDays(1);
            }
            
            //after your loop
            File.WriteAllText(Path, csv.ToString());
        }
    }
}
