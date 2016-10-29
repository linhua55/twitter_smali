package com.twitter.android.dm;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class p implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ DMEmojiComposeView b;

    p(DMEmojiComposeView dMEmojiComposeView, String str) {
        this.b = dMEmojiComposeView;
        this.a = str;
    }

    public void onClick(View view) {
        this.b.b.a(this.a);
    }
}
