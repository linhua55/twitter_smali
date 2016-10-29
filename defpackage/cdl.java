package defpackage;

import android.database.Cursor;
import com.twitter.model.dms.Participant;
import com.twitter.model.dms.bb;

/* compiled from: Twttr */
/* renamed from: cdl */
public class cdl {
    public static final String[] a;
    public final String b;
    public final long c;
    public final long d;
    public final long e;

    static {
        a = new String[]{"conversation_id", "user_id", "join_time", "last_read_event_id"};
    }

    public cdl(Cursor cursor) {
        this.b = cursor.getString(0);
        this.c = cursor.getLong(1);
        this.d = cursor.getLong(2);
        this.e = cursor.getLong(3);
    }

    public Participant a() {
        return (Participant) ((bb) ((bb) ((bb) new bb().a(this.c)).b(this.d)).c(this.e)).q();
    }
}
