SELECT count(*) as count, uri, status  FROM "default"."cloudfront_logs"
where status in (403, 404)
and date > Date('2022-02-17')
group by uri, status
having count(*) > 10
order by count desc;