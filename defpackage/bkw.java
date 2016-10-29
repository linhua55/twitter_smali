package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import bgv;
import com.twitter.library.provider.di;
import com.twitter.model.dms.Participant;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: bkw */
public class bkw extends bkp<bjk> {
    /* synthetic */ void a(bgv bgv) {
        b((bjk) bgv);
    }

    /* synthetic */ void c(bgv bgv) {
        a((bjk) bgv);
    }

    public bkw(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    void a(bjk bjk) {
        super.c(bjk);
        ContentValues contentValues = new ContentValues();
        for (Participant participant : bjk.h()) {
            contentValues.clear();
            contentValues.put("conversation_id", bjk.h);
            contentValues.put("user_id", Long.valueOf(participant.b));
            contentValues.put("join_time", Long.valueOf(participant.c));
            contentValues.put("participant_type", Integer.valueOf(1));
            this.a.insertWithOnConflict("conversation_participants", null, contentValues, 4);
        }
    }

    void b(bjk bjk) {
        super.a((bgv) bjk);
        List<Participant> h = bjk.h();
        ar a = ar.a(h.size());
        for (Participant participant : h) {
            a.c(Long.valueOf(participant.b));
        }
        Set set = (Set) a.q();
        n d = n.d();
        String[] strArr = new String[]{"name"};
        Cursor query = this.a.query("users", strArr, "user_id=?", new String[]{String.valueOf(bjk.d())}, null, null, null);
        if (query != null) {
            try {
                if (query.moveToNext()) {
                    ((bjn) bjk.c()).c = query.getString(0);
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        }
        query = this.a.query("users", strArr, "user_id " + di.a(set), null, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    d.c(query.getString(0));
                } finally {
                    query.close();
                }
            }
        }
        ((bjn) bjk.c()).d = (List) d.q();
    }
}
