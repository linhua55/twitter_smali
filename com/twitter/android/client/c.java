package com.twitter.android.client;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.SearchManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.widget.Toast;
import bdw;
import bmp;
import bmr;
import bms;
import com.twitter.android.av.v;
import com.twitter.android.card.g;
import com.twitter.android.loggedoutpush.f;
import com.twitter.android.mx;
import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.app.o;
import com.twitter.badge.LauncherIconBadgeUpdaterService;
import com.twitter.badge.b;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.ac;
import com.twitter.library.api.d;
import com.twitter.library.api.timeline.k;
import com.twitter.library.api.timeline.s;
import com.twitter.library.api.timeline.z;
import com.twitter.library.client.Session;
import com.twitter.library.client.aa;
import com.twitter.library.client.af;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.u;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.manager.l;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.platform.notifications.a;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.platform.notifications.w;
import com.twitter.library.provider.ck;
import com.twitter.library.scribe.LogCategory;
import com.twitter.library.scribe.ScribeService;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.platform.PlatformContext;
import com.twitter.util.ak;
import com.twitter.util.m;
import com.twitter.util.object.e;
import defpackage.ark;
import defpackage.aru;
import defpackage.asa;
import defpackage.asp;
import defpackage.bbk;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bdj;
import defpackage.bew;
import defpackage.bpo;
import defpackage.bvh;
import defpackage.bvj;
import defpackage.bvs;
import defpackage.cni;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sn;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;
import tx;

/* compiled from: Twttr */
public class c implements asp {
    private static c b;
    final Context a;
    private final List<aa> c;
    private final Map<Session, Long> d;
    private final Map<Long, Long> e;
    private final bg f;
    private az g;
    private boolean h;
    private boolean i;
    private BrowserLoadingStatus j;

    private c(Context context) {
        this.c = new ArrayList();
        this.d = new HashMap();
        this.e = new HashMap();
        this.h = false;
        this.i = false;
        this.a = context;
        ScribeService.a(this.a);
        this.f = bg.a();
        this.f.a(new g(this));
        this.f.a(new f(this.a));
        this.f.a(new b(this.a, this.f));
        this.f.a(new sn(this.a));
        LauncherIconBadgeUpdaterService.a(this.a);
        Session c = this.f.c();
        a(c);
        c(c.g());
        this.g = az.a(context);
        this.g.a(new h(this.a));
        if (c.d()) {
            cd.a(this.a).a(c, false);
            asa.a("fs:first_download_req", aru.b(), ark.m).k();
        }
    }

    public static synchronized c a(Context context) {
        c cVar;
        synchronized (c.class) {
            if (b == null) {
                b = new c(context.getApplicationContext());
                bvj.a(b);
            }
            cVar = b;
        }
        return cVar;
    }

    void a(Session session) {
        long g = session.g();
        o.c(new UserIdentifier(g));
        PlatformContext.f().e().a(g);
        b(session);
        tx.a(this.a).a();
        if (com.twitter.app.common.util.f.a().c() && session.d()) {
            bvh.a(g, 60000);
        }
        this.h = false;
        this.i = false;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public void b(boolean z) {
        this.i = z;
    }

    public boolean a() {
        return this.h;
    }

    public boolean b() {
        return this.i;
    }

    @TargetApi(17)
    private void c(long j) {
        int i;
        int i2;
        Context context = this.a;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (VERSION.SDK_INT >= 17) {
            Display display = ((DisplayManager) context.getSystemService("display")).getDisplay(0);
            if (display != null) {
                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                display.getRealMetrics(displayMetrics2);
                displayMetrics = displayMetrics2;
            }
        }
        if (displayMetrics.widthPixels > displayMetrics.heightPixels) {
            i = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
        } else {
            i = displayMetrics.heightPixels;
            i2 = displayMetrics.widthPixels;
        }
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b("app::::launch")).d("display_info:" + i + "x" + i2 + "," + displayMetrics.densityDpi)).i(bvs.a().d() ? "location_enabled" : "location_disabled")).b(context));
    }

    public void a(Context context, String str, TwitterScribeLog twitterScribeLog, TwitterScribeLog twitterScribeLog2, cni cni, long j, long j2, long j3) {
        if (com.twitter.util.c.a(context, str)) {
            if (twitterScribeLog != null) {
                twitterScribeLog.f(2);
                bbu.a((bbw) twitterScribeLog);
            }
            if (twitterScribeLog2 != null) {
                twitterScribeLog2.f(2);
                bbu.a(twitterScribeLog2.e());
            }
            if (cni != null) {
                a(PromotedEvent.CARD_INSTALLED_APP, cni);
            }
        } else if (m.b() < j + j2) {
            b(context, str, twitterScribeLog, twitterScribeLog2, cni, j, j2, j3);
        }
    }

    public void b(Context context, String str, TwitterScribeLog twitterScribeLog, TwitterScribeLog twitterScribeLog2, cni cni, long j, long j2, long j3) {
        ((AlarmManager) context.getSystemService(NotificationCompatApi21.CATEGORY_ALARM)).set(0, m.b() + j3, PendingIntent.getBroadcast(context, 0, new Intent(context, AppBroadcastReceiver.class).putExtra("app_id", str).putExtra("scribe_log", twitterScribeLog).putExtra("scribe_download_log", twitterScribeLog2).putExtra("promoted_content", com.twitter.util.serialization.m.a((Object) cni, cni.a)).putExtra("timestamp", j).putExtra("timeframe", j2).putExtra("polling_interval", j3).setAction(g.a).setData(Uri.withAppendedPath(g.b, str)), 134217728));
    }

    public void a(aa aaVar) {
        if (!this.c.contains(aaVar)) {
            this.c.add(aaVar);
        }
    }

    public void b(aa aaVar) {
        this.c.remove(aaVar);
    }

    public x c() {
        Session c = this.f.c();
        if (!c.d()) {
            return null;
        }
        TwitterUser f = c.f();
        if (f == null) {
            return null;
        }
        if (f.c <= 0 && f.k == null) {
            return null;
        }
        Long l = (Long) this.e.get(Long.valueOf(f.c));
        long b = m.b();
        if (l != null && b - l.longValue() <= 60000) {
            return null;
        }
        this.e.put(Long.valueOf(f.c), Long.valueOf(b));
        return new bpo(this.a, c, f.c, f.k);
    }

    public void a(long j, String str, boolean z) {
        bbw bbw = (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b(str)).h("app_download_client_event")).a("4", ak.a());
        if (z) {
            bbw.b(this.a);
        }
        d a = u.a.a();
        if (a != null) {
            bbw.a("6", a.a());
            bbw.a(a.b());
        }
        bbu.a(bbw);
    }

    @Deprecated
    public void a(PromotedEvent promotedEvent, cni cni, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.g.a(new bms(this.a, this.f.c(), promotedEvent).b(cni.c).a(cni.c()).a(str).c(str2).d(str3).e(str4).f(str5).g(str6).h(str7).i(str8));
    }

    @Deprecated
    public void a(PromotedEvent promotedEvent, cni cni) {
        a(promotedEvent, cni, null);
    }

    @Deprecated
    public void a(PromotedEvent promotedEvent, cni cni, String str) {
        a(promotedEvent, cni, null, null, null, null, null, null, null, str);
    }

    public void a(int i, long j, String str, PromotedEvent promotedEvent) {
        this.g.a(new bmr(this.a, this.f.c(), i, j).a(str).a(promotedEvent));
    }

    public void a(long j, String str, PromotedEvent promotedEvent) {
        this.g.a(new bmp(this.a, this.f.c(), j).a(str).a(promotedEvent));
    }

    public void a(Tweet tweet) {
        this.g.a(new k(this.a, new ab(this.f.c()), tweet));
    }

    public void a(long j, long j2) {
        this.g.a(new z(this.a, this.f.c(), j, j2));
    }

    public void d() {
        Session c = this.f.c();
        Long l = (Long) this.d.get(c);
        long b = m.b();
        if (l == null || b - l.longValue() > 60000) {
            this.d.put(c, Long.valueOf(b));
            this.g.a(new bdw(this.a, c, bdj.a(this.a).m()));
        }
    }

    public Intent b(Context context) {
        if (com.twitter.util.x.a(context)) {
            return new Intent("android.intent.action.VIEW", Uri.parse(com.twitter.util.x.a(context, context.getPackageName()))).addFlags(1073741824);
        }
        Toast.makeText(context, 2131363347, 1).show();
        return null;
    }

    public void a(int i) {
        Session c = this.f.c();
        this.g.a(new ac(this.a, c).h(3).b("user_id", c.g()).b("prompt_id", i));
    }

    public void b(int i) {
        Session c = this.f.c();
        this.g.a(new ac(this.a, c).h(1).b("user_id", c.g()).b("prompt_id", i));
    }

    public void c(int i) {
        Session c = this.f.c();
        this.g.a(new ac(this.a, c).h(2).b("user_id", c.g()).b("prompt_id", i));
    }

    public long e() {
        return PreferenceManager.getDefaultSharedPreferences(this.a).getLong("fft", 0);
    }

    public void b(long j) {
        PreferenceManager.getDefaultSharedPreferences(this.a).edit().putLong("fft", j).apply();
    }

    public void f() {
        PreferenceManager.getDefaultSharedPreferences(this.a).edit().putLong("ffft", m.b()).apply();
    }

    void a(Intent intent) {
        a aVar = (a) com.twitter.util.serialization.m.a(intent.getByteArrayExtra("data"), a.a);
        if (aVar != null) {
            a(aVar, intent);
        }
    }

    private void a(Session session, ad adVar) {
        int i = adVar.d;
        com.twitter.library.service.aa aaVar = new com.twitter.library.service.aa();
        com.twitter.internal.android.service.ab abVar = new com.twitter.internal.android.service.ab();
        aaVar.a(true);
        abVar.a(aaVar);
        this.g.a(new s(this.a, session, session.f(), 1).d(i).e(i).f(v.a()), abVar);
    }

    private void a(a aVar, Intent intent) {
        Session b = this.f.b(aVar.b);
        if (b != null) {
            a(b, aVar, intent);
        }
    }

    void a(Session session, a aVar, Intent intent) {
        boolean booleanExtra = intent.getBooleanExtra("from_push", false);
        String str = aVar.b;
        if (session.f() != null) {
            List list = this.c;
            cd a = cd.a(this.a);
            switch (aVar.h.b) {
                case WireMessage.WIRE_AUTH /*3*/:
                    a.a(session, false);
                    for (int size = list.size() - 1; size >= 0; size--) {
                        ((aa) list.get(size)).a(session, null, 200, null, 0, 0, 0, aVar.h.d, booleanExtra);
                    }
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    a.a(session, false);
                    a(session, aVar.h);
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    int size2 = list.size() - 1;
                    while (size2 >= 0 && !((aa) list.get(size2)).a(aVar.b)) {
                        size2--;
                    }
                    break;
            }
            com.twitter.app.common.account.a b = com.twitter.library.util.b.b(str);
            if (b != null) {
                w a2 = w.a(this.a, str);
                boolean c = PushRegistration.c(this.a);
                Object obj = (!(c && a2.a()) && (c || ContentResolver.getIsSyncable(b.a(), ck.c) <= 0 || !ContentResolver.getSyncAutomatically(b.a(), ck.c))) ? null : 1;
                if (obj != null) {
                    if (intent.getBooleanExtra("show_notif", true) && com.twitter.app.common.account.d.a().b() > 0) {
                        z.a(this.a).a(aVar);
                    }
                }
                if (this.f.d(session)) {
                    LauncherIconBadgeUpdaterService.a(this.a);
                }
            }
        }
    }

    boolean a(Session session, boolean z) {
        Context context = this.a;
        String e = session.e();
        long g = session.g();
        WidgetControl a = cd.a(this.a).a(g);
        if (a != null) {
            a.a(z);
        }
        if (z) {
            this.g.a();
            l.a(context).g();
            a(this.f.c());
        }
        new com.twitter.library.client.l(this.a, e).a().a().apply();
        a(e, g, 300000);
        TwitterDataSyncService.a(context);
        PlatformContext.f().e().a(0);
        o.b(new UserIdentifier(g));
        return z;
    }

    void a(String str, long j, long j2) {
        Context context = this.a;
        new Handler(context.getMainLooper()).postDelayed(new d(this, str, context, j), j2);
    }

    public void a(long j) {
        af.a(this.a).a(j);
        LogCategory.b();
        TwitterScribeLog.j();
    }

    public void c(Context context) {
        SearchManager searchManager = (SearchManager) context.getSystemService("search");
        searchManager.setOnCancelListener(new e(this));
        searchManager.setOnDismissListener(new f(this));
    }

    public void a(String[] strArr, int[] iArr) {
        if (strArr != null && strArr.length > 0 && iArr != null && iArr.length > 0) {
            Collection arrayList = new ArrayList(strArr.length * iArr.length);
            for (String str : strArr) {
                for (int a : iArr) {
                    arrayList.add(UserImageRequest.a(str, a).a().u());
                }
            }
            l.a(this.a).c().a(arrayList);
        }
    }

    public void a(String str, int i) {
        a(str, i, true);
    }

    public void a(String str, int i, boolean z) {
        AsyncOperation asyncOperation = (bew) new bew(this.a, this.f.a(str)).d(2);
        asyncOperation.b = i;
        asyncOperation.c = z;
        this.g.a(asyncOperation);
    }

    public BrowserLoadingStatus g() {
        return this.j;
    }

    public void a(BrowserLoadingStatus browserLoadingStatus) {
        this.j = browserLoadingStatus;
    }

    private static void b(Session session) {
        TwitterUser f = session.f();
        bbk a = bbn.a();
        String str = "verified_user";
        boolean z = f != null && f.n;
        a.a(str, Boolean.valueOf(z));
        a.a("user_name", e.b(session.e()));
        a.a("feature_switches", bvj.g());
    }
}
