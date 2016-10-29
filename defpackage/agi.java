package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.moments.ui.fullscreen.ek;
import com.twitter.android.moments.ui.fullscreen.fx;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.util.object.e;
import rx.w;

/* compiled from: Twttr */
/* renamed from: agi */
public class agi implements ahj<o>, fx {
    private agg b;
    private ek c;
    private Resources d;

    public static agi a(Context context, LayoutInflater layoutInflater, Resources resources) {
        return new agi(agg.a(layoutInflater), ek.a(context), resources);
    }

    public agi(agg agg, ek ekVar, Resources resources) {
        this.b = agg;
        this.c = ekVar;
        this.d = resources;
    }

    public void a(o oVar, Tweet tweet) {
        e.a((Object) tweet);
        this.b.a(this.c.a(oVar, this.b.a()));
        this.b.b(tweet.B);
        this.b.c(this.d.getString(2131364279, new Object[]{tweet.v}));
        this.b.a(tweet.M);
    }

    public w<View> a() {
        return w.a(this.b.e());
    }

    public View aO_() {
        return this.b.e();
    }

    public rx.o<Integer> b() {
        return this.b.b();
    }
}
