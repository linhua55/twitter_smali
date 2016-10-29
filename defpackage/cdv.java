package defpackage;

import android.database.Cursor;
import chj;
import com.twitter.model.timeline.i;
import com.twitter.model.timeline.l;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cdv */
public class cdv extends chj<l> {
    private final cdt a;

    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public cdv(cdt cdt) {
        this.a = cdt;
    }

    public boolean a(Cursor cursor) {
        return cursor.getCount() > 0 && cursor.isFirst() && this.a.a(cursor);
    }

    public l b(Cursor cursor) {
        int position = cursor.getPosition();
        i b = this.a.b(cursor);
        n a = n.a(cursor.getCount() - 1);
        while (cursor.moveToNext()) {
            a.c(this.a.b(cursor));
        }
        cursor.moveToPosition(position);
        return l.a(b, (List) a.q());
    }
}
