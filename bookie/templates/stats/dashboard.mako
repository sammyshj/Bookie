<%inherit file="/main_wrap.mako" />
<%def name="title()">Bookie Dashboard</%def>
<div class="form">
<h2>User Data</h2>

<div id="user_stats_msg" class="error"></div>
<ul>
    <li><span class="label">Users:</span> <span id="user_stats_count"></span></li>
    <li><span class="label">Pending Activations:</span> <span id="user_stats_activations"></span></li>
    <li><span class="label">Users with Bookmarks:</span> <span id="user_stats_with_bookmarks"></span></li>
</ul>
</div>


<div class="form">
<h2>Bookmark Data</h2>

<div id="bookmark_stats_msg" class="error"></div>
<ul>
    <li>
        <span class="label">Bookmarks:</span>
        <span id="bookmark_stats_count"></span>
    </li>
    <li>
        <span class="label">Unique Urls:</span>
        <span id="bookmark_stats_unique_count"></span>
    </li>
</ul>
</div>
<%def name="add_js()">
    <script type="text/javascript">
        // Create a new YUI instance and populate it with the required modules.
        YUI().use('bookie-view', function (Y) {
            Y.on('domready', function() {
                var user_stats = new Y.bookie.UserStatsView({
                    container: Y.one('body')
                });
                var bookmark_stats = new Y.bookie.BookmarkStatsView({
                    container: Y.one('body')
                });
            });
        });
    </script>
</%def>
