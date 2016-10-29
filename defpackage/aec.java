package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.av.video.k;
import com.twitter.android.av.video.l;
import com.twitter.android.av.video.m;
import com.twitter.android.moments.viewmodels.j;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.a;
import com.twitter.model.core.Tweet;
import com.twitter.util.object.e;
import rx.an;

/* compiled from: Twttr */
/* renamed from: aec */
public class aec {
    private final aee a;
    private final m b;
    private final Activity c;
    private final aep d;
    private ade e;
    private TwitterScribeAssociation f;
    private j g;
    private an h;
    private k i;
    private OnClickListener j;

    public static aec a(Activity activity, Session session) {
        return new aec(new aee(activity), new aep(session), new m(), activity);
    }

    public static aec b(Activity activity, Session session) {
        return new aec(new aee(activity), new aep(session), new l(), activity);
    }

    public aec(aee aee, aep aep, m mVar, Activity activity) {
        this.a = aee;
        this.d = aep;
        this.b = mVar;
        this.c = activity;
    }

    public void a(j jVar, TwitterScribeAssociation twitterScribeAssociation) {
        this.f = twitterScribeAssociation;
        this.g = jVar;
        d();
    }

    private void d() {
        if (this.g != null) {
            if (this.g.h()) {
                this.e = this.d.a(this.c);
                e();
                return;
            }
            this.a.a(this.g);
        }
    }

    public void a() {
        this.g = null;
        if (this.i != null) {
            this.i.a();
            this.i = null;
        }
        if (this.h != null) {
            this.h.K_();
        }
        if (this.e != null) {
            cun.a(this.e);
            this.e = null;
        }
    }

    public void a(OnClickListener onClickListener) {
        this.j = onClickListener;
        this.a.a().setOnClickListener(this.j);
    }

    public a b() {
        return this.i != null ? this.i : a.j;
    }

    public View c() {
        return this.a.a();
    }

    private void e() {
        if (this.h != null) {
            this.h.K_();
        }
        this.h = ((ade) e.a(this.e)).a(((j) e.a(this.g)).a()).b(new aed(this));
    }

    private void a(Tweet tweet) {
        TweetAVDataSource tweetAVDataSource = new TweetAVDataSource(tweet);
        if (this.i == null) {
            TwitterScribeAssociation twitterScribeAssociation = (TwitterScribeAssociation) e.a(this.f);
            this.a.b((j) e.a(this.g));
            this.i = this.b.a(this.c, this.a.b(), twitterScribeAssociation, tweetAVDataSource, this.j);
            this.i.a(bqk.c, Mode.TIMELINE_AUTOPLAY_MOMENTS);
            this.a.a(this.i.k());
            this.i.b();
        }
    }
}
