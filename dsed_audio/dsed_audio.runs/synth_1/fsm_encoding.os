
 add_fsm_encoding \
       {ctrl_fsm.state_reg} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} {111 111} }

 add_fsm_encoding \
       {global_controller.state_reg} \
       { }  \
       {{000 000} {001 001} {010 011} {011 100} {100 110} {101 101} {110 010} }
