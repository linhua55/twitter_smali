package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.ColumnDefinition.Type;
import com.twitter.database.model.a;
import com.twitter.database.model.n;
import defpackage.atz;
import defpackage.aut;

/* compiled from: Twttr */
class ba extends atz {
    final /* synthetic */ au b;

    ba(au auVar, int i) {
        this.b = auVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        if (!this.b.i) {
            nVar.a(aut.class, new a("remote_id", Type.LONG).a());
        }
    }
}
