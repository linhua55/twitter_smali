package com.twitter.media.model;

import android.database.Cursor;
import android.net.Uri;
import com.twitter.util.aj;
import java.io.File;

/* compiled from: Twttr */
public class l {
    public static final String[] a;
    public final long b;
    public final Uri c;
    public final MediaType d;

    static {
        a = new String[]{"_id", "_data", "media_type", "mime_type"};
    }

    public l(Cursor cursor) {
        int i = 1;
        this.b = cursor.getLong(0);
        this.c = Uri.fromFile(new File(cursor.getString(1)));
        if (cursor.getInt(2) != 3) {
            i = 0;
        }
        MediaType mediaType = i != 0 ? MediaType.d : aj.b(cursor.getString(3), "image/gif") ? MediaType.c : MediaType.b;
        this.d = mediaType;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof l) && a((l) obj));
    }

    public boolean a(l lVar) {
        return this == lVar || (lVar != null && lVar.d == this.d && lVar.c.equals(this.c) && lVar.b == this.b);
    }

    public int hashCode() {
        return ((this.d.hashCode() + 0) * 31) + this.c.hashCode();
    }
}
