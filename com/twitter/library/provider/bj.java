package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import cne;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
final class bj extends atz {
    final /* synthetic */ au b;
    private final int[] c;

    bj(au auVar, int i, int[] iArr) {
        this.b = auVar;
        super(i);
        this.c = iArr;
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        this.b.j = cne.a(this.b.j, this.c);
        this.b.g = true;
    }
}
