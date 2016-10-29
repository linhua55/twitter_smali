package com.twitter.android;

import com.twitter.util.concurrent.e;
import defpackage.bbn;

/* compiled from: Twttr */
class wr implements e<Exception> {
    final /* synthetic */ UrlInterpreterActivity a;

    wr(UrlInterpreterActivity urlInterpreterActivity) {
        this.a = urlInterpreterActivity;
    }

    public void a(Exception exception) {
        if (exception != null) {
            bbn.a((Throwable) exception);
        }
        this.a.finish();
    }
}
