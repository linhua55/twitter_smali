package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.ColumnDefinition.Type;
import com.twitter.database.model.n;
import com.twitter.database.schema.a;
import defpackage.atz;

/* compiled from: Twttr */
class aa extends atz {
    final /* synthetic */ y b;

    aa(y yVar, int i) {
        this.b = yVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.a(a.class, new com.twitter.database.model.a("media", Type.SERIALIZABLE).a());
        y.c(sQLiteDatabase);
        this.b.d = true;
    }
}
