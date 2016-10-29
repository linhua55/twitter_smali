package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.ColumnDefinition.Type;
import com.twitter.database.model.n;
import com.twitter.database.schema.a;
import defpackage.atz;

/* compiled from: Twttr */
class an extends atz {
    final /* synthetic */ y b;

    an(y yVar, int i) {
        this.b = yVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.a(a.class, new com.twitter.database.model.a("prepared_media_ids", Type.SERIALIZABLE).a());
        nVar.a(a.class, new com.twitter.database.model.a("media_prepared_at", Type.LONG).a());
    }
}
