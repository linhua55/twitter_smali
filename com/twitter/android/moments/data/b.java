package com.twitter.android.moments.data;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import byi;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.service.ac;
import com.twitter.model.moments.s;
import com.twitter.model.moments.t;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class b extends e<s> {
    private final Context a;
    private final bg b;
    private final az c;
    private final byi d;
    private final long e;
    private final ac f;
    private boolean g;

    public /* synthetic */ Object c(Cursor cursor) {
        return a(cursor);
    }

    public b(Context context, bg bgVar, az azVar, LoaderManager loaderManager, int i, byi byi, long j) {
        super(loaderManager, i);
        this.f = new c(this);
        this.a = context;
        this.b = bgVar;
        this.c = azVar;
        this.d = byi;
        this.e = j;
    }

    public s a(Cursor cursor) {
        String string;
        n d = n.d();
        String str = null;
        if (cursor.moveToFirst() && b(cursor)) {
            do {
                string = cursor.getString(cursor.getColumnIndex("category_id"));
                String string2 = cursor.getString(cursor.getColumnIndex("category_name"));
                Object obj = cursor.getInt(cursor.getColumnIndex("is_default_category")) == 1 ? 1 : null;
                d.c(new t(string, string2));
                if (obj != null || r0 == null) {
                    str = string;
                }
            } while (cursor.moveToNext());
            string = str;
        } else {
            string = null;
        }
        return new s(string, (List) d.q());
    }

    @VisibleForTesting
    boolean b(Cursor cursor) {
        return cursor.getLong(cursor.getColumnIndex("fetch_timestamp")) >= this.e;
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return this.d.a();
    }
}
