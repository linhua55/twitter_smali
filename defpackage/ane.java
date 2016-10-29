package defpackage;

import android.content.Context;
import android.database.Cursor;
import ccb;
import com.twitter.android.bu;
import com.twitter.android.revenue.u;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import cvi;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: ane */
class ane extends bu {
    private final Tweet a;
    private List<Tweet> b;

    ane(Context context, aow aow, Tweet tweet) {
        super(context, aow.a, aow.b, aow.c, aow.d, aow.e);
        this.a = tweet;
    }

    public Cursor loadInBackground() {
        Cursor loadInBackground = super.loadInBackground();
        if (loadInBackground.moveToFirst()) {
            n d = n.d();
            do {
                Tweet a = ccb.a.a(loadInBackground).a(this.a.f).a();
                if (u.a(a)) {
                    d.c(a);
                }
            } while (loadInBackground.moveToNext());
            this.b = (List) d.q();
        }
        cvi.a(loadInBackground);
        return loadInBackground;
    }

    public List<Tweet> b() {
        List<Tweet> list = this.b;
        return CollectionUtils.b(list) ? n.g() : list;
    }
}
