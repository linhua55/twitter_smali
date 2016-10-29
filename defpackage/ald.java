package defpackage;

import android.database.Cursor;
import cgt;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: ald */
class ald implements cyw<Cursor, List<TwitterUser>> {
    final /* synthetic */ ala a;

    ald(ala ala) {
        this.a = ala;
    }

    public List<TwitterUser> a(Cursor cursor) {
        return n.a(new cgt(cursor, new ale(this)));
    }
}
