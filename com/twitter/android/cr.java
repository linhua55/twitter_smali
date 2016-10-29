package com.twitter.android;

import cfb;
import com.twitter.config.c;
import com.twitter.library.network.livepipeline.ac;
import com.twitter.model.livepipeline.j;

/* compiled from: Twttr */
class cr extends ac<j> {
    final /* synthetic */ DMConversationFragment a;

    cr(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public void a(j jVar) {
        if (c.d("livepipeline_dm_typing_indicator_4643")) {
            DMConversationFragment.a(this.a).a(jVar.b.longValue());
            this.a.a(DMConversationFragment.a(this.a).d(jVar.b.longValue()).b(new cs(this)));
        }
        cfb.b("LivePipeline", "User " + jVar.b + " is typing...");
    }
}
