package defpackage;

import aml;
import amm;
import amn;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.database.Cursor;
import android.support.v4.content.Loader;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.RelativeLayout.LayoutParams;
import bbl;
import bbn;
import bbu;
import com.twitter.android.ProfileActivity;
import com.twitter.android.bu;
import com.twitter.library.client.bg;
import com.twitter.library.provider.dh;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ab;
import com.twitter.library.util.ao;
import com.twitter.library.widget.ProfileCardView;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.ak;
import com.twitter.util.h;
import cvi;

/* compiled from: Twttr */
/* renamed from: ano */
public class ano implements OnLoadCompleteListener<Cursor>, e<UserView>, f<ans> {
    private static final LruCache<Long, TwitterUser> a;
    private final Context b;
    private final Activity c;
    private ViewGroup d;
    private final ProfileCardView e;
    private bu f;
    private final Tweet g;
    private final ant h;
    private final TwitterScribeAssociation i;
    private final FriendshipCache j;
    private final ab k;
    private View l;
    private anu m;

    public /* synthetic */ void onLoadComplete(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    static {
        a = new LruCache(3);
    }

    public ano(Activity activity, Tweet tweet, ant ant, TwitterScribeAssociation twitterScribeAssociation) {
        this.j = new FriendshipCache();
        this.c = activity;
        this.b = activity.getApplicationContext();
        this.g = tweet;
        this.i = twitterScribeAssociation;
        this.h = ant;
        this.d = (ViewGroup) a((Context) activity, 2130969083);
        this.e = a(this.d, 2130969220);
        this.e.setBackgroundDrawable(null);
        this.k = new anp(this);
        this.l = this.d.findViewById(2131952842);
        this.k.a(this.l);
        a(this.e, this.h);
        this.j.a(this.g);
        TwitterUser twitterUser = (TwitterUser) a.get(Long.valueOf(tweet.b));
        if (twitterUser != null) {
            if (this.j.k(this.g.b)) {
                twitterUser.S = p.a(twitterUser.S, 1);
            } else {
                twitterUser.S = p.b(twitterUser.S, 1);
            }
            a(twitterUser);
            return;
        }
        d();
    }

    View a(Context context, int i) {
        return LayoutInflater.from(context).inflate(i, null, false);
    }

    ProfileCardView a(ViewGroup viewGroup, int i) {
        ViewStub viewStub = (ViewStub) viewGroup.findViewById(2131952841);
        viewStub.setLayoutResource(i);
        viewStub.inflate();
        return (ProfileCardView) viewGroup.findViewById(2131953112);
    }

    private void d() {
        this.f = a(this.b, this.g.b, bg.a().c().g());
        this.f.registerListener(1, this);
        this.f.startLoading();
    }

    private bu a(Context context, long j, long j2) {
        return new bu(context, dh.b.buildUpon().appendEncodedPath(String.valueOf(j)).appendQueryParameter("ownerId", String.valueOf(j2)).build(), cdj.a, null, null, null);
    }

    private void a(TwitterUser twitterUser) {
        this.e.setUser(twitterUser);
        if (!this.h.b) {
            this.e.a();
        }
        if (this.m != null) {
            this.m.a(this.j.k(twitterUser.c));
        }
    }

    private void a(ProfileCardView profileCardView, ant ant) {
        profileCardView.setUserImageSize(buf.a().b());
        profileCardView.setContentSize(ao.a);
        h.a(profileCardView.r != null, "ProfileCardView has null ActionButton!");
        profileCardView.a(2130837688, (e) this);
        if (!ant.a) {
            LayoutParams layoutParams = (LayoutParams) profileCardView.r.getLayoutParams();
            layoutParams.topMargin = ak.a(12.0f);
            profileCardView.r.setLayoutParams(layoutParams);
        }
        if (!ant.a) {
            profileCardView.c();
        }
        profileCardView.setOnTouchListener(this.k);
        if (ant.c) {
            this.e.r.setVisibility(8);
            ViewGroup viewGroup = (ViewGroup) a(this.c, 2130969156);
            ViewGroup.LayoutParams layoutParams2 = new LayoutParams(-1, -2);
            layoutParams2.addRule(3, 2131953113);
            this.m = new anu((TwitterButton) viewGroup.findViewById(2131952762), (TwitterButton) viewGroup.findViewById(2131953012));
            profileCardView.addView(viewGroup, layoutParams2);
            this.m.a.setOnTouchListener(new anq(this, this.m.a));
            this.m.b.setOnTouchListener(new anr(this, this.m.b));
        }
    }

    public void a(ans ans) {
    }

    public void a() {
        if (this.f != null) {
            this.f.unregisterListener(this);
            this.f.cancelLoad();
            this.f.stopLoading();
        }
    }

    public void b() {
    }

    public View e() {
        return this.d;
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

    private void a(View view, MotionEvent motionEvent) {
        int id = view.getId();
        if (this.h.d || id == 2131952762 || id == 2131953012) {
            g().a();
            boolean k = this.j.k(this.g.b);
            if (this.m != null) {
                this.m.a(k);
                return;
            } else {
                this.e.r.setChecked(k);
                return;
            }
        }
        a(this.c, this.g, this.i);
    }

    public void a(UserView userView, long j, int i, int i2) {
        if (2131951619 == i) {
            g().a();
        }
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (cursor == null || !cursor.moveToFirst()) {
            bbn.a(new bbl(new Exception("UserContent failed to load user")).a("tweet_id", Long.valueOf(this.g.H)).a("user_id", Long.valueOf(this.g.b)));
        } else {
            TwitterUser a = di.a(cursor);
            a.put(Long.valueOf(a.c), a);
            a(a);
        }
        cvi.a(cursor);
    }

    private amm g() {
        return aml.a(this.b, amn.a(this.b, this.i)).a(this.g).a(this.j).a("user_recommendation").a();
    }

    private void a(Activity activity, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation) {
        String a = TwitterScribeLog.a(this.i, Tweet.b(this.g), "user_recommendation", "profile_click");
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(h()).a(this.b, tweet, this.i, null).a(tweet.b, tweet.f, null).b(new String[]{a})).a(this.i));
        ProfileActivity.a(activity, tweet.b, tweet.p, tweet.f, twitterScribeAssociation, null);
    }

    private long h() {
        return bg.a().c().g();
    }
}
