package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class cp implements OnClickListener {
    final /* synthetic */ DMConversationFragment a;

    cp(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public void onClick(View view) {
        DMConversationFragment.q(this.a).b();
        DMConversationFragment.d(this.a, false);
    }
}
