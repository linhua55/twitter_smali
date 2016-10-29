package com.twitter.library.service;

import android.os.Binder;

/* compiled from: Twttr */
public class g extends Binder {
    final /* synthetic */ AuthTokenService a;

    public g(AuthTokenService authTokenService) {
        this.a = authTokenService;
    }

    public AuthTokenService a() {
        return this.a;
    }
}
