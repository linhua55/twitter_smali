package com.twitter.android.moments.data;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import byi;
import ccc;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.service.x;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.n;
import defpackage.bns;
import java.util.List;

/* compiled from: Twttr */
public class al extends e<List<Tweet>> implements bb {
    private final Context a;
    private final byi b;
    private final az c;
    private am d;
    private final long e;

    public /* synthetic */ Object c(Cursor cursor) {
        return a(cursor);
    }

    public al(Context context, byi byi, LoaderManager loaderManager, long j, int i, az azVar) {
        super(loaderManager, i);
        this.a = context;
        this.b = byi;
        this.e = j;
        this.c = azVar;
    }

    public void a(List<Long> list, Session session, am amVar) {
        this.d = amVar;
        this.c.a(new bns(this.a, session, list, new an(this.b, this.e)), 0, this);
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        if (this.d != null && !xVar.U()) {
            this.d.a();
        }
    }

    public List<Tweet> a(Cursor cursor) {
        n d = n.d();
        while (cursor.moveToNext()) {
            d.c(ccc.a.a(cursor));
        }
        return (List) d.q();
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return this.b.a(this.e);
    }
}
