package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import bgv;
import com.twitter.model.dms.a;

/* compiled from: Twttr */
/* renamed from: bkp */
public abstract class bkp<T extends bgv> extends bkq<T> {
    /* synthetic */ void a(a aVar) {
        c((bgv) aVar);
    }

    protected bkp(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    public final void b(T t) {
        super.b(t);
        if (t.a(this.b)) {
            a((bgv) t);
            ContentValues contentValues = new ContentValues();
            contentValues.put("entry_id", Long.valueOf(t.g));
            contentValues.put("sort_entry_id", Long.valueOf(t.g));
            contentValues.put("conversation_id", t.h);
            contentValues.put("created", Long.valueOf(t.i));
            contentValues.put("entry_type", Integer.valueOf(t.g()));
            contentValues.put("data", t.b());
            if (-1 != t.d()) {
                contentValues.put("user_id", Long.valueOf(t.d()));
            }
            a(t, contentValues);
            this.a.insertWithOnConflict("conversation_entries", "entry_id", contentValues, this.d ? 5 : 4);
        }
        if (t.b) {
            bkp.a(this.a, t.h, t.g, t.i);
        }
        if (t.c) {
            bkp.a(this.a, t.h, t.g);
        }
    }

    void a(T t) {
    }

    void c(T t) {
    }

    void a(T t, ContentValues contentValues) {
    }

    public static void a(SQLiteDatabase sQLiteDatabase, String str, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("last_readable_event_id", Long.valueOf(j));
        String str2 = "conversation_id=? AND last_readable_event_id < ?";
        sQLiteDatabase.update("conversations", contentValues, "conversation_id=? AND last_readable_event_id < ?", new String[]{str, String.valueOf(j)});
    }

    private static void a(SQLiteDatabase sQLiteDatabase, String str, long j, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("sort_event_id", Long.valueOf(j));
        contentValues.put("sort_timestamp", Long.valueOf(j2));
        String str2 = "conversation_id=? AND sort_event_id < ?";
        sQLiteDatabase.update("conversations", contentValues, "conversation_id=? AND sort_event_id < ?", new String[]{str, String.valueOf(j)});
    }
}
