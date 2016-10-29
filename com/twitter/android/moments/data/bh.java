package com.twitter.android.moments.data;

import android.database.Cursor;
import atf;
import chj;
import defpackage.aow;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
public class bh<T> implements atf<aow, T> {
    private final atf<aow, Cursor> a;
    private final chj<? extends T> b;

    public /* synthetic */ o a_(Object obj) {
        return a((aow) obj);
    }

    public bh(atf<aow, Cursor> atf_aow__android_database_Cursor, chj<? extends T> chj__extends_T) {
        this.a = atf_aow__android_database_Cursor;
        this.b = chj__extends_T;
    }

    public o<T> a(aow aow) {
        return this.a.a_(aow).g(new bi(this));
    }

    public void close() throws IOException {
        this.a.close();
    }
}
