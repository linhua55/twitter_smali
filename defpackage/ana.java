package defpackage;

import android.app.Activity;
import android.content.res.Configuration;
import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import com.twitter.android.av.video.VideoContainerHost;
import com.twitter.android.av.video.i;
import com.twitter.android.av.video.j;
import com.twitter.android.av.video.n;
import com.twitter.android.revenue.y;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.av.playback.au;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.LandscapeAwareAspectRatioFrameLayout;
import com.twitter.library.widget.a;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.library.widget.tweet.content.h;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
/* renamed from: ana */
public class ana implements a, f<h> {
    @VisibleForTesting
    VideoContainerHost a;
    @VisibleForTesting
    final i b;
    private final WeakReference<Activity> c;
    private final DisplayMode d;
    private final View e;
    private final LandscapeAwareAspectRatioFrameLayout f;

    public ana(Activity activity, DisplayMode displayMode) {
        this(activity, displayMode, ana.a(activity, displayMode));
    }

    @VisibleForTesting
    ana(Activity activity, DisplayMode displayMode, j jVar) {
        this.c = new WeakReference(activity);
        this.d = displayMode;
        this.b = jVar.a(activity);
        this.e = this.b.c();
        this.f = (LandscapeAwareAspectRatioFrameLayout) this.e.findViewById(2131952493);
    }

    public void a(h hVar) {
        Activity activity = (Activity) this.c.get();
        Tweet a = hVar.a();
        TwitterScribeAssociation b = hVar.b();
        LayoutInflater from = LayoutInflater.from(activity);
        MediaEntity c = cpb.c(a.Y());
        if (this.d == DisplayMode.b && c != null) {
            this.b.a(c.k);
            this.b.a(c.t);
            this.b.b(c.v);
            this.b.a(new anb(this, c, a, b, activity));
        }
        TweetAVDataSource tweetAVDataSource = new TweetAVDataSource(a);
        n nVar = new n(tweetAVDataSource, b, bqk.c, Mode.TIMELINE_AUTOPLAY, null, this.d != DisplayMode.e ? com.twitter.android.av.video.a.a(tweetAVDataSource) : y.i());
        this.a = (VideoContainerHost) from.inflate(2130969522, this.f, false);
        this.f.addView(this.a);
        this.f.setAspectRatio(com.twitter.library.av.playback.h.a(tweetAVDataSource));
        if (this.d == DisplayMode.e) {
            this.f.a();
        }
        this.a.setVideoContainerConfig(nVar);
        if (this.d == DisplayMode.b) {
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(3, 2131952571);
            this.e.setLayoutParams(layoutParams);
        }
    }

    public void a() {
        if (this.b != null) {
            this.b.b();
        }
    }

    public void b() {
        if (this.b != null) {
            this.b.a();
        }
    }

    public View e() {
        return this.e;
    }

    public void al_() {
    }

    public void a(boolean z) {
    }

    public void b(boolean z) {
    }

    public void ak_() {
    }

    public void am_() {
    }

    public void a(Configuration configuration) {
    }

    public boolean c() {
        return this.a != null ? this.a.getAutoPlayableItem().c() : false;
    }

    public au aR_() {
        return this.a != null ? this.a.getAutoPlayableItem().aR_() : au.a;
    }

    public au aS_() {
        return this.a != null ? this.a.getAutoPlayableItem().aS_() : au.a;
    }

    public au h() {
        return this.a != null ? this.a.getAutoPlayableItem().h() : au.a;
    }

    public View i() {
        return this.a != null ? this.a.getAutoPlayableItem().i() : null;
    }

    @VisibleForTesting
    static j a(Activity activity, DisplayMode displayMode) {
        return displayMode == DisplayMode.b ? new j(activity) : new j(LayoutInflater.from(activity).inflate(2130969397, null, false));
    }
}
