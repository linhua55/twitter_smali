package defpackage;

import android.app.Activity;
import android.support.annotation.LayoutRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout;
import cgl;
import com.google.android.exoplayer.DefaultLoadControl;
import com.twitter.library.media.widget.AdaptiveTweetMediaView;
import com.twitter.library.media.widget.ab;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.b;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: anj */
public class anj extends b<anm> {
    private View b;

    public anj(Activity activity) {
        super(activity);
    }

    public void a(anm anm) {
        boolean g = buf.a().g();
        Tweet tweet = anm.a;
        Activity d = d();
        if (this.b == null) {
            this.b = anj.a(d, 2130969184);
        }
        View view = this.b;
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) view.findViewById(2131953050);
        AdaptiveTweetMediaView a = a(d, anm, tweet, DisplayMode.FULL);
        this.a = a;
        a.setMediaDividerSize(d.getResources().getDimensionPixelSize(bcv.adaptiveTweetMediaViewDividerFull));
        a.setLayoutParams(new LayoutParams(-1, -1));
        aspectRatioFrameLayout.addView(a);
        view.setTag(a);
        a.setOnMediaClickListener(anm.c);
        a.setTweet(tweet);
        cgl aa = tweet.aa();
        if (aa != null) {
            a.setCard(aa);
        } else {
            a.a(tweet.w.d, tweet.C);
        }
        if (a.g()) {
            a.a(g);
            a.setSingleImageMinAspectRatio(1.0f);
            if (!g) {
                aspectRatioFrameLayout.setAspectRatio(com.twitter.util.math.b.a(a.getMediaCount() == 1 ? ((ab) a.getMediaItems().get(0)).b.e() : 1.7777778f, DefaultLoadControl.DEFAULT_LOW_BUFFER_LOAD, 5.0f));
                return;
            }
            return;
        }
        aspectRatioFrameLayout.setVisibility(8);
    }

    private static View a(Activity activity, @LayoutRes int i) {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(activity).inflate(i, null, false);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, 2131952571);
        viewGroup.setLayoutParams(layoutParams);
        viewGroup.setId(2131951723);
        return viewGroup;
    }

    public void a() {
        if (this.a != null) {
            this.a.setFromMemoryOnly(true);
        }
    }

    public View e() {
        return this.b;
    }

    public void a(boolean z) {
        if (this.a != null) {
            this.a.f();
        }
    }
}
