<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="main_bank.TransactionServlet.Transaction"%>

<!DOCTYPE html>
<html>
<head>
    <title>Transaction History</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Transaction History</h1>
    <table>
        <tr>
            <th>Account Number</th>
            <th>Type</th>
            <th>Amount</th>
            <th>Receiver's Account Number</th>
            <th>Date</th>
        </tr>
        <%
            List<Transaction> transactions = (List<Transaction>) request.getAttribute("transactions");
            if (transactions != null && !transactions.isEmpty()) {
                for (Transaction transaction : transactions) {
        %>
        <tr>
            <td><%= transaction.getAccountNumber() %></td>
            <td><%= transaction.getType() %></td>
            <td><%= transaction.getAmount() %></td>
            <td><%= transaction.getReceiverAccountNumber() != null ? transaction.getReceiverAccountNumber() : "N/A" %></td>
            <td><%= transaction.getTimestamp() %></td>
        </tr>
        <% } } else { %>
            <tr><td colspan="5">No transactions found.</td></tr>
        <% } %>
    </table>
</body>
</html>
