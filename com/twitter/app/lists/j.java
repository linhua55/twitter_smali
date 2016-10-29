package com.twitter.app.lists;

import android.database.Cursor;
import com.twitter.model.core.cg;
import defpackage.cgt;

/* compiled from: Twttr */
public class j extends cgt<cg> {
    private static final l a;
    private final Cursor b;

    static {
        a = new l();
    }

    public j(Cursor cursor) {
        super(cursor, a);
        this.b = cursor;
    }

    public boolean a() {
        return this.b != null && this.b.moveToLast() && this.b.getInt(6) == 1;
    }
}
