package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import bgv;
import bhc;

/* compiled from: Twttr */
/* renamed from: bkv */
public class bkv extends bkp<bhc> {
    /* synthetic */ void a(bgv bgv) {
        b((bhc) bgv);
    }

    /* synthetic */ void c(bgv bgv) {
        a((bhc) bgv);
    }

    public bkv(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    void a(bhc bhc) {
        super.c(bhc);
        if (bhc.d() == this.b && bhc.c) {
            bkq.b(this.a, bhc.h, bhc.g);
        }
    }

    void b(bhc bhc) {
        super.a((bgv) bhc);
        if (bhc.o() != null) {
            if (bhc.d == -1) {
                bhc.d = c(bhc);
            }
            this.a.delete("conversation_entries", "request_id=? AND entry_type=1", new String[]{bhc.o()});
        }
    }

    void a(bhc bhc, ContentValues contentValues) {
        super.a(bhc, contentValues);
        contentValues.put("request_id", bhc.o());
        if (bhc.d != -1) {
            contentValues.put("sort_entry_id", Long.valueOf(bhc.d));
        }
    }

    private long c(bhc bhc) {
        Cursor query = this.a.query("conversation_entries", new String[]{"sort_entry_id"}, "entry_id=?", new String[]{String.valueOf(bhc.g)}, null, null, null);
        if (query == null) {
            return -1;
        }
        try {
            long j = query.moveToFirst() ? query.getLong(0) : -1;
            query.close();
            return j;
        } catch (Throwable th) {
            query.close();
        }
    }
}
