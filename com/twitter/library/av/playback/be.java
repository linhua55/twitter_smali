package com.twitter.library.av.playback;

import android.support.v7.recyclerview.BuildConfig;
import bpx;
import bpy;
import bpz;
import bqc;
import bqe;
import bqi;
import cdy;
import com.twitter.android.mx;
import com.twitter.config.d;
import com.twitter.library.media.util.ac;
import com.twitter.library.media.util.q;
import com.twitter.library.util.aq;
import com.twitter.media.request.b;
import com.twitter.model.av.Partner;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.card.property.Vector2F;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.am;
import com.twitter.model.core.cr;
import com.twitter.util.j;
import com.twitter.util.m;
import com.twitter.util.math.Size;
import defpackage.bbn;
import defpackage.bqd;
import defpackage.cgl;
import defpackage.cpb;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class be {
    public static int a(Tweet tweet) {
        if (c(tweet)) {
            return 1;
        }
        if (tweet.L()) {
            return 2;
        }
        if (tweet.N()) {
            return 0;
        }
        if (tweet.O()) {
            return 3;
        }
        if (tweet.P()) {
            return 5;
        }
        if (x(tweet)) {
            return 4;
        }
        if (tweet.Q()) {
            return 6;
        }
        return -1;
    }

    public static boolean b(Tweet tweet) {
        int a = a(tweet);
        return (a == -1 || a == 5) ? false : true;
    }

    public static boolean c(Tweet tweet) {
        return cdy.c(tweet) && tweet.R();
    }

    public static boolean d(Tweet tweet) {
        return tweet != null && (tweet.M() || c(tweet));
    }

    private static boolean x(Tweet tweet) {
        cgl aa = tweet.aa();
        if (aa == null) {
            return false;
        }
        boolean equals = "appplayer".equals(aa.b());
        boolean equals2 = "promo_video_convo".equals(aa.b());
        if ((equals || equals2) && h(tweet) != null) {
            return true;
        }
        return false;
    }

    public static boolean e(Tweet tweet) {
        return tweet.L() || tweet.O();
    }

    public static bpx f(Tweet tweet) {
        if (tweet == null) {
            return null;
        }
        switch (a(tweet)) {
            case mx.View_android_theme /*0*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return new bqe(cpb.d(tweet.Y()));
            case WireMessage.WIRE_CHAT /*1*/:
                return new bqd();
            case WireMessage.WIRE_CONTROL /*2*/:
                return new bqi(g(tweet), s(tweet), tweet.b);
            case WireMessage.WIRE_AUTH /*3*/:
                MediaEntity e = cpb.e(tweet.Y());
                if (ac.a(tweet) || d.a("gif_caching_enabled")) {
                    return new bpz(e);
                }
                return new bqe(e);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return new bqc();
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return new bpy();
            default:
                return null;
        }
    }

    public static String g(Tweet tweet) {
        if (tweet == null) {
            return null;
        }
        switch (a(tweet)) {
            case mx.View_android_theme /*0*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return a(cpb.d(tweet.Y()));
            case WireMessage.WIRE_CHAT /*1*/:
                return j(tweet);
            case WireMessage.WIRE_CONTROL /*2*/:
                return i(tweet);
            case WireMessage.WIRE_AUTH /*3*/:
                return a(cpb.e(tweet.Y()));
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return h(tweet);
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return k(tweet);
            default:
                return null;
        }
    }

    static String h(Tweet tweet) {
        cgl aa = tweet.aa();
        return aa != null ? aa.n() : null;
    }

    static String i(Tweet tweet) {
        cgl aa = tweet.aa();
        return aa != null ? aa.o() : null;
    }

    public static String a(MediaEntity mediaEntity) {
        return (mediaEntity == null || mediaEntity.o == null || mediaEntity.o.d.isEmpty()) ? null : ((am) mediaEntity.o.d.get(0)).c;
    }

    static String j(Tweet tweet) {
        cgl aa = tweet.aa();
        return aa != null ? aa.k() : null;
    }

    static String k(Tweet tweet) {
        cgl aa = tweet.aa();
        return aa != null ? aa.a("source") : null;
    }

    public static Map<String, String> l(Tweet tweet) {
        Object obj = null;
        switch (a(tweet)) {
            case mx.UserView_actionButtonPaddingRight /*5*/:
                Map<String, String> hashMap = new HashMap();
                cgl aa = tweet.aa();
                String k = k(tweet);
                ImageSpec o = o(tweet);
                Partner n = n(tweet);
                Object a = aa != null ? aa.a("title") : null;
                if (aa != null) {
                    obj = aa.a("artist_name");
                }
                if (k != null) {
                    hashMap.put("playlist_url", k);
                }
                if (!(o == null || o.c == null)) {
                    hashMap.put("image_url", o.c);
                }
                if (a != null) {
                    hashMap.put("card_title", a);
                }
                if (obj != null) {
                    hashMap.put("artist_name", obj);
                }
                if (n == Partner.a) {
                    return hashMap;
                }
                hashMap.put("integration_partner", n.b());
                return hashMap;
            default:
                return Collections.emptyMap();
        }
    }

    public static long m(Tweet tweet) {
        switch (a(tweet)) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return u(tweet);
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
                cgl aa = tweet.aa();
                TwitterUser h = aa != null ? aa.h() : null;
                if (h != null) {
                    return h.c;
                }
                return -1;
            default:
                return -1;
        }
    }

    public static Partner n(Tweet tweet) {
        switch (a(tweet)) {
            case mx.UserView_actionButtonPaddingRight /*5*/:
                String a = tweet.aa().a("partner");
                return a != null ? new Partner(a) : Partner.a;
            default:
                return Partner.a;
        }
    }

    public static ImageSpec o(Tweet tweet) {
        int a = a(tweet);
        switch (a) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                MediaEntity d;
                Iterable Y = tweet.Y();
                if (a == 0 || a == 7) {
                    d = cpb.d(Y);
                } else {
                    d = cpb.e(Y);
                }
                if (d == null) {
                    return null;
                }
                ImageSpec imageSpec = new ImageSpec();
                imageSpec.c = d.l;
                imageSpec.d = new Vector2F((float) d.n.a(), (float) d.n.b());
                return imageSpec;
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
                cgl aa = tweet.aa();
                if (aa != null) {
                    return aa.r();
                }
                return null;
            default:
                return null;
        }
    }

    public static Size a(Tweet tweet, int i) {
        j.b(i > 0);
        ImageSpec o = o(tweet);
        Size b = (o == null || o.d == null) ? Size.b : o.d.b();
        return !b.c() ? b : Size.a(p(tweet) * ((float) i), (float) i);
    }

    public static float p(Tweet tweet) {
        switch (a(tweet)) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                MediaEntity c = cpb.c(tweet.Y());
                if (c == null || c.n.c()) {
                    return 1.7777778f;
                }
                return c.n.e();
            case WireMessage.WIRE_CONTROL /*2*/:
                return 1.0f;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return 1.0f;
            default:
                return 1.7777778f;
        }
    }

    public static String q(Tweet tweet) {
        MediaEntity d = cpb.d(tweet.Y());
        cgl aa = tweet.aa();
        float c = c(d);
        if (c <= 0.0f && aa != null) {
            String a = aa.a("content_duration_seconds");
            if (a != null) {
                try {
                    c = Float.valueOf(a).floatValue();
                } catch (Throwable e) {
                    bbn.a(e);
                }
            } else {
                c = -1.0f;
            }
        }
        return a(c);
    }

    public static String b(MediaEntity mediaEntity) {
        return a(c(mediaEntity));
    }

    private static String a(float f) {
        return f > 0.0f ? m.a((long) (1000.0f * f)) : null;
    }

    private static float c(MediaEntity mediaEntity) {
        if (mediaEntity == null || !cpb.c(mediaEntity)) {
            return 0.0f;
        }
        return mediaEntity.o.c;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String r(com.twitter.model.core.Tweet r2) {
        /*
        r0 = a(r2);
        switch(r0) {
            case 0: goto L_0x0018;
            case 1: goto L_0x0029;
            case 2: goto L_0x0035;
            case 3: goto L_0x000b;
            case 4: goto L_0x0007;
            case 5: goto L_0x0007;
            case 6: goto L_0x0007;
            case 7: goto L_0x0018;
            default: goto L_0x0007;
        };
    L_0x0007:
        r0 = "";
    L_0x000a:
        return r0;
    L_0x000b:
        r0 = r2.Y();
        r0 = defpackage.cpb.e(r0);
        if (r0 == 0) goto L_0x0018;
    L_0x0015:
        r0 = r0.C;
        goto L_0x000a;
    L_0x0018:
        r0 = r2.Y();
        r0 = defpackage.cpb.d(r0);
        if (r0 == 0) goto L_0x0029;
    L_0x0022:
        r0 = r0.c;
        r0 = java.lang.String.valueOf(r0);
        goto L_0x000a;
    L_0x0029:
        r0 = r2.aa();
        if (r0 == 0) goto L_0x0035;
    L_0x002f:
        r0 = r0.p();
        if (r0 != 0) goto L_0x000a;
    L_0x0035:
        r0 = s(r2);
        if (r0 == 0) goto L_0x0007;
    L_0x003b:
        goto L_0x000a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.av.playback.be.r(com.twitter.model.core.Tweet):java.lang.String");
    }

    public static String s(Tweet tweet) {
        for (cr crVar : tweet.Z()) {
            String str = crVar.C;
            if (aq.d(str)) {
                return str;
            }
        }
        return null;
    }

    public static String t(Tweet tweet) {
        switch (a(tweet)) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                MediaEntity c = cpb.c(tweet.Y());
                if (c != null) {
                    return c.C;
                }
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                return r(tweet);
            default:
                return BuildConfig.VERSION_NAME;
        }
        cgl aa = tweet.aa();
        String str = null;
        if (aa != null) {
            str = aa.k();
        }
        if (str == null) {
            return BuildConfig.VERSION_NAME;
        }
        return str;
    }

    public static long u(Tweet tweet) {
        switch (a(tweet)) {
            case mx.View_android_theme /*0*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return a(tweet, cpb.d(tweet.Y()));
            case WireMessage.WIRE_CHAT /*1*/:
                cgl aa = tweet.aa();
                if (aa != null) {
                    TwitterUser h = aa.h();
                    if (h != null) {
                        return h.bf_();
                    }
                }
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                return a(tweet, cpb.e(tweet.Y()));
            default:
                return -1;
        }
        return tweet.s;
    }

    public static long a(Tweet tweet, MediaEntity mediaEntity) {
        if (mediaEntity == null || mediaEntity.j <= 0) {
            return tweet.s;
        }
        return mediaEntity.j;
    }

    public static int v(Tweet tweet) {
        switch (a(tweet)) {
            case mx.View_android_theme /*0*/:
                return 1;
            case WireMessage.WIRE_CHAT /*1*/:
                return 2;
            case WireMessage.WIRE_CONTROL /*2*/:
                return 4;
            case WireMessage.WIRE_AUTH /*3*/:
                return 3;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return 5;
            default:
                return -1;
        }
    }

    public static b w(Tweet tweet) {
        if (tweet.M()) {
            MediaEntity c = cpb.c(tweet.Y());
            if (c != null) {
                return q.a(c);
            }
        } else if (tweet.L() || c(tweet) || tweet.Q() || tweet.P()) {
            cgl aa = tweet.aa();
            if (aa != null) {
                return q.a(aa);
            }
        } else if (x(tweet)) {
            return q.a(tweet.aa());
        }
        return null;
    }
}
