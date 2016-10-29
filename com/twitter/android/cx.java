package com.twitter.android;

import com.twitter.model.livepipeline.c;
import cyw;

/* compiled from: Twttr */
class cx implements cyw<c, Boolean> {
    final /* synthetic */ DMConversationFragment a;

    cx(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public Boolean a(c cVar) {
        return Boolean.valueOf(cVar.b.longValue() != DMConversationFragment.b(this.a));
    }
}
