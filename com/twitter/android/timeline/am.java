package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;

/* compiled from: Twttr */
public class am {
    public static boolean a(Cursor cursor) {
        if (cursor != null && cursor.getColumnCount() > cdc.d && "timeline_entity_type".equalsIgnoreCase(cursor.getColumnName(cdc.d))) {
            return true;
        }
        return false;
    }
}
