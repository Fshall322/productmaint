package music.business;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;
import music.admin.ProductAdminController;

public class AsteriskTag extends TagSupport {

    public void doTag() throws JspException, IOException {
    JspWriter out = pageContext.getOut();
    out.println("*");
  }
}