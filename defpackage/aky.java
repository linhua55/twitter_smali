package defpackage;

import android.database.Cursor;
import cgt;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: aky */
class aky implements cyw<Cursor, List<Tweet>> {
    final /* synthetic */ akv a;

    aky(akv akv) {
        this.a = akv;
    }

    public List<Tweet> a(Cursor cursor) {
        return n.a(new cgt(cursor, new akz(this)));
    }
}
