package com.twitter.android;

/* compiled from: Twttr */
class ci implements Runnable {
    final /* synthetic */ DMConversationFragment a;

    ci(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public void run() {
        if (DMConversationFragment.u(this.a).a()) {
            DMConversationFragment.a(this.a, DMConversationFragment.v(this.a));
        } else {
            DMConversationFragment.d(this.a, false);
        }
    }
}
