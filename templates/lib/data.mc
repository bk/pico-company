<%def name="get_sidebar(limit=3)">\
<%
sidebar_content = []
for it in MDCONTENT:
    pg = it['data']['page']
    if pg.sidebar:
        entry = {
            'url': pg.sidebar_item_url or it['url'],
            'title': pg.title,
            'image': pg.image,
            'subtitle': pg.subtitle or pg.summary or '',
            'order': pg.sidebar_order or 0
        }
        sidebar_content.append(entry)
# TODO: optionally sort by pubdate or a combination of factors
sidebar_content.sort(key=lambda x: x['order'])
return sidebar_content[:limit] or []
%>\
</%def>
