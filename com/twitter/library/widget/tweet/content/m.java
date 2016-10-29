package com.twitter.library.widget.tweet.content;

import android.app.Activity;
import android.view.View;
import com.twitter.library.media.widget.AdaptiveTweetMediaView;
import com.twitter.library.media.widget.z;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class m extends b<o> {
    private final DisplayMode b;
    private final l c;
    private final z d;

    public m(Activity activity, DisplayMode displayMode, l lVar, z zVar) {
        super(activity);
        this.b = displayMode;
        this.c = lVar;
        this.d = zVar;
    }

    public BaseMediaImageView a(MediaEntity mediaEntity) {
        if (this.a != null) {
            return this.a.a(mediaEntity);
        }
        return null;
    }

    public void a(o oVar) {
        boolean z = true;
        Tweet tweet = oVar.a;
        boolean z2 = tweet.z != null;
        Activity d = d();
        if (this.a == null) {
            this.a = a(d, oVar, tweet, DisplayMode.FORWARD);
            if (this.c != null) {
                this.a.setOnMediaClickListener(new n(this));
            }
        }
        AdaptiveTweetMediaView adaptiveTweetMediaView = this.a;
        z zVar = this.d;
        int i = oVar.b;
        int i2 = oVar.c;
        if (this.b == DisplayMode.CAROUSEL) {
            z = false;
        }
        d.a(z2, adaptiveTweetMediaView, zVar, tweet, i, i2, z);
    }

    public void a() {
        if (this.a != null) {
            this.a.d();
        }
    }

    public View e() {
        return this.a;
    }

    public void a(boolean z) {
    }
}
