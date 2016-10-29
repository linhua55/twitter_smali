package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import bgv;
import com.twitter.model.dms.Participant;
import com.twitter.util.collection.CollectionUtils;

/* compiled from: Twttr */
/* renamed from: bkx */
public class bkx extends bkp<bjr> {
    /* synthetic */ void c(bgv bgv) {
        a((bjr) bgv);
    }

    public bkx(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    void a(bjr bjr) {
        super.c(bjr);
        for (Participant participant : bjr.h()) {
            this.a.delete("conversation_participants", "conversation_id=? AND user_id=?", new String[]{bjr.h, String.valueOf(participant.b)});
        }
    }

    void a(bjr bjr, ContentValues contentValues) {
        super.a(bjr, contentValues);
        Participant participant = (Participant) CollectionUtils.b(bjr.h());
        if (participant != null) {
            contentValues.put("user_id", Long.valueOf(participant.b));
        }
    }
}
