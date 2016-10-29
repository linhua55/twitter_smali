package com.twitter.android.highlights;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.view.View;
import com.twitter.android.ProfileActivity;
import com.twitter.app.common.base.u;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.view.m;
import com.twitter.library.view.o;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.al;
import defpackage.bcu;
import defpackage.bli;
import java.util.Map;

/* compiled from: Twttr */
public class e extends as {
    public final TwitterUser a;
    public final Tweet b;
    public final boolean c;
    public final boolean d;
    private CharSequence m;
    private CharSequence n;

    public e(String str, long j, bli bli, boolean z, String str2, String str3, TwitterUser twitterUser, Tweet tweet) {
        super(str, j, 9, bli, z, str2, str3);
        this.a = twitterUser;
        this.b = tweet;
        this.c = a(twitterUser);
        this.d = a(twitterUser, tweet);
    }

    public boolean a(TwitterUser twitterUser) {
        return aj.b(twitterUser.G);
    }

    public boolean a(TwitterUser twitterUser, Tweet tweet) {
        return aj.b(twitterUser.g) || tweet != null;
    }

    public CharSequence a(Context context, m mVar) {
        if (this.d && this.m == null) {
            Resources resources = context.getResources();
            if (aj.b(this.a.g)) {
                if (this.a.D == null || (this.a.D.c.c() && this.a.D.e.c())) {
                    this.m = this.a.g;
                } else {
                    this.m = o.a(this.a.g).a(this.a.D).a(mVar).a(resources.getColor(2131886264)).b(resources.getColor(bcu.link_selected)).a();
                }
            } else if (this.b != null) {
                this.m = o.a(this.b.f()).a(this.b.w).a(resources.getColor(2131886264)).a();
            }
        }
        return this.m;
    }

    public CharSequence b(Context context, m mVar) {
        if (this.n == null) {
            Resources resources = context.getResources();
            if (aj.b(this.a.g)) {
                this.n = a(this.a, resources, mVar);
            } else if (this.b != null) {
                if (al.c(resources, this.b.q) != null) {
                    this.n = resources.getString(2131364016, new Object[]{al.c(resources, this.b.q)});
                } else {
                    this.n = resources.getString(2131364017);
                }
            } else {
                this.n = a(this.a, resources, mVar);
            }
        }
        return this.n;
    }

    private static CharSequence a(TwitterUser twitterUser, Resources resources, m mVar) {
        CharSequence spannableStringBuilder = new SpannableStringBuilder();
        if (aj.b(twitterUser.q)) {
            spannableStringBuilder.append(twitterUser.q);
        }
        if (aj.b(twitterUser.h)) {
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append(resources.getString(2131364289));
            }
            spannableStringBuilder.append(o.a(twitterUser.h).a(twitterUser.E).a(mVar).b(true).a());
        }
        if (spannableStringBuilder.length() > 0) {
            return spannableStringBuilder;
        }
        if (al.c(resources, twitterUser.Q) == null) {
            return resources.getString(2131362840);
        }
        return resources.getString(2131362839, new Object[]{al.c(resources, twitterUser.Q)});
    }

    public int a() {
        return 5;
    }

    public at a(View view) {
        return new f(view);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new d();
    }

    public Intent a(Context context) {
        return new u().d(true).a(context, ProfileActivity.class).putExtra("user_id", this.a.bf_()).putExtra("screen_name", this.a.k);
    }

    public String b() {
        return "TYPE_FOLLOW";
    }
}
