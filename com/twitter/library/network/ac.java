package com.twitter.library.network;

import android.content.Context;
import com.twitter.internal.network.e;
import com.twitter.library.provider.cf;
import defpackage.cbe;

/* compiled from: Twttr */
public class ac extends ab {
    public ac(Context context) {
        super(context);
    }

    protected e a(Context context) {
        return new ae(cbe.a(context), cf.c(context));
    }
}
