package com.twitter.android.moments.viewmodels;

import bbn;
import caw;
import cmb;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.moments.c;
import com.twitter.model.moments.MomentPageType;
import com.twitter.model.moments.a;
import com.twitter.model.moments.g;
import com.twitter.model.moments.i;
import com.twitter.util.aj;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import defpackage.caf;
import defpackage.cag;

/* compiled from: Twttr */
public class v implements j {
    private final long a;
    private final long b;
    private final String c;
    private final MomentPageType d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final Size i;
    private final g j;

    public v(cmb cmb) {
        this.c = e.b(caw.a("title", cmb));
        this.d = b(cmb);
        this.e = caw.a("cover_format_media_url", cmb);
        this.f = caw.a("subcategory_string", cmb);
        this.g = caw.a("subcategory_favicon_url", cmb);
        this.h = caw.a("url", cmb);
        this.i = c(cmb);
        this.j = a(cmb, this.i);
        this.a = ((Long) e.b(cag.a("video_cover_tweet_id", cmb), Long.valueOf(0))).longValue();
        String a = caw.a(TtmlNode.ATTR_ID, cmb);
        this.b = a == null ? -1 : Long.parseLong(a);
    }

    private static MomentPageType b(cmb cmb) {
        Object a = caw.a("cover_format_type", cmb);
        if (aj.a(a)) {
            return MomentPageType.j;
        }
        return (MomentPageType) new c().getFromString(a);
    }

    private Size c(cmb cmb) {
        Integer a = caf.a("cover_format_media_size_h", cmb);
        Integer a2 = caf.a("cover_format_media_size_w", cmb);
        if (a != null && a2 != null) {
            return Size.a(a2.intValue(), a.intValue());
        }
        bbn.a(new NumberFormatException("Invalid value for media size"));
        return Size.b;
    }

    private g a(cmb cmb, Size size) {
        Integer a = caf.a("cover_format_media_size_crops_square_h", cmb);
        Integer a2 = caf.a("cover_format_media_size_crops_square_w", cmb);
        Integer a3 = caf.a("cover_format_media_size_crops_square_x", cmb);
        Integer a4 = caf.a("cover_format_media_size_crops_square_y", cmb);
        if (a == null || a2 == null || a3 == null || a4 == null) {
            return null;
        }
        return (g) new i().a(a3.intValue()).b(a4.intValue()).d(a.intValue()).c(a2.intValue()).a(size).q();
    }

    public String i() {
        return this.h;
    }

    public long a() {
        return this.a;
    }

    public long b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.e;
    }

    public String e() {
        return this.f;
    }

    public Size f() {
        return this.i;
    }

    public g g() {
        return this.j;
    }

    public boolean h() {
        return this.d == MomentPageType.e || this.d == MomentPageType.f || this.d == MomentPageType.d || this.d == MomentPageType.c || this.d == MomentPageType.g;
    }

    public boolean j() {
        return this.b != -1;
    }

    public static long a(cmb cmb) {
        Object a = caw.a("author", cmb);
        if (aj.b(a)) {
            return Long.parseLong(a);
        }
        return -1;
    }

    public static a a(TwitterUser twitterUser) {
        if (twitterUser.bf_() > 0 && aj.b(twitterUser.d) && aj.b(twitterUser.k)) {
            return new a(twitterUser.bf_(), twitterUser.n, twitterUser.d, twitterUser.k, twitterUser.e);
        }
        return null;
    }
}
