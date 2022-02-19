SELECT count(*) as count, uri, status FROM "default"."cloudfront_logs"
where result_type = 'Error'
and date > Date('2022-02-17')
and uri not in (select uri from "default"."cloudfront_logs" where result_type != 'Error')
group by uri, status
order by count desc;