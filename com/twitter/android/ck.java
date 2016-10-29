package com.twitter.android;

/* compiled from: Twttr */
class ck implements Runnable {
    final /* synthetic */ DMConversationFragment a;

    ck(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public void run() {
        DMConversationFragment.d(this.a, false);
    }
}
