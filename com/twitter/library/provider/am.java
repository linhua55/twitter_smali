package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
class am extends atz {
    final /* synthetic */ y b;

    am(y yVar, int i) {
        this.b = yVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.c(new String[]{"UPDATE drafts SET pc = NULL"});
    }
}
