package defpackage;

import android.database.Cursor;

/* compiled from: Twttr */
/* renamed from: bif */
public class bif {
    public static final String[] b;
    public final long c;
    public final String d;
    public final String e;
    public final String f;
    public final int g;
    public final boolean h;

    static {
        b = new String[]{"_id", "conversation_entries_entry_id", "conversation_entries_conversation_id", "conversation_entries_user_id", "users_name", "conversation_entries_entry_type", "conversation_entries_created", "users_image_url", "is_unread", "conversation_entries_data", "users_username"};
    }

    public bif(Cursor cursor) {
        boolean z = true;
        this.c = cursor.getLong(1);
        this.d = cursor.getString(4);
        this.e = cursor.getString(7);
        this.f = cursor.getString(10);
        this.g = cursor.getPosition();
        if (cursor.getInt(8) <= 0) {
            z = false;
        }
        this.h = z;
    }

    public int b() {
        return this.g;
    }

    public long c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }
}
