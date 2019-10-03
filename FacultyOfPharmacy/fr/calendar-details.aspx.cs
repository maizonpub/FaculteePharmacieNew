﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utils;

namespace FacultyOfPharmacy.fr
{
    public partial class calendar_details : System.Web.UI.Page
    {
        protected CMSGetCalendarByIdResult result;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request["calendarId"]);
            dcDataContext dc = new dcDataContext();
            result = dc.CMSGetCalendarById(id).SingleOrDefault();
        }
    }
}