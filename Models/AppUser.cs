﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Work01.Models
{
    public class AppUser
    {
        public int UserID { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
    }
}