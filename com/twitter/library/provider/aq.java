package com.twitter.library.provider;

import cey;
import cgl;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.config.d;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.as;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.model.core.cr;
import com.twitter.model.core.i;
import com.twitter.model.core.z;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.ObjectUtils;
import cpb;
import defpackage.bvd;
import java.util.Iterator;

/* compiled from: Twttr */
public class aq {
    static final /* synthetic */ boolean a;
    private final String b;
    private final boolean c;
    private final bg d;
    private final cgl e;
    private final boolean f;
    private final boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;

    static {
        a = !aq.class.desiredAssertionStatus();
    }

    public static aq a(Tweet tweet) {
        return new aq(tweet.f(), false, tweet.w, tweet.aa(), tweet.U(), false);
    }

    public static aq b(Tweet tweet) {
        return new aq(tweet.g(), true, tweet.w, tweet.aa(), tweet.U(), false);
    }

    public static aq a(as asVar) {
        return new aq(asVar.g, true, asVar.h, asVar.k, false, true).e(true);
    }

    private aq(String str, boolean z, bg bgVar, cgl cgl, boolean z2, boolean z3) {
        this.m = true;
        this.b = str;
        this.c = z;
        this.d = bgVar;
        this.e = cgl;
        this.f = z2;
        this.g = z3;
    }

    public aq a(boolean z) {
        this.h = z;
        return this;
    }

    public aq b(boolean z) {
        this.i = z;
        return this;
    }

    public aq c(boolean z) {
        this.k = z;
        return this;
    }

    public aq d(boolean z) {
        this.m = z;
        return this;
    }

    public aq e(boolean z) {
        this.l = z;
        return this;
    }

    private int b() {
        Iterator it = this.d.c.iterator();
        int i = 0;
        while (it.hasNext()) {
            int i2;
            if (cey.e.matcher(((cr) it.next()).C).find()) {
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
        return i;
    }

    public i a() {
        int i;
        int i2;
        bg bgVar;
        String str;
        int i3 = 1;
        z zVar = this.d.d;
        MediaEntity a = cpb.a(zVar);
        String str2 = this.b;
        int i4 = (!this.h || (a == null && (this.e == null || !(this.e.v() || (this.e.C() && bvd.a()))))) ? 0 : 1;
        if ((cpb.f(zVar) || (this.e != null && this.e.a())) && d.a("strip_amplify_urls_from_tweet_text_enabled")) {
            i = 1;
        } else {
            i = 0;
        }
        if (this.k && this.f) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (i4 == 0 && i == 0 && !this.i && !this.l && i2 == 0) {
            i4 = 0;
        } else {
            i4 = 1;
        }
        if (this.d.a()) {
            cr crVar;
            if (i4 != 0) {
                crVar = (cr) CollectionUtils.c(this.d.b());
                if (a || crVar != null) {
                    String substring;
                    int i5;
                    if (str2.endsWith(Character.toString('\u200e'))) {
                        substring = str2.substring(0, str2.length() - 1);
                    } else {
                        substring = str2;
                    }
                    int i6 = (this.e == null || (!(crVar.B.equals(this.e.c()) || crVar.C.equals(this.e.c())) || (this.g && !a(crVar.C)))) ? 0 : 1;
                    if (a == null || !crVar.B.equals(a.B)) {
                        i5 = 0;
                    } else {
                        i5 = 1;
                    }
                    if (i2 != 0 && b() == 1 && cey.e.matcher(crVar.C).find()) {
                        i2 = 1;
                    } else {
                        i2 = 0;
                    }
                    boolean find = cey.f.matcher(crVar.C).find();
                    if (i5 == 0 && i6 == 0 && r6 == 0 && !find) {
                        i3 = 0;
                    }
                    if (i3 != 0) {
                        if (substring.endsWith(this.c ? crVar.D : crVar.B)) {
                            str2 = substring.substring(0, this.c ? crVar.E : crVar.g);
                        }
                    }
                    cr a2 = i != 0 ? a(this.e, this.d.c) : a(this.d.c);
                    if (!(a2 == null || this.e == null)) {
                        String str3 = this.c ? a2.D : a2.B;
                        str2 = str2.replaceAll(str3 + " | " + str3 + "|" + str3, TtmlNode.ANONYMOUS_REGION_ID);
                        if (this.m) {
                            bg bgVar2 = (bg) new bi(this.d).b(a2).d().q();
                            bgVar2.a(this.c ? a2.E : a2.g, -(str3.length() + 1));
                            bgVar = bgVar2;
                            if (this.j) {
                                for (cr crVar2 : this.d.b()) {
                                    str = this.c ? crVar2.D : crVar2.B;
                                    str2 = str2.replaceAll(str + " | " + str + "|" + str, TtmlNode.ANONYMOUS_REGION_ID);
                                }
                            }
                        }
                    }
                } else {
                    throw new AssertionError();
                }
            }
            bgVar = null;
            if (this.j) {
                for (cr crVar22 : this.d.b()) {
                    if (this.c) {
                    }
                    str2 = str2.replaceAll(str + " | " + str + "|" + str, TtmlNode.ANONYMOUS_REGION_ID);
                }
            }
        } else {
            bgVar = null;
        }
        str = aj.d(str2);
        if (this.j && str.endsWith(":")) {
            str = str.substring(0, str.length() - 1);
        }
        if (!this.m) {
            return new i(str, null);
        }
        if (bgVar == null) {
            bgVar = this.d;
        }
        return new i(str, bgVar);
    }

    static cr a(cgl cgl, Iterable<cr> iterable) {
        if (cgl != null) {
            Object obj = (ObjectUtils.a(cgl.b(), "amplify") || ObjectUtils.a(cgl.b(), MimeTypes.BASE_TYPE_VIDEO)) ? 1 : null;
            if (obj != null) {
                for (cr crVar : iterable) {
                    if (crVar.B.equals(cgl.c())) {
                        return crVar;
                    }
                }
            }
        }
        return null;
    }

    private static cr a(Iterable<cr> iterable) {
        for (cr crVar : iterable) {
            if (crVar.D.contains("cards.twitter.com/cards/")) {
                return crVar;
            }
        }
        return null;
    }

    private static boolean a(String str) {
        return str.contains("cards.twitter.com/cards/");
    }
}
