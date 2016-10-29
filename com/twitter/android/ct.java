package com.twitter.android;

import android.content.DialogInterface;
import com.twitter.app.common.base.m;

/* compiled from: Twttr */
class ct implements m {
    final /* synthetic */ long a;
    final /* synthetic */ DMConversationFragment b;

    ct(DMConversationFragment dMConversationFragment, long j) {
        this.b = dMConversationFragment;
        this.a = j;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i2 == -1) {
            DMConversationFragment.a(this.b, this.a, false);
        }
    }
}
