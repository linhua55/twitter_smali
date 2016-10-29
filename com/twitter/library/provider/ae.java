package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
class ae extends atz {
    final /* synthetic */ y b;

    ae(y yVar, int i) {
        this.b = yVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        if (!this.b.d) {
            y.b(sQLiteDatabase);
        }
    }
}
