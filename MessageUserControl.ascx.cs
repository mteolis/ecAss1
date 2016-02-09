using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MessageUserControl : System.Web.UI.UserControl
{
    private string sender;
    private string receiver;
    private string message;
    private string date_sent;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string Sender
    {
        get { return sender; }
        set { sender = value; }
    }

    public string Receiver
    {
        get { return receiver; }
        set { receiver = value; }
    }

    public string Message
    {
        get { return message; }
        set { message = value; }
    }

    public string DateSent
    {
        get { return date_sent; }
        set { date_sent = value; }
    }

}