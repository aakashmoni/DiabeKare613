<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String[]value = (String[])session.getAttribute( "myArray" );

String id=value[0];
out.println(id);
String name=value[1];
out.println(name);
String r1=value[2];
out.println(r1);
String r2=value[3];
out.println(r2);
String r3=value[4];
out.println(r3);
String r4=value[5];
out.println(r4);
String r5=value[6];
out.println(r5);
String r6=value[7];
out.println(r6);
String r7=value[8];
out.println(r7);
String r8=value[9];
out.println(r8);
String r9=value[10];
out.println(r9);
String r10=value[11];
out.println(r10);
String r11=value[12];
out.println(r11);
String r12=value[13];
out.println(r12);
String r13=value[14];
out.println(r13);
String r14=value[15];
out.println(r14);
String r15=value[16];
out.println(r15);
String r16=value[17];
out.println(r16);
String r17=value[18];
out.println(r17);
String r18=value[19];
out.println(r18);
String r19=value[20];
out.println(r19);
String r20=value[21];
out.println(r20);
String r21=value[22];
out.println(r21);
String r22=value[23];
out.println(r22);
String r23=value[24]; 
out.println(r23);
String r24=value[25];
out.println(r24);

boolean flag = dkbean.UpdateBasalProfile(id, name,  r1,  r2,  r3,  r4,  r5,  r6,  r7,  r8,  r9,  r10,  r11,  r12,  r13,  r14,  r15,  r16,  r17,  r18,  r19,  r20,  r21,  r22,  r23,  r24 );
out.println(flag);
%>