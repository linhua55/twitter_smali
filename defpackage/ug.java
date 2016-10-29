package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import bqk;
import com.twitter.android.revenue.card.bf;
import com.twitter.app.common.util.v;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.ar;
import com.twitter.library.av.playback.au;
import com.twitter.library.av.playback.av;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.a;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: ug */
public class ug implements a {
    protected final bqk a;
    protected boolean b;
    private VideoPlayerView c;
    private au d;
    private final Context e;
    private final MediaImageView f;
    private final ViewGroup g;
    private final ai h;
    private final int i;
    private final ui k;
    private boolean l;
    private boolean m;
    private AVPlayerAttachment n;
    private TwitterScribeAssociation o;

    public ug(Context context, MediaImageView mediaImageView, ViewGroup viewGroup, int i, ui uiVar, bqk bqk) {
        this(context, mediaImageView, viewGroup, i, uiVar, ai.a(), bqk);
    }

    public ug(Context context, MediaImageView mediaImageView, ViewGroup viewGroup, int i, ui uiVar, ai aiVar, bqk bqk) {
        this.e = context;
        this.f = mediaImageView;
        this.g = viewGroup;
        this.i = i;
        this.k = uiVar;
        this.h = aiVar;
        this.a = bqk;
        bf.a(mediaImageView);
    }

    private void m() {
        this.n = new ar(this.h).a(this.d).a(this.o).a(this.a).a(this.e).b(false).a(v.a(this.e)).a();
        this.l = false;
        this.c = a(this.n);
        this.c.setId(this.i);
        this.c.setAVPlayerListener(new uh(this));
        View findViewById = this.g.findViewById(this.i);
        this.g.removeView(findViewById);
        AspectRatioFrameLayout a = a();
        a.setAspectRatio(1.7777778f);
        a.addView(this.c, findViewById.getLayoutParams());
        this.g.addView(a, findViewById.getLayoutParams());
        if (this.k != null) {
            this.k.aT_();
        }
    }

    protected AspectRatioFrameLayout a() {
        return new AspectRatioFrameLayout(this.e);
    }

    protected VideoPlayerView a(AVPlayerAttachment aVPlayerAttachment) {
        return new VideoPlayerView(this.e, aVPlayerAttachment, Mode.a);
    }

    public View b() {
        if (this.m) {
            return this.f;
        }
        return this.c;
    }

    public void a(Tweet tweet, TwitterScribeAssociation twitterScribeAssociation) {
        this.o = twitterScribeAssociation;
        this.d = new av().a(tweet);
        if (this.h.d(this.d.c().a())) {
            this.m = true;
        } else {
            m();
        }
    }

    public void e() {
        if (this.c != null) {
            f();
            this.h.b(this.d);
        }
    }

    void f() {
        if (!this.l) {
            this.h.a(this.n);
        }
        this.l = true;
    }

    public void j() {
        if (this.n != null) {
            this.n.i();
            if (this.b) {
                this.n.a(false);
            }
        }
    }

    public void k() {
        if (this.n != null) {
            this.b = this.n.a().u();
            this.n.j();
        }
    }

    public void l() {
        if (this.c != null) {
            this.c.m();
        }
    }

    public boolean c() {
        return true;
    }

    public au aR_() {
        return this.c != null ? this.c.n() : au.a;
    }

    public au aS_() {
        return this.c != null ? this.c.o() : au.a;
    }

    public au h() {
        return this.c != null ? this.c.q() : au.a;
    }

    public View i() {
        if (this.m) {
            this.m = false;
            m();
            this.c.m();
            b().requestLayout();
        }
        return b();
    }
}
