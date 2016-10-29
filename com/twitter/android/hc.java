package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import com.twitter.android.revenue.d;
import com.twitter.library.provider.di;
import defpackage.aow;
import defpackage.cdu;

/* compiled from: Twttr */
public class hc extends bu {
    private final aow a;
    private final d b;
    private final long c;

    public hc(Context context, aow aow, d dVar, aow aow2, long j) {
        super(context, aow.a, aow.b, aow.c, aow.d, aow.e);
        this.b = dVar;
        this.a = aow2;
        this.c = j;
    }

    public Cursor loadInBackground() {
        Cursor loadInBackground = super.loadInBackground();
        if (cdu.b()) {
            this.b.a(di.a(getContext(), this.c), this.a);
        }
        return loadInBackground;
    }
}
