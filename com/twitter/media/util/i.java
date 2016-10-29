package com.twitter.media.util;

import android.content.Context;
import android.database.DatabaseUtils;
import android.provider.MediaStore.Files;
import com.twitter.android.bu;
import com.twitter.media.model.l;

/* compiled from: Twttr */
public class i extends bu {
    private static final String a;

    static {
        a = "_data NOT NULL AND _data != ? AND _size > 0 AND (mime_type != " + DatabaseUtils.sqlEscapeString("image/gif") + ")";
    }

    public i(Context context, boolean z, boolean z2) {
        Context context2 = context;
        super(context2, Files.getContentUri("external"), l.a, a(z, z2), new String[]{""}, "date_added DESC");
        a(false);
    }

    private static String a(boolean z, boolean z2) {
        return (z ? "_data NOT NULL AND _data != ? AND _size > 0" : a) + " AND (" + (z2 ? "media_type = 1 OR media_type = 3)" : "media_type = 1)");
    }
}
