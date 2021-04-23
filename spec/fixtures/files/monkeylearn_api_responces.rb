@body={"status"=>{"code"=>10000, "description"=>"Ok", "req_id"=>"b45ecf08cba44a298bccf096d5958f91"}},
@plan_queries_allowed=0,
@plan_queries_remaining=0,
@raw_response=
 #<Faraday::Response:0x0000564e9fa37a98
  @env=
   #<struct Faraday::Env
    method=:post,
    body="{\n  \"status\": {\n    \"code\": 10000,\n    \"description\": \"Ok\",\n    \"req_id\": \"b45ecf08cba44a298bccf096d5958f91\"\n  }\n\n}",
    url=#<URI::HTTPS https://api.monkeylearn.com/v3/classifiers/cl_KFXhoTdt/classify/>,
    request=
     #<struct Faraday::RequestOptions params_encoder=nil, proxy=nil, bind=nil, timeout=nil, open_timeout=nil, write_timeout=nil, boundary=nil, oauth=nil, context=nil>,
    request_headers={"User-Agent"=>"ruby-sdk", "Authorization"=>"Token d7e98fe94a93d1694cd9411236f470eca6c2e7c9", "Content-Type"=>"application/json"},
    ssl=
     #<struct Faraday::SSLOptions
      verify=true,
      ca_file=nil,
      ca_path=nil,
      verify_mode=nil,
      cert_store=nil,
      client_cert=nil,
      client_key=nil,
      certificate=nil,
      private_key=nil,
      verify_depth=nil,
      version=nil,
      min_version=nil,
      max_version=nil>,
    parallel_manager=nil,
    params=nil,
    response=#<Faraday::Response:0x0000564e9fa37a98 ...>,
    response_headers={},
    status=200,
    reason_phrase="">,
  @on_complete_callbacks=[]>,
@request_queries_used=0,
@status=200>




@plan_queries_allowed=0,
 @plan_queries_remaining=0,
 @query_limit_remaining=0,
 @request_queries_used=0,
 @responses=
  [#<Monkeylearn::Response:0x00005650d9963c70
    @body={},
    @plan_queries_allowed=0,
    @plan_queries_remaining=0,
    @raw_response=
     #<Faraday::Response:0x00005650d9963ea0
      @env=
       #<struct Faraday::Env
        method=:post,
        body="{}",
        url=#<URI::HTTPS https://api.monkeylearn.com/v3/classifiers/cl_KFXhoTdt/classify/>,
        request=
         #<struct Faraday::RequestOptions
          params_encoder=nil,
          proxy=nil,
          bind=nil,
          timeout=nil,
          open_timeout=nil,
          write_timeout=nil,
          boundary=nil,
          oauth=nil,
          context=nil>,
        request_headers={"User-Agent"=>"ruby-sdk", "Authorization"=>"Token d7e98fe94a93d1694cd9411236f470eca6c2e7c9", "Content-Type"=>"application/json"},
        ssl=
         #<struct Faraday::SSLOptions
          verify=true,
          ca_file=nil,
          ca_path=nil,
          verify_mode=nil,
          cert_store=nil,
          client_cert=nil,
          client_key=nil,
          certificate=nil,
          private_key=nil,
          verify_depth=nil,
          version=nil,
          min_version=nil,
          max_version=nil>,
        parallel_manager=nil,
        params=nil,
        response=#<Faraday::Response:0x00005650d9963ea0 ...>,
        response_headers={},
        status=200,
        reason_phrase="">,
      @on_complete_callbacks=[]>,
    @request_queries_used=0,
    @status=200>]>