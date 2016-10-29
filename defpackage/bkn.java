package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.model.dms.ak;

/* compiled from: Twttr */
/* renamed from: bkn */
public class bkn extends bkq<ak> {
    public bkn(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    void a(ak akVar) {
        String[] strArr = new String[]{akVar.h};
        this.a.delete("conversations", "conversation_id=?", strArr);
        this.a.delete("conversation_entries", "conversation_id=?", strArr);
        this.a.delete("conversation_participants", "conversation_id=?", strArr);
    }
}
