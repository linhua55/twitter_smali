package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
class ea extends atz {
    final /* synthetic */ dr b;

    ea(dr drVar, int i) {
        this.b = drVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        String[] d = di.d();
        for (int i = 0; i < d.length; i++) {
            d[i] = d[i].replaceFirst("CREATE TRIGGER ", "CREATE TRIGGER IF NOT EXISTS ");
        }
        nVar.c(d);
    }
}
