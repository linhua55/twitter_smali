package com.twitter.library.provider;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.internal.m;
import com.twitter.database.model.l;
import com.twitter.database.model.n;
import com.twitter.database.model.w;
import com.twitter.database.schema.DraftsSchema;
import com.twitter.database.schema.a;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.MediaSource;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.serialization.s;
import defpackage.atx;
import defpackage.atz;
import java.util.List;

/* compiled from: Twttr */
public class y extends atx {
    private final atz b;
    private boolean c;
    private boolean d;

    protected y(n nVar, SQLiteDatabase sQLiteDatabase) {
        super(nVar, sQLiteDatabase);
        this.b = new z(this, -1);
    }

    protected l a(n nVar) {
        if (this.c) {
            b(nVar);
        }
        return super.a(nVar);
    }

    protected int a() {
        return 25;
    }

    protected List<? extends atz> b() {
        return com.twitter.util.collection.n.a(new ai(this, 2), new atz[]{new aj(this, 3), new ak(this, 4), new al(this, 5), a, a, a, new am(this, 9), new an(this, 10), new ao(this, 11), this.b, this.b, new ap(this, 14), new aa(this, 15), a, new ab(this, 17), new ac(this, 18), a, new ad(this, 20), new ae(this, 21), this.b, new af(this, 23), new ag(this, 24), new ah(this, 25)});
    }

    static void b(n nVar) {
        String a = aj.a(", ", ((m) ((a) com.twitter.database.model.m.a(DraftsSchema.class).a(a.class)).f()).a());
        String str = "drafts_old";
        w a2 = nVar.a();
        try {
            nVar.c(new String[]{"ALTER TABLE drafts RENAME TO drafts_old;"});
            nVar.a(a.class);
            nVar.c(new String[]{"INSERT INTO drafts SELECT " + a + " FROM " + "drafts_old" + ';'});
            nVar.c(new String[]{"DROP TABLE drafts_old;"});
            a2.a();
        } finally {
            a2.close();
        }
    }

    static void a(SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        sQLiteDatabase.beginTransaction();
        try {
            SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
            query = sQLiteDatabase2.query("drafts", new String[]{"_id", "media"}, null, null, null, null, null);
            if (query == null) {
                sQLiteDatabase.endTransaction();
                return;
            }
            ContentValues contentValues = new ContentValues(1);
            while (query.moveToNext()) {
                List list = (List) com.twitter.util.serialization.m.a(query.getBlob(1), s.a(EditableMedia.j));
                if (list != null) {
                    contentValues.put("media", com.twitter.util.serialization.m.a(CollectionUtils.a(list, DraftAttachment.b), s.a(DraftAttachment.a)));
                    sQLiteDatabase.update("drafts", contentValues, "_id=" + query.getLong(0), null);
                }
            }
            query.close();
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
        }
    }

    static void b(SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        sQLiteDatabase.beginTransaction();
        try {
            SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
            query = sQLiteDatabase2.query("drafts", new String[]{"_id", "media"}, null, null, null, null, null);
            if (query != null) {
                ContentValues contentValues = new ContentValues(1);
                while (query.moveToNext()) {
                    long j = query.getLong(0);
                    List list = (List) com.twitter.library.media.model.legacyeditablemedia.a.a(query.getBlob(1));
                    if (list != null) {
                        contentValues.put("media", com.twitter.util.serialization.m.a(list, s.a(EditableMedia.j)));
                        sQLiteDatabase.update("drafts", contentValues, "_id=" + j, null);
                    }
                }
                query.close();
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
        }
    }

    static void c(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        Cursor query;
        try {
            SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
            query = sQLiteDatabase2.query("drafts", new String[]{"_id", "media_entities"}, null, null, null, null, null);
            if (query != null) {
                ContentValues contentValues = new ContentValues(1);
                while (query.moveToNext()) {
                    long j = query.getLong(0);
                    List list = (List) com.twitter.library.media.model.legacyentities.a.a(query.getBlob(1));
                    if (list != null) {
                        contentValues.put("media", com.twitter.util.serialization.m.a(com.twitter.library.media.model.legacyentities.a.a(list, MediaSource.b), s.a(EditableMedia.j)));
                        sQLiteDatabase.update("drafts", contentValues, "_id=" + j, null);
                    }
                }
                query.close();
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
        }
    }

    static void d(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        Cursor query;
        try {
            SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
            query = sQLiteDatabase2.query("drafts", new String[]{"_id", "flags"}, null, null, null, null, null);
            if (query != null) {
                ContentValues contentValues = new ContentValues(2);
                while (query.moveToNext()) {
                    long j = query.getLong(0);
                    int i = query.getInt(1);
                    if ((i & 1) > 0) {
                        contentValues.put("flags", Integer.valueOf(i & -2));
                        contentValues.put("sending_state", Integer.valueOf(1));
                        sQLiteDatabase.update("drafts", contentValues, "_id=" + j, null);
                    }
                }
                query.close();
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
        }
    }
}
