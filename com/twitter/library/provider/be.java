package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.ColumnDefinition.Type;
import com.twitter.database.model.a;
import com.twitter.database.model.n;
import com.twitter.database.schema.i;
import defpackage.atz;

/* compiled from: Twttr */
class be extends atz {
    final /* synthetic */ au b;

    be(au auVar, int i) {
        this.b = auVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.a(i.class, new a("discover", Type.INTEGER).a());
    }
}
