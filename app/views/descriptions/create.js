$('#divErrors').html('');
<% if @description.errors.any? %>
    <% @errors = @description.errors %>
    $('#divErrors').html('<%=j render 'layouts/errors' %>');
    return;
<% else %>
    $('#divDescriptions').append('<%=j render 'descriptions/show' %>');
    $('#divNewDescription').hide();
<% end %>

