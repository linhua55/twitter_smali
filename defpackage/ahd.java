package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.moments.ui.fullscreen.dl;
import com.twitter.android.moments.ui.fullscreen.ek;
import com.twitter.android.moments.ui.fullscreen.t;
import com.twitter.android.util.bd;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.ax;
import com.twitter.model.moments.viewmodels.v;
import com.twitter.util.object.e;
import rx.subjects.a;
import rx.w;

/* compiled from: Twttr */
/* renamed from: ahd */
public class ahd implements ahj<v> {
    private final Resources a;
    private final ek b;
    private ahc c;
    private a<ahd> d;

    public static ahd a(Context context, LayoutInflater layoutInflater, Resources resources) {
        return new ahd(resources, ahc.a(layoutInflater), ek.a(context));
    }

    public ahd(Resources resources, ahc ahc, ek ekVar) {
        this.d = a.q();
        this.a = resources;
        this.b = ekVar;
        this.c = ahc;
    }

    public void a(v vVar, Tweet tweet) {
        ax a = dl.a(this.a, vVar);
        e.a((Object) tweet);
        this.c.a(this.b.a(vVar, this.c.b()));
        this.c.b(tweet.B);
        this.c.c(this.a.getString(2131364279, new Object[]{tweet.v}));
        this.c.a(tweet.r, new ahe(this));
        this.c.a(a);
        this.c.a(tweet.M);
    }

    public void a(t tVar) {
        this.c.a(new ahf(this, tVar));
    }

    public w<View> a() {
        return this.d.b().c(bd.a());
    }

    public View aO_() {
        return this.c.a();
    }
}
