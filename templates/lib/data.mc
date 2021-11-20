
<%def name="get_sidebar(limit=3)">\
<%
default_entries = [
    {'title': 'Donec sit amet', 'url': '#', 'image': '/img/example2.jpg', 'subtitle': 'Class aptent taciti sociosqu ad litora torquent per conubia nostra' },
    {'title': 'Suspendisse potenti', 'url': '#', 'image': '/img/example3.jpg', 'subtitle': 'Proin non condimentum tortor. Donec in feugiat sapien.' },
    {'title': 'Nullam lobortis placerat aliquam', 'url': '#', 'image': '/img/example4.jpg', 'subtitle': 'Maecenas vitae nibh blandit dolor commodo egestas vel eget neque' },
    {'title': 'Metellus quos ut', 'url': '#', 'image': '/img/example5.jpg', 'subtitle': 'Malem odit it dolor valemessit ut futarem.' },
]
sidebar_content = []
for it in MDCONTENT:
    if it['data']['sidebar']:
        entry = {
            'url': it['url'],
            'title': it['data']['title'],
            'image': it['data']['image'],
            'subtitle': it['data'].get('subtitle') or it['data'].get('summary', ''),
            'order': it['data'].get('sidebar_order') or 0
        }
        sidebar_content.append(entry)
# TODO: optionally sort by pubdate or a combination of factors
sidebar_content.sort(key=lambda x: x['order'])
return sidebar_content[:limit] or default_entries[:limit]
%>\
</%def>
