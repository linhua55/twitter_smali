package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import bgv;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bkl */
public class bkl extends bkp<bho> {
    public bkl(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    void a(bho bho) {
        super.a((bgv) bho);
        if (aj.b(bho.e)) {
            Cursor query = this.a.query("users", new String[]{"name"}, "user_id=?", new String[]{bho.e}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToNext()) {
                        ((bhs) bho.c()).d = query.getString(0);
                    }
                    query.close();
                } catch (Throwable th) {
                    query.close();
                }
            }
        }
    }
}
