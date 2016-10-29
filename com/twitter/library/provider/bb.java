package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import com.twitter.database.schema.m;
import defpackage.atz;

/* compiled from: Twttr */
class bb extends atz {
    final /* synthetic */ au b;

    bb(au auVar, int i) {
        this.b = auVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.a(m.class);
        this.b.h = true;
    }
}
