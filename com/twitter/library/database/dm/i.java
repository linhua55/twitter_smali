package com.twitter.library.database.dm;

import android.database.Cursor;
import com.twitter.library.database.dm.ShareHistoryTable.Type;

/* compiled from: Twttr */
public class i {
    public static final String[] a;

    static {
        a = new String[]{"reference_id", "is_conversation", "type"};
    }

    public static String a(Cursor cursor) {
        return cursor.getString(0);
    }

    public static boolean b(Cursor cursor) {
        return cursor.getInt(1) > 0;
    }

    public static Type c(Cursor cursor) {
        return Type.a(cursor.getInt(2));
    }

    public static l d(Cursor cursor) {
        return new l(a(cursor), b(cursor), c(cursor));
    }
}
