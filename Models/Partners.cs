using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace UP01.Models
{
    public class Partners
    {
        [Key] public int idpartners { get; set; }
        public int type_partn { get; set; }
        public string company_name { get; set; }
        public string fio_director { get; set; }
        public string number_phone { get; set; }
        public int rayting { get; set; }
        public int skidka { get; set; }
        public Partners(int idpartners, int type_partn, string company_name, string fio_director, string number_phone, int rayting, int skidka)
        {
            this.idpartners = idpartners;
            this.type_partn = type_partn;
            this.company_name = company_name;
            this.fio_director = fio_director;
            this.number_phone = number_phone;
            this.rayting = rayting;
            this.skidka = skidka;
        }
    }
}
