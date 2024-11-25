

A new Flutter project.


<style>
  table {
    width: 100%;
    border-collapse: collapse;
  }

  th, td {
    text-align: center;
    vertical-align: middle;
  }

  img {
    width: 100%; /* Default for smaller screens */
    max-width: 500px; /* Limit width for larger screens */
    height: auto; /* Maintain aspect ratio */
    display: block; /* Center the image */
    margin: auto;
  }

  /* For larger screens */
  @media (min-width: 768px) {
    table {
      table-layout: fixed; /* Evenly distribute table cells */
    }

    td {
      width: 50%; /* Two columns side by side */
    }
  }

  /* For very small screens */
  @media (max-width: 767px) {
    table, tr, td {
      display: block; /* Stack elements */
    }

    td {
      width: 100%; /* Full width for images */
      margin-bottom: 10px; /* Add spacing */
    }
  }
</style>

<table>
  <tr>
    <th></th>
    <th></th>
  </tr>
  <tr>
    <td>
      <img src="https://github.com/user-attachments/assets/593d2b5a-5188-4c66-8949-59ff18fa0ada" alt="iPhone 13 Pro Max 2">
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/a1b45c26-2314-47b8-ba97-a6b79b2f7af7" alt="iPhone 13 Pro Max 3">
    </td>
  </tr>
  <tr>
    <th></th>
    <th></th>
  </tr>
  <tr>
    <td>
      <img src="https://github.com/user-attachments/assets/698b6603-0163-487b-9ad0-895b3b807fc0" alt="iPhone 13 Pro Max 2">
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/3786086e-a719-4ca5-b36d-f2109588cbd8" alt="iPhone 13 Pro Max 3">
    </td>
  </tr>
  <tr>
    <th></th>
    <th></th>
  </tr>
  <tr>
    <td>
      <img src="https://github.com/user-attachments/assets/6ccaf0ab-3c92-4d3f-b6de-a1719e7f2e1e" alt="iPhone 13 Pro Max">
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/ae23f76d-e52b-4123-9bae-ab8a7b8c2d52" alt="iPhone 13 Pro Max 1">
    </td>
  </tr>
</table>

