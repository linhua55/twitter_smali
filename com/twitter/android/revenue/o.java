package com.twitter.android.revenue;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import com.twitter.library.provider.di;
import defpackage.aow;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class o implements Callable<Cursor> {
    final /* synthetic */ di a;
    final /* synthetic */ aow b;
    final /* synthetic */ j c;

    o(j jVar, di diVar, aow aow) {
        this.c = jVar;
        this.a = diVar;
        this.b = aow;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Cursor a() {
        SQLiteDatabase readableDatabase = this.a.getReadableDatabase();
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("ads_view");
        return sQLiteQueryBuilder.query(readableDatabase, this.b.b, this.b.c, this.b.d, null, null, this.b.e, null);
    }
}
