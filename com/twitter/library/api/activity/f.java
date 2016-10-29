package com.twitter.library.api.activity;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.android.mx;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.api.timeline.ak;
import com.twitter.library.client.Session;
import com.twitter.library.client.t;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.cl;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.util.collection.CollectionUtils;
import defpackage.cfz;
import defpackage.cga;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class f extends ak<as> {
    public static final String a;
    private final int b;
    private final int c;
    private final boolean h;
    private List<cfz> i;
    private int j;
    private boolean k;

    protected /* synthetic */ c f() {
        return s();
    }

    static {
        a = f.class.getName();
    }

    public f(Context context, Session session, int i) {
        this(context, new ab(session), i);
    }

    public f(Context context, ab abVar, int i) {
        super(context, a, abVar);
        this.k = true;
        this.b = i;
        this.c = d.a("notifications_tab_include_generic_activities_enabled", false) ? 9 : 7;
        this.h = d.a(abVar.c, "notifications_tab_android_use_reference_table", false);
    }

    public final f a(String str) {
        return (f) b("scribe_event", str);
    }

    public f a(boolean z) {
        this.k = z;
        return this;
    }

    public List<cfz> e() {
        return this.i;
    }

    public int g() {
        return this.j;
    }

    protected e h() {
        long G = G();
        long E = E();
        if (G == 0 && E == 0) {
            G = S().b(this.b);
            c(G);
        }
        e a = K().a(new Object[]{"activity", "about_me"});
        switch (this.b) {
            case WireMessage.WIRE_CONTROL /*2*/:
                a.a("filters", "filtered");
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                a.a("filters", "following");
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a.a("filters", "verified");
                break;
        }
        a.a("model_version", (long) this.c);
        a.a("send_error_codes", true);
        if (G > 0) {
            a.a("latest_results", true);
        }
        return a;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        int i;
        if (httpOperation.k()) {
            List a;
            Object obj;
            boolean z;
            boolean z2;
            List<cfz> a2;
            int size;
            String str;
            Object obj2;
            aa P;
            int i2;
            cga cga;
            int i3;
            Iterable iterable = (List) asVar.b();
            ab N = N();
            long j = N.c;
            boolean z3 = false;
            long G = G();
            long F = (long) F();
            long E = E();
            if (G > 0) {
                a = CollectionUtils.a(iterable, new g(this, G));
                boolean z4 = a.size() == iterable.size() && ((long) a.size()) == F;
                z3 = z4;
            } else {
                Iterable iterable2 = iterable;
            }
            di S = S();
            com.twitter.library.provider.e T = T();
            if (E > 0) {
                if (S.h(E, this.b) > 0) {
                    obj = 1;
                    z = E <= 0;
                    z2 = z && obj == null && a.isEmpty();
                    a2 = S.a(a, j, this.b, z, z2, z3, G, this.h, T);
                    T.a();
                    this.i = a2;
                    size = a2.size();
                    G = 0;
                    str = N.e;
                    obj2 = null;
                    if (this.k) {
                        P = ((e) new e(this.p, N()).a(this)).P();
                        if (P.b()) {
                            t.a(this.p, str, P.c.getLong("act_read_pos"));
                        }
                        G = t.a(this.p, str);
                        obj2 = S.a(this.b, G, null) <= 0 ? 1 : null;
                    }
                    if (size > 0 || obj != null || z3) {
                        this.p.getContentResolver().notifyChange(cl.a, null);
                    }
                    if (!z && size > 0 && this.k) {
                        i2 = 0;
                        for (cfz cfz : a2) {
                            cga = cfz.a;
                            if (cga.a > G) {
                                switch (cga.d) {
                                    case WireMessage.WIRE_CHAT /*1*/:
                                        i3 = i2 | 2;
                                        break;
                                    case WireMessage.WIRE_CONTROL /*2*/:
                                    case WireMessage.WIRE_AUTH /*3*/:
                                        i3 = i2 | 1;
                                        break;
                                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                                        i3 = i2 | 8;
                                        break;
                                    case mx.UserView_actionButtonPaddingRight /*5*/:
                                        i3 = i2 | 4;
                                        break;
                                    case mx.UserView_actionButtonPaddingBottom /*6*/:
                                        i3 = i2 | 16;
                                        break;
                                    case mx.TwitterButton_strokeWidth /*15*/:
                                        i3 = i2 | AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY;
                                        break;
                                    default:
                                        i3 = i2;
                                        break;
                                }
                                i2 = i3;
                            }
                        }
                        this.j = i2;
                        ar.a(this.p).a(str, i2, T);
                        T.a();
                        obj2 = 1;
                    }
                    if (obj2 != null) {
                        ar.a(this.p).a(str, "unread_interactions", S.d(this.b), T);
                        T.a();
                    }
                    aaVar.c.putInt("scribe_item_count", size);
                    i = size;
                }
            }
            obj = null;
            if (E <= 0) {
            }
            if (!z) {
            }
            a2 = S.a(a, j, this.b, z, z2, z3, G, this.h, T);
            T.a();
            this.i = a2;
            size = a2.size();
            G = 0;
            str = N.e;
            obj2 = null;
            if (this.k) {
                P = ((e) new e(this.p, N()).a(this)).P();
                if (P.b()) {
                    t.a(this.p, str, P.c.getLong("act_read_pos"));
                }
                G = t.a(this.p, str);
                if (S.a(this.b, G, null) <= 0) {
                }
            }
            this.p.getContentResolver().notifyChange(cl.a, null);
            i2 = 0;
            while (r7.hasNext()) {
                cga = cfz.a;
                if (cga.a > G) {
                    switch (cga.d) {
                        case WireMessage.WIRE_CHAT /*1*/:
                            i3 = i2 | 2;
                            break;
                        case WireMessage.WIRE_CONTROL /*2*/:
                        case WireMessage.WIRE_AUTH /*3*/:
                            i3 = i2 | 1;
                            break;
                        case ControlMessage.CONTROL_PRESENCE /*4*/:
                            i3 = i2 | 8;
                            break;
                        case mx.UserView_actionButtonPaddingRight /*5*/:
                            i3 = i2 | 4;
                            break;
                        case mx.UserView_actionButtonPaddingBottom /*6*/:
                            i3 = i2 | 16;
                            break;
                        case mx.TwitterButton_strokeWidth /*15*/:
                            i3 = i2 | AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY;
                            break;
                        default:
                            i3 = i2;
                            break;
                    }
                    i2 = i3;
                }
            }
            this.j = i2;
            ar.a(this.p).a(str, i2, T);
            T.a();
            obj2 = 1;
            if (obj2 != null) {
                ar.a(this.p).a(str, "unread_interactions", S.d(this.b), T);
                T.a();
            }
            aaVar.c.putInt("scribe_item_count", size);
            i = size;
        } else {
            this.o.putIntArray("custom_errors", cd.a((cd) asVar.b()));
            i = 0;
        }
        this.o.putInt("count", i);
    }

    protected as s() {
        return as.a(this.c == 9 ? 28 : 27);
    }
}
