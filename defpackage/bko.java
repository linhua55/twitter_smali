package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.model.dms.an;

/* compiled from: Twttr */
/* renamed from: bko */
public class bko extends bkq<an> {
    public bko(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    void a(an anVar) {
        for (Long longValue : anVar.a) {
            long longValue2 = longValue.longValue();
            this.a.delete("conversation_entries", "entry_id=?", new String[]{String.valueOf(longValue2)});
        }
    }
}
