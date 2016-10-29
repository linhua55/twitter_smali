package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.twitter.library.provider.di;
import com.twitter.model.dms.bj;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
/* renamed from: blc */
public class blc extends bkq<bj> {
    public blc(SQLiteDatabase sQLiteDatabase, long j, boolean z, boolean z2) {
        super(sQLiteDatabase, j, z, z2);
    }

    void a(bj bjVar) {
        Cursor query = this.a.query("conversation_entries", new String[]{"entry_id", "data"}, "entry_id " + di.a(bjVar.a), null, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                long j = query.getLong(0);
                bit bit = (bit) m.a(query.getBlob(1), bit.i);
                if (bit != null) {
                    bit = (bit) ((biu) new biu(bit).a(bjVar.b)).q();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("data", m.a(bit, bit.i));
                    this.a.updateWithOnConflict("conversation_entries", contentValues, "entry_id=?", new String[]{String.valueOf(j)}, 5);
                }
            }
            query.close();
        }
    }
}
