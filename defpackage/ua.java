package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import byy;
import caw;
import cmb;
import com.twitter.android.av.bd;
import com.twitter.android.av.bk;
import com.twitter.android.av.video.j;
import com.twitter.android.av.video.m;
import com.twitter.android.card.b;
import com.twitter.android.card.h;
import com.twitter.android.revenue.card.StatsAndCtaView;
import com.twitter.android.revenue.x;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.aw;
import com.twitter.library.av.az;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ai;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
/* renamed from: ua */
public class ua extends ue {
    private final StatsAndCtaView k;
    private byy l;
    private String m;

    public ua(Activity activity, DisplayMode displayMode, boolean z) {
        super(activity, displayMode, new h(activity), new b(activity), new j(ua.a((Context) activity, z)), ai.a(), z ? new ud() : new bk(), new bd(), new m());
        this.k = (StatsAndCtaView) this.a.findViewById(2131952837);
        ub ubVar = new ub(this);
        this.k.setOnClickTouchListener(ubVar);
        if (z) {
            View findViewById = this.a.findViewById(2131952851);
            Resources resources = this.q.getResources();
            float dimension = resources.getDimension(2131689727);
            x.a(findViewById, resources, new float[]{0.0f, 0.0f, 0.0f, 0.0f, dimension, dimension, dimension, dimension});
            ubVar.a(findViewById);
        }
    }

    private static View a(Context context, boolean z) {
        if (!z) {
            return LayoutInflater.from(context).inflate(2130969111, null, false);
        }
        View inflate = LayoutInflater.from(context).inflate(2130969082, new FrameLayout(context), false);
        ViewStub viewStub = (ViewStub) inflate.findViewById(2131952841);
        viewStub.setLayoutResource(2130969112);
        viewStub.inflate();
        return inflate;
    }

    public void a(long j, TwitterUser twitterUser) {
    }

    public void a(long j, cmb cmb) {
        super.a(j, cmb);
        this.l = byy.a("app_url", "app_url_resolved", cmb);
        this.m = caw.a("card_url", cmb);
        this.r.a(caw.a("_card_data", cmb));
        this.k.a(cmb);
    }

    private static VideoPlayerView b(Context context, AVPlayerAttachment aVPlayerAttachment, Mode mode, boolean z) {
        if (z) {
            return new VideoPlayerView(context, aVPlayerAttachment, mode);
        }
        aw p = ua.p();
        return new VideoPlayerView(context, aVPlayerAttachment, new az().a(context, aVPlayerAttachment), p, mode);
    }

    private static aw p() {
        return new uc();
    }
}
