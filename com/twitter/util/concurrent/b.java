package com.twitter.util.concurrent;

import android.database.Cursor;
import cvi;

/* compiled from: Twttr */
public abstract class b implements e<Cursor> {
    protected abstract void a(Cursor cursor);

    public /* synthetic */ void a(Object obj) {
        b((Cursor) obj);
    }

    public final void b(Cursor cursor) {
        if (cursor != null) {
            try {
                a(cursor);
            } catch (Throwable th) {
                cvi.a(cursor);
            }
        }
        cvi.a(cursor);
    }
}
