package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import bgv;

/* compiled from: Twttr */
/* renamed from: bkz */
public class bkz extends bkp<bkc> {
    /* synthetic */ void c(bgv bgv) {
        a((bkc) bgv);
    }

    public bkz(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    void a(bkc bkc) {
        super.c(bkc);
        String[] strArr = new String[]{bkc.h};
        ContentValues contentValues = new ContentValues();
        contentValues.put("avatar_url", (String) bkc.c());
        this.a.update("conversations", contentValues, "conversation_id=?", strArr);
    }
}
