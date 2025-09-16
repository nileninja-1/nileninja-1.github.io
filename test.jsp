<%@ page import="java.io.*, java.net.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Webserver Caller</title>
</head>
<body>
    <h2>Response from Webserver:</h2>
    <pre>
    <%
        String targetUrl = "https://webhook.site/931aa5bb-a5e2-413a-901a-c40de5a4bc2f"; // Example API
        HttpURLConnection connection = null;
        BufferedReader reader = null;
        StringBuilder response = new StringBuilder();

        try {
            // Open connection
            URL url = new URL(targetUrl);
            connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            connection.setConnectTimeout(5000); // 5 seconds
            connection.setReadTimeout(5000);

            // Read response
            reader = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line).append("\n");
            }

        } catch (Exception e) {
            response.append("Error: ").append(e.getMessage());
        } finally {
            if (reader != null) try { reader.close(); } catch (IOException ignored) {}
            if (connection != null) connection.disconnect();
        }

        // Output response
        out.println(response.toString());
    %>
    </pre>
</body>
</html>
