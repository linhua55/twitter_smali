package com.twitter.android;

import bbn;
import com.twitter.library.network.livepipeline.v;
import rx.am;

/* compiled from: Twttr */
class cy extends am<String> {
    final /* synthetic */ DMConversationFragment a;

    cy(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public /* synthetic */ void b_(Object obj) {
        a((String) obj);
    }

    public void bs_() {
    }

    public void a(Throwable th) {
        bbn.a(th);
    }

    public void a(String str) {
        v.a().a(this.a.getContext(), str);
    }
}
