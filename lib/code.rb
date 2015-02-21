# using tdd code

<table>
  <thead>
    <tr>
    	<th>Number</th>
      <th>Roman Numeral</th>
      <th>Spanish</th>
    </tr>
  </thead>

  <tbody>
  	<% 500.times do |num| %>
	    <tr align="center">
	      <td><%= num %></td>
	      <td><%= num.to_roman %></td>
	      <td><%= num.num_to_span %></td>
	    </tr>
	    <% end %>
  </tbody>
</table>


# using gems

<table>
  <thead>
    <tr>
      <th>Number</th>
      <th>Roman Numeral</th>
      <th>Spanish</th>
    </tr>
  </thead>

  <tbody>
    <% 1000.times do |num| %>
      <tr align="center">
        <td><%= num %></td>
        <td><%= RomanNumerals.to_roman(num) %></td>
        <td><%= I18n.with_locale(:es) { num.to_words } %></td>
      </tr>
      <% end %>
  </tbody>
</table>