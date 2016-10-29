package com.twitter.database.internal;

import android.database.Cursor;
import com.twitter.database.model.j;

/* compiled from: Twttr */
public final class a<P> extends j<P> {
    private final Cursor b;

    public a(P p, Cursor cursor) {
        super(p);
        this.b = cursor;
    }

    public int a() {
        return this.b.getCount();
    }

    public boolean a(int i) {
        return this.b.moveToPosition(i);
    }

    public boolean b() {
        return this.b.moveToFirst();
    }

    public boolean c() {
        return this.b.moveToNext();
    }

    public boolean d() {
        return this.b.isAfterLast();
    }

    public void close() {
        this.b.close();
    }
}
