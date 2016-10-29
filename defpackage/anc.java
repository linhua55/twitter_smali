package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.database.Cursor;
import android.support.v4.content.Loader;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.util.LruCache;
import android.view.View;
import ane;
import anf;
import aow;
import cbp;
import chd;
import che;
import com.twitter.android.revenue.ah;
import com.twitter.android.revenue.ai;
import com.twitter.android.revenue.al;
import com.twitter.android.revenue.v;
import com.twitter.android.vq;
import com.twitter.library.client.bg;
import com.twitter.library.widget.a;
import com.twitter.library.widget.c;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.z;
import com.twitter.util.object.e;
import cpg;

/* compiled from: Twttr */
/* renamed from: anc */
public class anc implements OnLoadCompleteListener<Cursor>, c, f<and> {
    private static final LruCache<z<Long, DisplayMode>, Integer> a;
    private final v<Tweet> b;
    private ane c;
    private final Tweet d;
    private final DisplayMode e;

    public /* synthetic */ void onLoadComplete(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    static {
        a = new LruCache(5);
    }

    public anc(Context context, Tweet tweet, DisplayMode displayMode) {
        this(context, tweet, displayMode, cbs.a(context));
    }

    public anc(Context context, Tweet tweet, DisplayMode displayMode, cbo<cbp> cbo_cbp) {
        this.d = tweet;
        this.e = displayMode;
        this.b = new al(context, tweet, displayMode, new anf(a((Activity) context), b((Activity) context)), cbo_cbp);
        a(context, tweet);
    }

    private void a(Context context, Tweet tweet) {
        this.c = new ane(context, anc.a(bg.a().c().g(), tweet.ai), tweet);
        this.c.registerListener(1, this);
        this.c.startLoading();
    }

    private static aow a(long j, long j2) {
        return amf.a(new ame().b(j).c(j).a(27).a(cpg.a(j2)).a());
    }

    private vq a(Activity activity) {
        return new vq(activity, bg.a().c(), null, null, null);
    }

    private ah b(Activity activity) {
        return new ai(activity, bg.a().c(), null);
    }

    public void a(and and) {
    }

    public void a() {
        if (this.c != null) {
            this.c.unregisterListener(this);
            this.c.cancelLoad();
            this.c.stopLoading();
        }
        int a = this.b.a();
        if (a > 0) {
            a.put(z.a(Long.valueOf(this.d.ai), this.e), Integer.valueOf(a));
        }
        this.b.c();
    }

    public void b() {
    }

    public View e() {
        return this.b.b();
    }

    public void al_() {
    }

    public void a(boolean z) {
    }

    public void b(boolean z) {
        if (!z) {
            a.remove(z.a(Long.valueOf(this.d.ai), this.e));
        }
    }

    public void ak_() {
    }

    public void am_() {
    }

    public void a(Configuration configuration) {
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (loader instanceof ane) {
            int intValue;
            chd a = new che().a(((ane) loader).b()).a();
            this.b.a(a);
            Integer num = (Integer) e.b(a.get(z.a(Long.valueOf(this.d.ai), this.e)), Integer.valueOf(0));
            if (num.intValue() < a.aU_()) {
                intValue = num.intValue();
            } else {
                intValue = 0;
            }
            this.b.a(intValue);
        }
    }

    public a getAutoPlayableItem() {
        if (this.b instanceof c) {
            return ((c) this.b).getAutoPlayableItem();
        }
        return a.j;
    }
}
