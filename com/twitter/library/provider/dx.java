package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;
import defpackage.axy;
import defpackage.ayk;

/* compiled from: Twttr */
class dx extends atz {
    final /* synthetic */ dr b;

    dx(dr drVar, int i) {
        this.b = drVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.b(new String[]{"moments_guide_delete_trigger"});
        nVar.a(axy.class);
        nVar.a(ayk.class);
        nVar.c(new String[]{"CREATE TRIGGER moments_guide_delete_trigger AFTER DELETE ON moments_sections FOR EACH ROW BEGIN DELETE FROM moments_guide WHERE section_id=OLD._id;END;"});
    }
}
