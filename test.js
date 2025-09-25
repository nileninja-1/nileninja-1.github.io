// Example: Fetch data from an API endpoint
fetch("https://webhook.site/e5e834c3-f102-4383-ab64-ba5df4733756")
  .then(response => {
    if (!response.ok) {
      throw new Error("Network response was not ok " + response.statusText);
    }
    return response.text(); // Parse JSON response
  })
  .then(data => {
    console.log("Fetched data:", data);
  })
  .catch(error => {
    console.error("Fetch error:", error);
  });
