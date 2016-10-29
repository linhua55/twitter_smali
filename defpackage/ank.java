package defpackage;

import ana;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.View.MeasureSpec;
import cgl;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.Cue;
import com.twitter.android.revenue.y;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.av.playback.be;
import com.twitter.library.av.playback.h;
import com.twitter.library.media.widget.z;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.a;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.library.widget.tweet.content.l;
import com.twitter.library.widget.tweet.content.m;
import com.twitter.library.widget.tweet.content.o;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.Tweet;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.c;
import com.twitter.util.math.Size;
import cpb;

/* compiled from: Twttr */
/* renamed from: ank */
public class ank extends a<f> {
    protected final int a;
    protected final int b;
    protected final l c;
    protected final z d;

    public ank(Activity activity, Tweet tweet, DisplayMode displayMode, int i, int i2, l lVar, z zVar, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2) {
        super(activity, tweet, displayMode, twitterScribeAssociation, twitterScribeAssociation2);
        this.a = i;
        this.b = i2;
        this.c = lVar;
        this.d = zVar;
    }

    protected Object a() {
        return new o(this.g, this.h, this.a, this.b);
    }

    protected f a(Activity activity) {
        return this.g.M() ? new ana(activity, this.m) : new m(activity, this.m, this.c, this.d);
    }

    public Rect a(Context context, int i, int i2, int i3, int i4) {
        View d = d();
        if (d == null) {
            return new Rect();
        }
        if (DisplayMode.CAROUSEL == this.m || !buf.a().g()) {
            float e;
            cgl aa = this.g.aa();
            ImageSpec r = aa != null ? aa.r() : null;
            if (this.g.ac() && r != null) {
                e = Size.a(r.d.x, r.d.y).e();
            } else if (be.b(this.g)) {
                e = (DisplayMode.CAROUSEL != this.m ? com.twitter.android.av.video.a.a(new TweetAVDataSource(this.g)) : y.i()).a();
            } else {
                if (this.g.ao() && !this.g.W.isEmpty()) {
                    EditableMedia k = cpb.k(this.g.W);
                    if (k != null) {
                        e = h.a(k.bm_());
                    }
                }
                e = DisplayMode.CAROUSEL != this.m ? 1.7777778f : y.i().a();
            }
            d.measure(MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec((int) Math.rint((double) (((float) i3) / e)), Cue.TYPE_UNSET));
        } else {
            d.measure(MeasureSpec.makeMeasureSpec(i3, Cue.TYPE_UNSET), 0);
            if (c.f(context)) {
                int measuredHeight = d.getMeasuredHeight();
                int a = buf.a(context);
                if (measuredHeight > a) {
                    d.measure(MeasureSpec.makeMeasureSpec((int) Math.rint((double) ((((float) a) / ((float) measuredHeight)) * ((float) i3))), C.ENCODING_PCM_32BIT), 0);
                }
            }
        }
        return new Rect(i, i2, d.getMeasuredWidth() + i, d.getMeasuredHeight() + i2);
    }
}
