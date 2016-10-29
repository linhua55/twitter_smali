package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import bgv;

/* compiled from: Twttr */
/* renamed from: blb */
public class blb extends bkp<bkg> {
    /* synthetic */ void c(bgv bgv) {
        a((bkg) bgv);
    }

    public blb(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    void a(bkg bkg) {
        super.c(bkg);
        String[] strArr = new String[]{bkg.h};
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", (String) bkg.c());
        this.a.update("conversations", contentValues, "conversation_id=?", strArr);
    }
}
