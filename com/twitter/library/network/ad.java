package com.twitter.library.network;

import android.content.Context;
import android.preference.PreferenceManager;
import com.twitter.internal.network.e;
import com.twitter.library.provider.cf;
import defpackage.cbe;

/* compiled from: Twttr */
public class ad extends ab {
    public ad(Context context) {
        super(context);
    }

    protected e a(Context context) {
        return new af(cbe.a(context), cf.c(context), PreferenceManager.getDefaultSharedPreferences(context));
    }
}
