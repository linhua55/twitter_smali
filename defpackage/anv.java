package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.View.MeasureSpec;
import com.google.android.exoplayer.text.Cue;
import com.twitter.android.revenue.y;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.a;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: anv */
public class anv extends a<f> {
    private final Rect a;

    public anv(Activity activity, Tweet tweet, DisplayMode displayMode, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2) {
        super(activity, tweet, displayMode, twitterScribeAssociation, twitterScribeAssociation2);
        this.a = new Rect();
    }

    protected Object a() {
        return new ans();
    }

    protected f a(Activity activity) {
        return new ano(activity, this.g, b(), this.h);
    }

    ant b() {
        String l = y.l();
        return new ant(y.a(l), y.b(l), y.c(l), y.d(l));
    }

    public Rect a(Context context, int i, int i2, int i3, int i4) {
        this.a.setEmpty();
        View d = d();
        if (d != null) {
            d.measure(MeasureSpec.makeMeasureSpec(i3, Cue.TYPE_UNSET), 0);
            this.a.set(i, i2, d.getMeasuredWidth() + i, d.getMeasuredHeight() + i2);
        }
        return this.a;
    }
}
