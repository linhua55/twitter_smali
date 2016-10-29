package com.twitter.android;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class cz implements OnGlobalLayoutListener {
    final /* synthetic */ int a;
    final /* synthetic */ DMConversationFragment b;

    cz(DMConversationFragment dMConversationFragment, int i) {
        this.b = dMConversationFragment;
        this.a = i;
    }

    public void onGlobalLayout() {
        DMConversationFragment.a(this.b, this.a);
    }
}
