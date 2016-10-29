package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import bqk;
import cai;
import com.twitter.android.av.ae;
import com.twitter.android.av.bd;
import com.twitter.android.av.bk;
import com.twitter.android.av.video.k;
import com.twitter.android.av.video.m;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.nativecards.q;
import com.twitter.android.revenue.y;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.au;
import com.twitter.library.widget.LandscapeAwareAspectRatioFrameLayout;
import com.twitter.library.widget.a;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: uj */
public class uj extends q implements OnClickListener, a {
    boolean a;
    final LandscapeAwareAspectRatioFrameLayout b;
    private boolean c;
    private final bd d;
    private final bk e;
    private final ai f;
    private final ae g;
    private final m h;
    private k i;

    public uj(Activity activity, DisplayMode displayMode) {
        this(activity, displayMode, new h(activity), new b(activity), new bd(), ai.a(), new bk(), new ae(), new m());
    }

    uj(Activity activity, DisplayMode displayMode, f fVar, com.twitter.android.card.a aVar, bd bdVar, ai aiVar, bk bkVar, ae aeVar, m mVar) {
        super(activity, displayMode, fVar, aVar);
        this.d = bdVar;
        this.f = aiVar;
        this.e = bkVar;
        this.g = aeVar;
        this.b = a((Context) activity);
        this.b.setOnClickListener(this);
        this.h = mVar;
    }

    public void a(long j, Tweet tweet) {
        super.a(j, tweet);
        this.c = !this.g.a(tweet);
    }

    public void a(cai cai) {
        super.a(cai);
        Activity l = l();
        if (this.i == null && l != null && this.w != null) {
            TweetAVDataSource tweetAVDataSource = new TweetAVDataSource(this.w);
            this.i = this.h.a(l, this.b, this.d, this.e, this.f, this.g, this.t, tweetAVDataSource, null);
            this.i.a(bqk.c, Mode.a);
            this.b.setAspectRatio(DisplayMode.e == this.x ? y.i().a() : tweetAVDataSource.n());
            if (this.a) {
                this.i.b();
                this.a = false;
            }
        }
    }

    public void a() {
        super.a();
        if (this.i != null) {
            this.i.a();
            this.i = null;
        }
    }

    public void ak_() {
        super.ak_();
        if (this.i != null) {
            this.i.e();
        }
    }

    public void a(boolean z) {
        super.a(z);
        if (this.i != null) {
            this.i.a(z);
        }
    }

    public void b(boolean z) {
        super.b(z);
        this.g.a();
    }

    public void b() {
        if (this.i != null) {
            this.i.b();
        } else {
            this.a = true;
        }
    }

    public View e() {
        return this.b;
    }

    public void onClick(View view) {
        if (this.i != null) {
            this.i.onClick(view);
        }
    }

    public boolean c() {
        return this.c;
    }

    public au aR_() {
        return this.i != null ? this.i.aR_() : au.a;
    }

    public au aS_() {
        return this.i != null ? this.i.aS_() : au.a;
    }

    public au h() {
        return this.i != null ? this.i.h() : au.a;
    }

    public View i() {
        return e();
    }

    protected LandscapeAwareAspectRatioFrameLayout a(Context context) {
        return new LandscapeAwareAspectRatioFrameLayout(context);
    }
}
