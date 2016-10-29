package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.ColumnDefinition.Type;
import com.twitter.database.model.a;
import com.twitter.database.model.n;
import defpackage.atz;
import defpackage.avt;

/* compiled from: Twttr */
class ec extends atz {
    final /* synthetic */ dr b;

    ec(dr drVar, int i) {
        this.b = drVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.a(avt.class, new a("last_read_event_id", Type.LONG).a(Long.valueOf(0), true).a());
    }
}
