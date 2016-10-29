package defpackage;

import android.view.ViewStub;
import com.twitter.android.av.AutoPlayBadgeView;
import com.twitter.library.av.playback.bd;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: ahi */
public class ahi {
    private final agg a;
    private final AutoPlayBadgeView b;

    public ahi(agg agg, Tweet tweet) {
        this.a = agg;
        ViewStub viewStub = (ViewStub) agg.e().findViewById(2131952639);
        viewStub.setLayoutResource(2130968638);
        this.b = (AutoPlayBadgeView) viewStub.inflate();
        this.b.setVisibility(0);
        this.b.setDisableSnapreelBadge(true);
        this.b.setTweet(tweet);
    }

    public void a() {
        this.b.a();
    }

    public void b() {
        this.b.b();
    }

    public void a(bd bdVar) {
        this.b.a(bdVar);
    }

    public void c() {
        this.b.c();
    }

    public agg d() {
        return this.a;
    }
}
