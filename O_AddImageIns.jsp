<title>Insert Data</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%
					     String user=(String)application.getAttribute("oname");
					
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					//String cat=null;
					String title=null,tag=null,uses=null;
					//String sub=null;
					String use=null;
					//String color=null;
					String des=null;   
					int rank=0;  
        			
					FileInputStream fs=null;
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							

							if(paramname.equalsIgnoreCase("title"))
							{
								title=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("tag"))
							{
								tag=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("des"))
							{
								des=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("uses"))
							{
								uses=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("img"))
							{
								image=multi.getParameter(paramname);
							}
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1)
								 {
									if (i != -1) 
									{
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						
						
						
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
						Key key = new SecretKeySpec(keyValue,"AES");
						Cipher c = Cipher.getInstance("AES");
						c.init(Cipher.ENCRYPT_MODE,key);
						String keyy = String.valueOf(keyValue);
						
						String encrypteddDesc= new String(Base64.encode(des.getBytes()));
						
						
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						//String as="0";
						//image = image.replace(".", "_b.");
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt=strDate+" "+strTime;
						
						KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
						Cipher encoder = Cipher.getInstance("RSA");
						KeyPair kp = kg.generateKeyPair();
						Key pubKey = kp.getPublic();
						byte[] pub = pubKey.getEncoded();
						String pk = String.valueOf(pub);
						
						
					String sql3="select * from images where title='"+title+"' ";
					Statement st3=connection.createStatement();
			  		ResultSet rs3=st3.executeQuery(sql3);
					if ( rs3.next() )
			   			{ 
						%><b> Image Already Exists</b>
						  <p align="center"><a href="O_AddImage.jsp" class="style47">Back</a></p
						 ><% }
						else
						{
						
						
						PreparedStatement ps=connection.prepareStatement("insert into images(owner,title,tag,description,uses,dt,image,rank,sk) values(?,?,?,?,?,?,?,?,?)");
						
						ps.setString(1,user);
						ps.setString(2,title);
						ps.setString(3,tag);
						ps.setString(4,encrypteddDesc);
						ps.setString(5,uses);
						ps.setString(6,dt);
						ps.setBinaryStream(7, (InputStream)fs, (int)(file1.length()));	
						ps.setInt(8,rank);
						ps.setString(9,pk);
						
						int x=ps.executeUpdate();
						if(x>0)
						{
							
							%> Image added Successfully 
        <p align="left"><a href="O_AddImage.jsp" class="style16">Upload Another Image</a></p>
        <p align="left"><a href="O_Main.jsp" class="style16">Go to Home</a></p>
		                   <%
		
		}
					   }
		}
					catch (Exception e) 
					{
						e.printStackTrace();
					}
				%>
