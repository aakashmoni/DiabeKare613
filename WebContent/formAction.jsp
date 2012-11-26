<HTML>
    <HEAD>
        <TITLE>Reading Radio Buttons</TITLE>
    </HEAD>

    <BODY>
        <H1>Reading Radio Buttons</H1>
        <%
            if(request.getParameter("radios") != null) {
                if(request.getParameter("radios").equals("radio1")) {
                    out.println("Radio button 1 was selected.<BR>");
                }
                else {
                    out.println("Radio button 1 was not selected.<BR>");
                }
                if(request.getParameter("radios").equals("radio2")) {
                    out.println("Radio button 2 was selected.<BR>");
                }
                else {
                    out.println("Radio button 2 was not selected.<BR>");
                }
                if(request.getParameter("radios").equals("radio3")) {
                    out.println("Radio button 3 was selected.<BR>");
                }
                else {
                    out.println("Radio button 3 was not selected.<BR>");
                }
            }
        %>
    </BODY>
</HTML>
        