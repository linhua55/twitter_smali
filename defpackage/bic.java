package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.twitter.model.dms.Participant;
import com.twitter.model.dms.h;

/* compiled from: Twttr */
/* renamed from: bic */
public class bic {
    private static final String[] a;

    static {
        a = new String[]{"last_read_event_id", "sort_event_id", "sort_timestamp", "last_readable_event_id"};
    }

    public static void a(SQLiteDatabase sQLiteDatabase, boolean z, h hVar) {
        long max;
        long max2;
        long max3;
        long max4;
        String[] strArr = new String[]{hVar.a};
        long j = hVar.i;
        long j2 = hVar.h;
        long j3 = hVar.k;
        long j4 = hVar.h;
        Cursor query = sQLiteDatabase.query("conversations", a, "conversation_id=?", strArr, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    max = Math.max(query.getLong(1), j2);
                    max2 = Math.max(query.getLong(2), j3);
                    max3 = Math.max(query.getLong(0), hVar.i);
                    max4 = Math.max(query.getLong(3), j4);
                } else {
                    max4 = j4;
                    max2 = j3;
                    max = j2;
                    max3 = j;
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        } else {
            max4 = j4;
            max2 = j3;
            max = j2;
            max3 = j;
        }
        if (z) {
            sQLiteDatabase.delete("conversation_participants", "conversation_id=?", strArr);
            sQLiteDatabase.delete("conversations", "conversation_id=?", strArr);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("conversation_id", hVar.a);
        contentValues.put("type", Integer.valueOf(hVar.b));
        contentValues.put("title", hVar.e);
        contentValues.put("avatar_url", hVar.f);
        contentValues.put("is_muted", Boolean.valueOf(hVar.g));
        contentValues.put("is_hidden", Boolean.valueOf(false));
        contentValues.put("sort_event_id", Long.valueOf(max));
        contentValues.put("last_read_event_id", Long.valueOf(max3));
        contentValues.put("sort_timestamp", Long.valueOf(max2));
        contentValues.put("last_readable_event_id", Long.valueOf(max4));
        contentValues.put("min_event_id", Long.valueOf(hVar.j));
        contentValues.put("has_more", Boolean.valueOf(true));
        contentValues.put("read_only", Boolean.valueOf(hVar.l));
        sQLiteDatabase.insertWithOnConflict("conversations", null, contentValues, z ? 5 : 4);
        for (Participant participant : hVar.d) {
            int i;
            contentValues.clear();
            contentValues.put("conversation_id", hVar.a);
            contentValues.put("user_id", Long.valueOf(participant.b));
            contentValues.put("last_read_event_id", Long.valueOf(participant.d));
            if (1 == hVar.b) {
                contentValues.put("join_time", Long.valueOf(participant.c));
                contentValues.put("participant_type", Integer.valueOf(participant.b == hVar.c ? 0 : 1));
            } else {
                contentValues.put("join_time", Integer.valueOf(0));
                contentValues.put("participant_type", Integer.valueOf(1));
            }
            String str = "conversation_participants";
            if (z) {
                i = 5;
            } else {
                i = 4;
            }
            sQLiteDatabase.insertWithOnConflict(str, null, contentValues, i);
        }
    }
}
