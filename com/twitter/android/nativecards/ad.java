package com.twitter.android.nativecards;

import caw;
import cgl;
import cmb;
import com.twitter.model.card.property.Vector2F;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import defpackage.caf;

/* compiled from: Twttr */
public class ad {
    private String a;
    private String b;
    private String c;
    private Vector2F d;
    private boolean e;

    public ad() {
        this.d = Vector2F.b;
    }

    public void a(Tweet tweet) {
        cgl aa = tweet != null ? tweet.aa() : null;
        boolean z = tweet == null || aa == null || aj.a(aa.c());
        this.e = z;
        if (!this.e) {
            this.b = aa.c();
        }
    }

    public void a(cmb cmb) {
        if (this.a == null) {
            this.a = caw.a("api", cmb);
        }
        if (this.c == null) {
            this.c = caw.a(TtmlNode.ATTR_ID, cmb);
        }
        if (this.a == null || this.c == null) {
            this.e = true;
        }
        Integer a = caf.a("player_width", cmb);
        Integer a2 = caf.a("player_height", cmb);
        if (a == null || a2 == null) {
            this.d = Vector2F.b;
        } else {
            this.d = new Vector2F((float) a.intValue(), (float) a2.intValue());
        }
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.a;
    }

    public Vector2F c() {
        return this.d;
    }

    public String d() {
        return this.c;
    }

    public boolean e() {
        return this.e;
    }
}
