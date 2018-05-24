         ___        ______     ____ _                 _  ___  
        / \ \      / / ___|   / ___| | ___  _   _  __| |/ _ \ 
       / _ \ \ /\ / /\___ \  | |   | |/ _ \| | | |/ _` | (_) |
      / ___ \ V  V /  ___) | | |___| | (_) | |_| | (_| |\__, |
     /_/   \_\_/\_/  |____/   \____|_|\___/ \__,_|\__,_|  /_/ 
 ----------------------------------------------------------------- 


Hi there! Welcome to AWS Cloud9!

To get started, create some files, play with the terminal,
or visit https://docs.aws.amazon.com/console/cloud9/ for our documentation.

Happy coding!



<h1>익명의 게시글을 작성하는 곳입니다</h1>

<form action='/create' method='post'>
    <%= hidden_field_tag :authenticity_token, form_authenticity_token %>
    <textarea type="text" name="post_content"></textarea> <br>
    <input type="submit" value="제출">
</form>

---------------------------------------------------------------------------------

<h1>게시글</h1>
<p> <ul id="posts">
    <% @posts.each do |x| %>
    <li><strong>#익명 <%= x.id %>번째 게시물</strong>
    // <%= x.created_at.getlocal("+09:00").strftime("%Y.%m.%d %p %I:%M") %>
    // <a href = '/destroy/<%=x.id%>'>삭제!</a> <br>
    <%= x.content %> <br> </li>
    <% end %>
</ul> </p>