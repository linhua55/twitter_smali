package com.twitter.android;

import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class ws implements e<Void> {
    final /* synthetic */ UrlInterpreterActivity a;

    ws(UrlInterpreterActivity urlInterpreterActivity) {
        this.a = urlInterpreterActivity;
    }

    public void a(Void voidR) {
        this.a.finish();
    }
}
