package com.twitter.android;

import com.twitter.android.dm.g;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
class cl implements g {
    final /* synthetic */ DMConversationFragment a;

    cl(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public void a(TwitterUser twitterUser, boolean z) {
        DMConversationFragment.e(this.a, !z);
        if (this.a.ad()) {
            DMConversationFragment.w(this.a);
        }
    }
}
