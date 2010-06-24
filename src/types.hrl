-ifndef(types).
-define(types, true).

-include("pdu.hrl").

-type(pdu() :: #pdu{command_length :: integer(),
					command_id :: integer(),
					command_status :: integer(),
					sequence_number :: integer(), 
					body :: valid_pdu() | valid_pdu_error()}).

-type(valid_pdu() ::  generic_nack()
					| bind_receiver()
					| bind_transmitter()
					| query_sm()
					| query_sm_resp()
					| submit_sm_resp()
					| deliver_sm_resp()
					| unbind() 
					| unbind_resp()
					| replace_sm_resp() 
					| cancel_sm_resp()
					| bind_transceiver()
					| outbind()
					| enquire_link()
					| enquire_link_resp()).

-type(valid_pdu_error() :: invalid_command_id()).

-type(generic_nack() :: #generic_nack{}).
-type(bind_receiver() :: #bind_receiver{}).
-type(bind_transmitter() :: #bind_transmitter{}).
-type(query_sm() :: #query_sm{}).
-type(query_sm_resp() :: #query_sm_resp{}).
-type(submit_sm_resp() :: #submit_sm_resp{}).
-type(deliver_sm_resp() :: #deliver_sm_resp{}).
-type(unbind() :: #unbind{}).
-type(unbind_resp() :: #unbind_resp{}).
-type(replace_sm_resp() :: #replace_sm_resp{}).
-type(cancel_sm_resp() :: #cancel_sm_resp{}).
-type(bind_transceiver() :: #bind_transceiver{}).
-type(outbind() :: #outbind{}).
-type(enquire_link() :: #enquire_link{}).
-type(enquire_link_resp() :: #enquire_link_resp{}).

-type(invalid_command_id() :: {'error', {'command_id', integer()}}).

-endif.