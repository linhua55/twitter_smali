package com.twitter.library.client;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import bdu;
import bdx;
import beg;
import bem;
import ben;
import com.twitter.app.common.account.a;
import com.twitter.config.d;
import com.twitter.internal.android.service.c;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.el;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.util.ae;
import com.twitter.library.util.b;
import com.twitter.model.account.LoginResponse;
import com.twitter.model.account.OAuthToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.h;
import com.twitter.util.j;
import com.twitter.util.m;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.w;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bef;
import defpackage.bes;
import defpackage.bey;
import defpackage.cqf;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

/* compiled from: Twttr */
public class bg {
    private static bg a;
    private final Context b;
    private final ArrayList<bf> c;
    private final Object d;
    private final HashMap<String, Session> e;
    private Session f;
    private final Handler g;
    private az h;
    private final HashMap<String, bo> i;
    private final LinkedList<Long> j;
    private boolean k;

    static {
        a = null;
    }

    protected bg() {
        this.c = new ArrayList();
        this.d = new Object();
        this.e = new HashMap();
        this.i = new HashMap();
        this.j = new LinkedList();
        j.d();
        this.b = null;
        this.g = null;
        this.f = new Session();
    }

    public bg(Context context) {
        this.c = new ArrayList();
        this.d = new Object();
        this.e = new HashMap();
        this.i = new HashMap();
        this.j = new LinkedList();
        this.b = context;
        this.h = az.a(context);
        this.g = new Handler(Looper.getMainLooper());
        i();
    }

    public static synchronized bg a() {
        bg bgVar;
        synchronized (bg.class) {
            if (a == null) {
                throw new IllegalArgumentException("Instance has not been set");
            }
            bgVar = a;
        }
        return bgVar;
    }

    public static void a(bg bgVar) {
        cqf.a(bg.class);
        a = bgVar;
    }

    public String a(Session session, long j, String str, bk bkVar) {
        session.a(LoginStatus.LOGGING_IN);
        bdu bdu = new bdu(this.b, session, j, str);
        a(bdu.d, (bo) bkVar);
        return this.h.a(bdu.a(new bj(this)));
    }

    public String a(Session session, long j, String str, String str2, bk bkVar) {
        session.a(LoginStatus.LOGGING_IN);
        bdu bdu = new bdu(this.b, session, j, str);
        a(bdu.d, (bo) bkVar);
        return this.h.a(bdu.a(str2).a(new bj(this)));
    }

    public String a(Session session, String str, String str2, String str3, bm bmVar) {
        session.a(LoginStatus.LOGGING_IN);
        ben ben = new ben(this.b, session, str, str2, str3);
        a(ben.d, (bo) bmVar);
        return this.h.a(ben.a(new bl(this, null)));
    }

    public String a(String str, String str2, bm bmVar) {
        return a(a(str), str, str2, bmVar);
    }

    public String a(Session session, String str, String str2, bm bmVar) {
        session.a(LoginStatus.LOGGING_IN);
        beg beg = new beg(this.b, beg.class.getName(), session, str, str2, d.a("one_factor_authorization_android_request_enabled"));
        a(beg.d, (bo) bmVar);
        return this.h.a(beg.a(new bl(this, null)));
    }

    public Session a(String str) {
        Session session;
        Iterator it = b().iterator();
        while (it.hasNext()) {
            session = (Session) it.next();
            String e = session.e();
            if (e != null && e.equals(str)) {
                return session;
            }
        }
        session = c();
        if (session.d()) {
            return h();
        }
        return session;
    }

    public String a(Session session) {
        if (session.b() != LoginStatus.LOGGED_IN && session.b() != LoginStatus.LOGGING_IN) {
            return null;
        }
        session.a(LoginStatus.LOGGING_OUT);
        return this.h.a(new bem(this.b, session).a(new bn(this, 1)));
    }

    public String a(String str, String str2, String str3, String str4, String str5, String str6, bq bqVar, String str7, String str8) {
        Session h;
        if (b.a() > 0) {
            h = h();
        } else {
            h = c();
        }
        Locale locale = this.b.getResources().getConfiguration().locale;
        if (d.a("account_create_api_for_signup_android_enabled")) {
            return a(h, locale, str, str2, str3, str4, bqVar, str7, str8);
        }
        return a(h, locale, str, str2, str3, str4, str5, str6, bqVar, str7, str8);
    }

    private String a(Session session, Locale locale, String str, String str2, String str3, String str4, String str5, String str6, bq bqVar, String str7, String str8) {
        bes h = new bes(this.b, session, str2, str4).d(str).e(str3).g(str5).c(str6).f(str7).h(str8);
        if (aj.b((CharSequence) str7)) {
            String country = (locale == null || !w.d(locale)) ? Locale.getDefault().getCountry() : locale.getCountry();
            h.b(country);
        }
        if (locale != null && aj.b(locale.getLanguage())) {
            h.a(w.b(locale));
        }
        a(h.d, (bo) bqVar);
        return this.h.a(h.a((c) new bp(this, false)));
    }

    private String a(Session session, Locale locale, String str, String str2, String str3, String str4, bq bqVar, String str5, String str6) {
        bdx bdx = new bdx(this.b, session, str, str2, str3, str5, str4, str6);
        if (locale != null && aj.b(locale.getLanguage())) {
            bdx.a(w.b(locale));
        }
        a(bdx.d, (bo) bqVar);
        return this.h.a(bdx.a(new bp(this, true)));
    }

    public String a(Session session, x xVar) {
        return this.h.a(((x) new bey(this.b, session, new com.twitter.library.network.w(session.h())).a((c) new bn(this, 2))).a(xVar));
    }

    public Session a(long j) {
        return j == -1 ? c() : b(j);
    }

    public Session b(long j) {
        return a(null, null, j);
    }

    @Deprecated
    public Session b(String str) {
        return a(str, null, 0);
    }

    private Session a(String str, a aVar, long j) {
        Object obj;
        Session h;
        boolean b = aj.b((CharSequence) str);
        if (j > 0) {
            obj = 1;
        } else {
            obj = null;
        }
        synchronized (this.d) {
            if (b || obj != null) {
                for (Session session : this.e.values()) {
                    if ((obj != null && j == session.g()) || (b && str.equalsIgnoreCase(session.e()))) {
                        break;
                    }
                }
                if (aVar == null) {
                    if (b) {
                        aVar = b.b(str);
                    } else {
                        aVar = b.a(j);
                    }
                }
            }
            if (aVar == null) {
                h = h();
            } else {
                h = a(aVar);
            }
        }
        return h;
    }

    public boolean b(Session session) {
        boolean z = true;
        if (session != null) {
            synchronized (this.d) {
                if (this.e.containsKey(session.c())) {
                    z = false;
                }
            }
        }
        return z;
    }

    public Session c(String str) {
        Session session;
        synchronized (this.d) {
            session = (Session) this.e.get(str);
        }
        return session;
    }

    public ArrayList<Session> b() {
        ArrayList<Session> arrayList;
        synchronized (this.d) {
            arrayList = new ArrayList(this.e.values());
        }
        return arrayList;
    }

    private Session h() {
        Session session;
        synchronized (this.d) {
            for (Session session2 : this.e.values()) {
                if (session2.b() == LoginStatus.LOGGED_OUT && session2.g() == 0) {
                    break;
                }
            }
            session2 = new Session();
            this.e.put(session2.c(), session2);
        }
        return session2;
    }

    private Session a(a aVar) {
        Session h = h();
        if (b.c(aVar) != null) {
            String f = aVar.f();
            if (f != null) {
                h.a(aVar.d());
                h.a(true);
                a(h, aVar.d(), f, null);
            } else {
                a(h, aVar);
            }
        } else {
            bbn.a(new bbl().a("accountName", aVar.d()).a(new IllegalStateException("Count not read userdata from account.")));
        }
        return h;
    }

    private void a(Session session, a aVar) {
        OAuthToken b = b.b(aVar);
        if (b != null) {
            TwitterUser c = b.c(aVar);
            if (c != null) {
                Session session2 = session;
                a(session2, aVar.d(), b, c, b.a(aVar));
            }
        }
    }

    private boolean f(String str) {
        synchronized (this.d) {
            if (str.equals(this.f.c())) {
                el.a(this.b, null, 0);
                i();
            }
            if (((Session) this.e.get(str)) != null) {
                this.e.remove(str);
            }
        }
        return com.twitter.app.common.account.d.a().b() == 0;
    }

    private void a(Session session, String str) {
        if (!aj.b((CharSequence) str) || b.b(str) == null) {
            session.a(LoginStatus.LOGGED_OUT);
            return;
        }
        Session b = b(str);
        if (!session.equals(b)) {
            session.a(LoginStatus.LOGGED_OUT);
        }
        a(b);
    }

    private String a(Session session, LoginResponse loginResponse, TwitterUser twitterUser) {
        boolean z;
        Session session2 = session;
        a(session2, twitterUser.k, loginResponse.a, twitterUser, null);
        String b = b.b(twitterUser);
        session.e();
        OAuthToken h = session.h();
        if (aj.b(loginResponse.c)) {
            bef.b(this.b, loginResponse.c);
        }
        a a = b.a(b, h);
        if (session.i()) {
            session.a(false);
        } else if (a != null) {
            b.a(a, ck.c, true);
        }
        if (com.twitter.app.common.account.d.a().b() == 1) {
            z = true;
        } else {
            z = false;
        }
        b(session, z);
        return b;
    }

    private void a(Session session, String str, OAuthToken oAuthToken, TwitterUser twitterUser, UserSettings userSettings) {
        session.a(LoginStatus.LOGGED_IN);
        session.a(twitterUser);
        session.a(str);
        session.a(oAuthToken);
        if (userSettings != null) {
            session.a(userSettings);
        }
        session.a(new bh(this, session));
    }

    public void d(String str) {
        if (aj.b((CharSequence) str)) {
            c(b(str));
        }
    }

    public void c(Session session) {
        Session session2;
        synchronized (this.d) {
            if (this.f != null) {
                long g = this.f.g();
                if (this.j.contains(Long.valueOf(g))) {
                    this.j.remove(Long.valueOf(g));
                }
                this.j.add(Long.valueOf(g));
                if (this.j.size() > 2) {
                    this.j.poll();
                }
            }
            session2 = this.f;
            this.f = session;
            el.a(this.b, session.e(), session.g());
        }
        a(session2, session);
    }

    public Session c() {
        Session session;
        synchronized (this.d) {
            session = this.f;
        }
        return session;
    }

    public boolean d(Session session) {
        boolean equals;
        synchronized (this.d) {
            equals = this.f.c().equals(session.c());
        }
        return equals;
    }

    public List<Long> d() {
        return this.j;
    }

    public void a(bf bfVar) {
        if (bfVar != null && !this.c.contains(bfVar)) {
            this.c.add(bfVar);
        }
    }

    public void b(bf bfVar) {
        if (bfVar != null) {
            this.c.remove(bfVar);
        }
    }

    public void e(String str) {
        if (str != null) {
            this.i.remove(str);
        }
    }

    private void a(Session session, Session session2) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            b(session, session2);
        } else {
            this.g.post(new bi(this, session, session2));
        }
    }

    private void b(Session session, Session session2) {
        e(session2);
        if (this.k && !ObjectUtils.a((Object) session, (Object) session2)) {
            long b = m.b();
            if (session != null) {
                a(session, b, false);
            }
            a(session2, b, true);
        }
    }

    private void e(Session session) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            ((bf) this.c.get(size)).a(session);
        }
    }

    private void a(Session session, boolean z) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            ((bf) this.c.get(size)).c(session, z);
        }
    }

    private void b(Session session, boolean z) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            ((bf) this.c.get(size)).b(session, z);
        }
    }

    private void c(Session session, boolean z) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            ((bf) this.c.get(size)).a(session, z);
        }
    }

    private void f(Session session) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            ((bf) this.c.get(size)).b(session);
        }
    }

    private void a(Session session, long j) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            ((bf) this.c.get(size)).a(session, j);
        }
    }

    private void b(Session session, long j) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            ((bf) this.c.get(size)).b(session, j);
        }
    }

    public void a(String str, bo boVar) {
        if (str != null && boVar != null) {
            this.i.put(str, boVar);
        }
    }

    public Session a(x xVar) {
        if (xVar == null) {
            return null;
        }
        ab N = xVar.N();
        if (N != null) {
            return c(N.a);
        }
        return null;
    }

    public boolean e() {
        boolean z;
        synchronized (this.d) {
            z = !c().d();
        }
        return z;
    }

    public void f() {
        if (!this.k) {
            this.k = true;
            a(c(), m.b(), true);
        }
    }

    public void g() {
        if (this.k) {
            this.k = false;
            a(c(), m.b(), false);
        }
    }

    private void a(Session session, long j, boolean z) {
        h.a();
        long j2 = -1;
        l g = g(session);
        if (g != null) {
            long a = a(g);
            if (a >= 0) {
                j2 = j - a;
            }
            a(g, j);
        }
        if (z) {
            a(session, j2);
        } else {
            b(session, j2);
        }
    }

    private l g(Session session) {
        CharSequence e = session.e();
        if (aj.b(e)) {
            return new l(this.b, e);
        }
        return null;
    }

    private static long a(l lVar) {
        return lVar.getLong("session_active_state_transition_timestamp", -1);
    }

    private static void a(l lVar, long j) {
        lVar.a().a("session_active_state_transition_timestamp", j).apply();
    }

    private void i() {
        synchronized (this.d) {
            Session h;
            List c = com.twitter.app.common.account.d.a().c();
            if (c.isEmpty()) {
                h = h();
            } else {
                a b = b.b(el.a(this.b));
                if (b == null) {
                    b = (a) c.get(0);
                }
                h = a(b.d(), b, 0);
            }
            c(h);
        }
    }

    private void j() {
        ae.a(this.b).a();
    }
}
