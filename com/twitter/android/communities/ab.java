package com.twitter.android.communities;

import cyw;
import defpackage.bfx;
import defpackage.cho;
import java.security.InvalidParameterException;

/* compiled from: Twttr */
class ab implements cyw<bfx, cho> {
    final /* synthetic */ y a;

    ab(y yVar) {
        this.a = yVar;
    }

    public cho a(bfx bfx) {
        if (bfx != null && bfx.f != null) {
            return bfx.f;
        }
        throw new InvalidParameterException();
    }
}
