package defpackage;

import android.database.Cursor;
import chj;
import com.twitter.library.provider.s;
import com.twitter.model.timeline.i;

/* compiled from: Twttr */
/* renamed from: cdt */
public class cdt extends chj<i> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return cursor.getColumnCount() == s.a.length && "feedback_action_confirmation".equals(cursor.getColumnName(4));
    }

    public i b(Cursor cursor) {
        return i.a(cursor.getString(2), cursor.getString(3), cursor.getString(4));
    }
}
