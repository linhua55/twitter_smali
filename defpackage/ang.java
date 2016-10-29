package defpackage;

import anc;
import and;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.View.MeasureSpec;
import com.google.android.exoplayer.C;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.a;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: ang */
public class ang extends a<f> {
    private final Rect a;
    private final Tweet b;

    public ang(Activity activity, Tweet tweet, DisplayMode displayMode, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2) {
        super(activity, tweet, displayMode, twitterScribeAssociation, twitterScribeAssociation2);
        this.a = new Rect();
        this.b = tweet;
    }

    protected Object a() {
        return new and();
    }

    protected f a(Activity activity) {
        return new anc(activity, this.b, this.m);
    }

    public Rect a(Context context, int i, int i2, int i3, int i4) {
        this.a.setEmpty();
        View d = d();
        if (d != null) {
            d.measure(MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT), 0);
            this.a.set(i, i2, d.getMeasuredWidth() + i, d.getMeasuredHeight() + i2);
        }
        return this.a;
    }
}
