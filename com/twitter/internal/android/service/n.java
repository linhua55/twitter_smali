package com.twitter.internal.android.service;

import android.os.Binder;

/* compiled from: Twttr */
public class n extends Binder {
    final /* synthetic */ AsyncService a;

    public n(AsyncService asyncService) {
        this.a = asyncService;
    }

    public AsyncService a() {
        return this.a;
    }
}
