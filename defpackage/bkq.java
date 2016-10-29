package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.twitter.model.dms.a;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bkq */
public abstract class bkq<T extends a> {
    final SQLiteDatabase a;
    final long b;
    final boolean c;
    final boolean d;

    abstract void a(T t);

    protected bkq(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        this.a = sQLiteDatabase;
        this.b = j;
        this.c = z;
        this.d = z2;
    }

    public void b(T t) {
        if (this.c) {
            a(t);
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, String str, long j) {
        ContentValues contentValues = new ContentValues();
        StringBuilder stringBuilder = new StringBuilder();
        n d = n.d();
        if (str != null) {
            stringBuilder.append("conversation_id=?");
            stringBuilder.append(" AND ");
            d.c(str);
        }
        stringBuilder.append("last_read_event_id < ?");
        d.c(String.valueOf(j));
        contentValues.put("last_read_event_id", Long.valueOf(j));
        List list = (List) d.q();
        sQLiteDatabase.update("conversations", contentValues, stringBuilder.toString(), (String[]) list.toArray(new String[list.size()]));
    }
}
