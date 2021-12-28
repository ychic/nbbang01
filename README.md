# nbbang01
안되시는분들은

데이터베이스 만드시고
# server context.xml
&lt;ResourceLink global="a?" name="a?" type="javax.sql.DataSource"/&gt;
# server server.xml
&lt;Resource auth="Container" driverClassName="oracle.jdbc.driver.OracleDriver" maxIdle="20" maxTotal="20" name="a?" username="db이름" password="db비번" type="javax.sql.DataSource" url="jdbc:oracle:thin:@127.0.0.1:1521:xe"&gt;
추가하시면 JNDI오류 해결될것입니다
