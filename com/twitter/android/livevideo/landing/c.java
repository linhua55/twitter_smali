package com.twitter.android.livevideo.landing;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.View.OnClickListener;
import aqj;
import cjl;
import com.twitter.android.av.video.VideoContainerHost;
import com.twitter.android.av.video.o;
import com.twitter.android.livevideo.player.LiveVideoPlayerChrome;
import com.twitter.android.livevideo.player.a;
import com.twitter.android.livevideo.player.e;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.base.n;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.inject.w;
import com.twitter.app.common.list.h;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.livevideo.LiveVideoDataSource;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.MediaEntity;
import com.twitter.util.aj;
import defpackage.abs;
import defpackage.abt;
import defpackage.bcx;
import defpackage.bqk;
import defpackage.dbg;
import rx.r;

/* compiled from: Twttr */
public class c extends w {
    private final VideoContainerHost a;
    private final h b;
    private final abs c;
    private final FragmentManager d;
    private final FragmentActivity e;
    private final LiveVideoPlayerChrome f;
    private final ToolBar g;
    private final a h;
    private boolean i;
    private final dbg j;
    private MediaEntity k;
    private final OnClickListener l;
    private final r<cjl> m;
    private final e n;

    public c(BaseFragmentActivity baseFragmentActivity, t tVar, n nVar, MediaAttachmentController mediaAttachmentController, abt abt, h hVar, a aVar) {
        this(baseFragmentActivity, (Bundle) tVar.a("ViewHost"), nVar, mediaAttachmentController, abt, hVar, aVar);
    }

    public c(BaseFragmentActivity baseFragmentActivity, Bundle bundle, n nVar, MediaAttachmentController mediaAttachmentController, abt abt, h hVar, a aVar) {
        super(bundle);
        this.j = new dbg();
        this.l = new d(this);
        this.m = new e(this);
        this.n = new f(this);
        this.e = baseFragmentActivity;
        this.d = baseFragmentActivity.getSupportFragmentManager();
        this.b = hVar;
        View a = a((FragmentActivity) baseFragmentActivity);
        a(a);
        this.g = (ToolBar) a.findViewById(bcx.toolbar);
        this.c = a(baseFragmentActivity, bundle, nVar, mediaAttachmentController, abt);
        this.a = (VideoContainerHost) a.findViewById(2131952651);
        this.f = (LiveVideoPlayerChrome) a.findViewById(2131952652);
        this.f.setOnFullscreenClickListener(this.n);
        this.h = aVar;
        if (bundle != null) {
            this.i = bundle.getBoolean("fullscreen_on_landscape", true);
        } else {
            this.i = true;
        }
        this.e.setTitle(BuildConfig.VERSION_NAME);
        a(2131952654, this.c);
        h();
    }

    private static TwitterScribeAssociation f() {
        return (TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().b("live_video_timeline")).c("highlights")).d("live_video_player")).a(6);
    }

    private void g() {
        View view = this.f.getView();
        if (view != null) {
            view.setVisibility(this.f.getView().getVisibility() == 0 ? 8 : 0);
        }
    }

    private View a(FragmentActivity fragmentActivity) {
        return fragmentActivity.getLayoutInflater().inflate(2130968947, null);
    }

    private abs a(FragmentActivity fragmentActivity, Bundle bundle, n nVar, MediaAttachmentController mediaAttachmentController, abt abt) {
        return new abs(aO_().findViewById(2131952654), fragmentActivity, bundle, nVar, mediaAttachmentController, new aqj(aO_().findViewById(2131952650), fragmentActivity.getResources().getDimensionPixelSize(2131690566)), abt);
    }

    public abs d() {
        return this.c;
    }

    public void ap_() {
        super.ap_();
        this.j.K_();
    }

    private void a(cjl cjl) {
        if (cjl.g != null && !cjl.g.a(this.k)) {
            this.k = cjl.g;
            this.a.setVideoContainerConfig((com.twitter.android.av.video.n) new o().a(new LiveVideoDataSource(cjl)).a(f()).a(bqk.g).a(Mode.EVENT_TIMELINE_HEADER).a(this.f).a(com.twitter.android.av.video.a.a(1.7777778f)).a(this.l).q());
            this.a.getAutoPlayableItem().aR_();
        }
    }

    private void b(cjl cjl) {
        if (cjl.g != null) {
            this.h.a(new LiveVideoDataSource(cjl)).c(true).a(f());
        }
    }

    private void h() {
        Fragment findFragmentByTag = this.d.findFragmentByTag("TAG_TIMELINE_FRAGMENT");
        this.j.a((findFragmentByTag == null ? i() : (LiveVideoTimelineFragment) findFragmentByTag).r().a(this.m));
    }

    private LiveVideoTimelineFragment i() {
        LiveVideoTimelineFragment liveVideoTimelineFragment = new LiveVideoTimelineFragment();
        liveVideoTimelineFragment.a(this.b);
        this.d.beginTransaction().add(2131952653, liveVideoTimelineFragment, "TAG_TIMELINE_FRAGMENT").commit();
        return liveVideoTimelineFragment;
    }

    private void a(String str) {
        if (!aj.a((CharSequence) str)) {
            this.c.b(str);
            this.c.a(this.e.getString(2131362298, new Object[]{str}));
        }
    }

    private void j() {
        this.g.setVisibility(this.g.getVisibility() == 0 ? 8 : 0);
    }

    public void a(Configuration configuration) {
        super.a(configuration);
        if (this.i && configuration.orientation == 2) {
            this.h.a(true).b(this.e);
        } else if (!this.i) {
            this.i = true;
        }
    }

    protected void a(Bundle bundle) {
        super.a(bundle);
        bundle.putBoolean("fullscreen_on_landscape", this.i);
    }
}
