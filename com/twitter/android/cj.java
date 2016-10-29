package com.twitter.android;

import com.twitter.model.dms.Participant;
import com.twitter.util.object.e;
import ctc;

/* compiled from: Twttr */
class cj implements ctc<Participant, Long> {
    final /* synthetic */ DMConversationFragment a;

    cj(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public Long a(Participant participant) {
        return Long.valueOf(((Participant) e.a(participant)).b);
    }
}
