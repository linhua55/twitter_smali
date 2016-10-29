package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.ColumnDefinition.Type;
import com.twitter.database.model.n;
import com.twitter.database.schema.a;
import defpackage.atz;

/* compiled from: Twttr */
class ai extends atz {
    final /* synthetic */ y b;

    ai(y yVar, int i) {
        this.b = yVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.a(a.class, new com.twitter.database.model.a("flags", Type.INTEGER).a(Integer.valueOf(0)).a());
    }
}
