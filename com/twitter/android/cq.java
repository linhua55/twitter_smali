package com.twitter.android;

import com.twitter.library.api.dm.requests.SendDMRequest;

/* compiled from: Twttr */
class cq implements Runnable {
    final /* synthetic */ SendDMRequest a;
    final /* synthetic */ DMConversationFragment b;

    cq(DMConversationFragment dMConversationFragment, SendDMRequest sendDMRequest) {
        this.b = dMConversationFragment;
        this.a = sendDMRequest;
    }

    public void run() {
        DMConversationFragment.a(this.b, this.a.h(), true);
    }
}
