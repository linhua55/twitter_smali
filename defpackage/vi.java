package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import bzr;
import bzs;
import cag;
import cah;
import cai;
import caw;
import cax;
import cay;
import cbc;
import cbd;
import cmb;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.card.i;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.w;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
/* renamed from: vi */
public class vi extends cah implements bzs, cay, cbd {
    private final Context a;
    private final f b;
    private final WeakReference<Activity> c;
    private final DisplayMode d;
    private LinearLayout e;
    private TextView f;
    private long g;
    private long h;
    private Long i;
    private Tweet j;
    private TwitterUser k;
    private String l;

    public vi(Activity activity, DisplayMode displayMode, f fVar) {
        int i;
        this.c = new WeakReference(activity);
        this.a = activity.getApplicationContext();
        this.b = fVar;
        this.d = displayMode;
        if (displayMode == DisplayMode.a) {
            i = 2130968645;
        } else {
            i = 2130968646;
        }
        this.e = (LinearLayout) LayoutInflater.from(this.a).inflate(i, null);
        this.f = (TextView) this.e.findViewById(2131952009);
        if (w.a()) {
            this.e.setLayoutParams(new LayoutParams(-1, -2));
            this.e.setGravity(5);
            this.f.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130839717, 0);
            return;
        }
        this.f.setCompoundDrawablesWithIntrinsicBounds(2130839717, 0, 0, 0);
    }

    public vi(Activity activity, DisplayMode displayMode) {
        this(activity, displayMode, new h(activity));
    }

    public void a(cai cai) {
        this.g = cai.a;
        this.h = cai.b;
        this.i = cag.a("recipient", cai.c);
        cax.a().a(cai.a, this);
        bzr.a().a(this.h, this);
        if (this.i != null) {
            cbc.a().a(this.i.longValue(), this);
        }
    }

    public void a() {
        cax.a().b(this.g, this);
        bzr.a().b(this.h, this);
        if (this.i != null) {
            cbc.a().b(this.i.longValue(), this);
        }
    }

    public void a(long j, cmb cmb) {
        if (this.f != null) {
            String a = caw.a("cta", cmb);
            Activity d = d();
            if (!(a == null || d == null)) {
                Resources resources = d.getResources();
                int identifier = resources.getIdentifier(a, "string", d.getPackageName());
                if (identifier != 0) {
                    this.f.setText(resources.getString(identifier));
                } else {
                    this.f.setText(2131363072);
                }
            }
            this.l = caw.a("default_composer_text", cmb);
        }
    }

    public void a(long j, TwitterUser twitterUser) {
        this.k = twitterUser;
        a(this.j, twitterUser);
    }

    public void a(long j, Tweet tweet) {
        this.b.a(tweet);
        this.j = tweet;
        a(tweet, this.k);
    }

    private void a(Tweet tweet, TwitterUser twitterUser) {
        if (tweet != null) {
            long j = tweet.c ? tweet.s : tweet.b;
            if (this.i == null || this.i.longValue() != j) {
                this.e = (LinearLayout) LayoutInflater.from(this.a).inflate(2130968647, null);
                this.f = null;
            }
            if (this.f != null && twitterUser != null) {
                if (this.d == DisplayMode.a) {
                    this.b.d("message_me_card_show", c(), null);
                }
                this.f.setOnTouchListener(new vj(this, tweet, twitterUser));
            }
        }
    }

    public void b() {
    }

    public View e() {
        return this.e;
    }

    private Activity d() {
        return (Activity) this.c.get();
    }

    public String c() {
        return i.a(this.d);
    }
}
