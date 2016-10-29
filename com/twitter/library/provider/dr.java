package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atx;
import defpackage.atz;
import java.util.List;

/* compiled from: Twttr */
public class dr extends atx {
    private final long b;

    dr(n nVar, SQLiteDatabase sQLiteDatabase, long j) {
        super(nVar, sQLiteDatabase);
        this.b = j;
    }

    protected int a() {
        return 18;
    }

    protected List<? extends atz> b() {
        return com.twitter.util.collection.n.a(new ds(this, 2), new atz[]{new eb(this, 3), new ec(this, 4), new ed(this, 5), new ee(this, 6), new ef(this, 7), new eg(this, 8), new eh(this, 9), new ei(this, 10), new dt(this, 11), new du(this, 12), new dv(this, 13), new dw(this, 14), new dx(this, 15), new dy(this, 16), new dz(this, 17), new ea(this, 18)});
    }
}
