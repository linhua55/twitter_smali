package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.twitter.android.av.GalleryVideoChromeView;
import com.twitter.android.av.bk;
import com.twitter.config.AppConfig;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.ar;
import com.twitter.library.av.playback.av;
import com.twitter.library.av.u;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.media.ui.image.MediaImageView;
import crl;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: aaq */
public class aaq extends aag {
    protected VideoPlayerView h;
    AVPlayerAttachment i;
    private final av j;
    private final bk k;
    private final ai l;
    private u m;

    public aaq(Context context, ViewGroup viewGroup, int i, aao aao, TwitterScribeAssociation twitterScribeAssociation, List<MediaImageView> list) {
        this(context, viewGroup, i, aao, new av(), new bk(), ai.a(), list, twitterScribeAssociation);
    }

    aaq(Context context, ViewGroup viewGroup, int i, aao aao, av avVar, bk bkVar, ai aiVar, List<MediaImageView> list, TwitterScribeAssociation twitterScribeAssociation) {
        super(context, viewGroup, i, aao, twitterScribeAssociation, list);
        this.j = avVar;
        this.k = bkVar;
        this.l = aiVar;
    }

    public ViewGroup a(LayoutInflater layoutInflater, Context context, ViewGroup viewGroup) {
        return new FrameLayout(context);
    }

    public void a(aai aai, cqp cqp, aad aad) {
        if (!(aai instanceof aau) && AppConfig.m().a()) {
            bbn.a(new IllegalArgumentException("A video item is required!"));
        }
        this.f = aai;
        if (this.h == null) {
            ViewGroup a = a();
            Context context = a.getContext();
            this.i = new ar(this.l).a(this.j.a(this.f.a)).a(this.d).a(a.getContext()).a(bqk.b).b(false).a();
            this.h = this.k.a(context, this.i, e());
            this.h.setId(2131951741);
            a.addView(this.h);
            this.m = new aar(this, cqp, aad);
            this.h.setAVPlayerListener(this.m);
        }
        if (this.i != null) {
            this.i.i();
        }
    }

    protected Mode e() {
        return Mode.FULLSCREEN_GALLERY;
    }

    public AVPlayer f() {
        return this.i != null ? this.i.a() : null;
    }

    private void b(aai aai, cqp cqp, aad aad) {
        if (!(this.h == null || aad == null)) {
            aad.c(this.a);
        }
        if (!(this.h == null || cqp == null)) {
            this.h.setOnTouchListener(new crl(this.h, cqp));
        }
        aai.e = false;
    }

    public void c() {
        AVPlayerAttachment aVPlayerAttachment = this.i;
        if (aVPlayerAttachment != null) {
            aVPlayerAttachment.j();
            this.l.a(aVPlayerAttachment);
            this.l.b(aVPlayerAttachment.h());
            this.i = null;
        }
        if (this.h != null) {
            a().removeView(this.h);
            this.h.setAVPlayerListener(null);
            this.m = null;
            this.h = null;
        }
    }

    public void d() {
        AVPlayerAttachment aVPlayerAttachment = this.i;
        if (aVPlayerAttachment != null) {
            this.l.a(aVPlayerAttachment);
            this.l.b(aVPlayerAttachment.h());
        }
    }

    public void a(boolean z) {
        AVPlayerAttachment aVPlayerAttachment = this.i;
        if (aVPlayerAttachment != null) {
            GalleryVideoChromeView a = this.c.a();
            if (z) {
                if (!aVPlayerAttachment.a().x()) {
                    aVPlayerAttachment.a().b(1.0f);
                    aVPlayerAttachment.a(false);
                }
                if (a != null && this.f != null) {
                    a.setShouldShowControls(this.f.e());
                    a.setShouldPlayPauseOnTap(this.f.d());
                    a.a(aVPlayerAttachment);
                    VideoPlayerView videoPlayerView = this.h;
                    if (videoPlayerView != null) {
                        videoPlayerView.setExternalChromeView(a);
                    }
                    a.getView().setVisibility(0);
                    return;
                }
                return;
            }
            aVPlayerAttachment.a().b(0.0f);
            aVPlayerAttachment.a().l();
            a.getView().setVisibility(4);
        }
    }
}
