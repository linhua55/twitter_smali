package defpackage;

import ana;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import com.twitter.library.av.playback.be;
import com.twitter.library.media.widget.aa;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.a;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: anl */
public class anl extends a<f> {
    final aa a;

    public anl(Activity activity, Tweet tweet, aa aaVar, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2) {
        super(activity, tweet, DisplayMode.FULL, twitterScribeAssociation, twitterScribeAssociation2);
        this.a = aaVar;
    }

    protected Object a() {
        return new anm(this.g, this.h, this.a);
    }

    protected f a(Activity activity) {
        if (be.b(this.g)) {
            return new ana(activity, DisplayMode.FULL);
        }
        return new anj(activity);
    }

    public Rect a(Context context, int i, int i2, int i3, int i4) {
        return new Rect(i, i2, i3, i2 + i4);
    }
}
