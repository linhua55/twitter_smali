package com.twitter.android;

import cfb;
import com.twitter.library.network.livepipeline.ac;
import com.twitter.model.livepipeline.c;

/* compiled from: Twttr */
class cw extends ac<c> {
    final /* synthetic */ DMConversationFragment a;

    cw(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public void a(c cVar) {
        cfb.b("LivePipeline", "Fetching new messages...");
        DMConversationFragment.c(this.a).a();
    }
}
