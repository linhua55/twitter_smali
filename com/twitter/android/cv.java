package com.twitter.android;

import com.twitter.model.livepipeline.j;
import cyw;

/* compiled from: Twttr */
class cv implements cyw<j, Boolean> {
    final /* synthetic */ DMConversationFragment a;

    cv(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public Boolean a(j jVar) {
        return Boolean.valueOf(jVar.b.longValue() != DMConversationFragment.b(this.a));
    }
}
