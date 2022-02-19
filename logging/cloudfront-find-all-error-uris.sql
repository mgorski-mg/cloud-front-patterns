SELECT count(*) as count, uri, status FROM "default"."cloudfront_logs"
where result_type = 'Error'
and date > Date('2022-02-17')
group by uri, status
order by count desc;