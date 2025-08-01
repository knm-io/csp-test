ngx.header.content_type = 'text/plain';
local headers = ngx.req.get_headers();

-- read body so it's available for logging
ngx.req.read_body();

ngx.print("OK, thanks.");
