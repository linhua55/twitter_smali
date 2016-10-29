package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.twitter.model.dms.bg;

/* compiled from: Twttr */
/* renamed from: bla */
public class bla extends bkq<bg> {
    public bla(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    void a(bg bgVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_muted", Boolean.valueOf(bgVar.a));
        this.a.update("conversations", contentValues, "conversation_id=?", new String[]{bgVar.h});
    }
}
