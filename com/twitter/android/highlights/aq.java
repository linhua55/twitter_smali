package com.twitter.android.highlights;

import android.content.Context;
import android.content.res.Resources;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.widget.CompoundDrawableAnimButton;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.util.t;
import defpackage.bbu;
import defpackage.boh;
import defpackage.bok;

/* compiled from: Twttr */
public class aq {
    public final TwitterUser a;
    public final CompoundDrawableAnimButton b;
    private final Context c;
    private final ScribeItem d;
    private final boolean e;
    private final String f;
    private final String g;

    public aq(Context context, TwitterUser twitterUser, CompoundDrawableAnimButton compoundDrawableAnimButton, ScribeItem scribeItem, String str, String str2) {
        this(context, twitterUser, compoundDrawableAnimButton, scribeItem, str, str2, false);
    }

    public aq(Context context, TwitterUser twitterUser, CompoundDrawableAnimButton compoundDrawableAnimButton, ScribeItem scribeItem, String str, String str2, boolean z) {
        this.c = context.getApplicationContext();
        this.a = twitterUser;
        this.b = compoundDrawableAnimButton;
        this.e = z;
        boolean a = p.a(twitterUser.S);
        this.b.setChecked(a);
        a(a);
        this.d = scribeItem;
        this.f = str;
        this.g = str2;
    }

    private void a(boolean z) {
        int i = 2131886425;
        if (this.e) {
            int i2;
            Resources resources = this.c.getResources();
            this.b.setText(z ? 2131363905 : 2131362705);
            CompoundDrawableAnimButton compoundDrawableAnimButton = this.b;
            if (z) {
                i2 = 2131886429;
            } else {
                i2 = 2131886425;
            }
            compoundDrawableAnimButton.setTextColor(resources.getColor(i2));
            CompoundDrawableAnimButton compoundDrawableAnimButton2 = this.b;
            if (!z) {
                i = 2131886429;
            }
            compoundDrawableAnimButton2.setBackgroundColor(resources.getColor(i));
        } else if (this.a.P > 0) {
            this.b.setText(t.a(this.c.getResources(), (long) this.a.P, true));
        } else {
            this.b.setText(null);
        }
    }

    public void a(az azVar, Session session) {
        boolean z = !p.a(this.a.S);
        this.b.toggle();
        a(azVar, session, z);
        a(session, z ? "follow" : "unfollow");
        TwitterUser twitterUser = this.a;
        twitterUser.P = (z ? 1 : -1) + twitterUser.P;
        if (z) {
            this.a.S = p.a(this.a.S, 1);
        } else {
            this.a.S = p.b(this.a.S, 1);
        }
        a(z);
    }

    void a(az azVar, Session session, boolean z) {
        x boh;
        if (z) {
            boh = new boh(this.c, session, this.a.c, this.a.B);
        } else {
            boh = new bok(this.c, session, this.a.c, this.a.B);
        }
        azVar.a(boh, null);
    }

    void a(Session session, String str) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(session.g()).b(this.f, this.g, "story", "user", str)).a(this.d)).b(this.a.c, this.a.B, this.a.h()));
    }
}
