<%def name="get_sidebar(limit=3)">\
<%
sidebar_content = []
for it in MDCONTENT:
    if it['data'].get('sidebar', False):
        entry = {
            'url': it['data'].get('sidebar_item_url') or it['url'],
            'title': it['data']['title'],
            'image': it['data']['image'],
            'subtitle': it['data'].get('subtitle') or it['data'].get('summary', ''),
            'order': it['data'].get('sidebar_order') or 0
        }
        sidebar_content.append(entry)
# TODO: optionally sort by pubdate or a combination of factors
sidebar_content.sort(key=lambda x: x['order'])
return sidebar_content[:limit] or []
%>\
</%def>
