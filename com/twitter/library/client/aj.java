package com.twitter.library.client;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsIntent;
import android.support.customtabs.CustomTabsIntent.Builder;
import android.support.customtabs.CustomTabsServiceConnection;
import android.support.customtabs.CustomTabsSession;
import cbp;
import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.library.client.BrowserTimingHelper.Dwell;
import com.twitter.library.network.forecaster.b;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.library.util.j;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cr;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.z;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.cbs;
import defpackage.cfb;
import defpackage.cqf;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class aj implements z<ah> {
    static final /* synthetic */ boolean c;
    private static aj d;
    protected boolean a;
    protected am b;
    private final Context e;
    private final t f;
    private CustomTabsClient g;
    private CustomTabsServiceConnection h;
    private Tweet i;
    private boolean j;

    static {
        c = !aj.class.desiredAssertionStatus();
    }

    public static synchronized aj a(Context context) {
        aj ajVar;
        synchronized (aj.class) {
            if (d == null) {
                cqf.a(aj.class);
                d = new aj(context);
            }
            if (d.d()) {
                cfb.b("CustomTabs", "CustomTabsManager requires initialization. Creating connection...");
                d.e(context);
            } else if (!(d.g == null || d.g.warmup(0))) {
                cfb.b("CustomTabs", "Client warmup failed when retrieving the CustomTabsManager instance");
            }
            ajVar = d;
        }
        return ajVar;
    }

    public static boolean b(Context context) {
        return f() && com.twitter.util.aj.b(j.a().a(context));
    }

    public static boolean c(Context context) {
        return f() && PreferenceManager.getDefaultSharedPreferences(context).getBoolean("in_app_browser", true);
    }

    public static boolean d(Context context) {
        String b = c.b("chrome_custom_tabs_warmup_3876");
        return c(context) && (("moderate".equals(b) && TelephonyUtil.i().c()) || ("aggressive".equals(b) && !b.a().f()));
    }

    private static boolean f() {
        return !d.a("disable_chrome_custom_tabs", false);
    }

    protected aj(Context context) {
        this.e = context.getApplicationContext();
        this.f = PlatformContext.f().a();
    }

    public boolean a(Tweet tweet) {
        return !tweet.w.c.c() && a(((cr) tweet.w.c.a(0)).B);
    }

    public synchronized boolean a(String str) {
        boolean z = false;
        synchronized (this) {
            if (a()) {
                if (this.b == null || this.b.a(str, this.f.b())) {
                    CustomTabsSession d = d(str);
                    if (d != null) {
                        z = d.mayLaunchUrl(Uri.parse(str), null, null);
                        if (z) {
                            this.b = new am(d, str, this.f.b());
                            Map hashMap = new HashMap();
                            hashMap.put("url", str);
                            hashMap.put("is_wifi", Boolean.toString(TelephonyUtil.i().c()));
                            a(new ah("chrome::::warm_url", hashMap));
                            cfb.b("CustomTabs", "URL warmed up: " + str);
                        } else {
                            cfb.b("CustomTabs", "URL warm up failed despite the existence of a CustomTabs session");
                        }
                    }
                } else {
                    z = true;
                }
            }
        }
        return z;
    }

    public synchronized Builder b(String str) {
        CustomTabsSession d;
        if (!c(str)) {
            d = d(str);
        } else if (c || this.b != null) {
            d = this.b.a();
        } else {
            throw new AssertionError();
        }
        return new Builder(d);
    }

    public void a(Activity activity, String str, CustomTabsIntent customTabsIntent, Tweet tweet) {
        this.i = tweet;
        this.a = c(str);
        customTabsIntent.launchUrl(activity, Uri.parse(str));
        if (this.a) {
            c();
        }
    }

    public void a(ah ahVar) {
        Map map = ahVar.b;
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b(ahVar.a);
        if (this.i != null) {
            map.put("is_promoted", Boolean.toString(this.i.q()));
            bbw.a(this.e, this.i, null, null);
            if (this.i.q() && this.i.f != null && map.containsKey("dwell_time")) {
                long longValue = Long.valueOf((String) map.get("dwell_time")).longValue();
                cbs e = e();
                Dwell dwell = Dwell.a;
                while (dwell != null && dwell.d() <= longValue) {
                    e.a(cbp.a(dwell.a(), this.i.f).a());
                    dwell = dwell.b();
                }
            }
        }
        bbw.f(aq.a(map));
        bbu.a(bbw);
    }

    public boolean a() {
        return (this.h == null || this.g == null) ? false : true;
    }

    public boolean b() {
        return this.a;
    }

    protected synchronized boolean c(String str) {
        boolean z;
        z = this.b != null && this.b.a(str);
        return z;
    }

    protected synchronized void c() {
        this.b = null;
    }

    protected synchronized void e(Context context) {
        CharSequence a = j.a().a(context);
        if (!com.twitter.util.aj.b(a) || a()) {
            cfb.b("CustomTabs", "Connection abandoned. Already connected.");
        } else {
            boolean bindCustomTabsService;
            cfb.b("CustomTabs", "Chrome connection not established. Will create...");
            long b = this.f.b();
            g();
            this.h = new ak(this, b);
            try {
                bindCustomTabsService = CustomTabsClient.bindCustomTabsService(context, a, this.h);
                this.j = true;
            } catch (Throwable e) {
                cfb.a("CustomTabs", "Binding to Chrome service caused exception", e);
                bindCustomTabsService = false;
            }
            if (!bindCustomTabsService) {
                cfb.b("CustomTabs", "Service binding failed");
                g();
            }
        }
    }

    protected boolean d() {
        return this.h == null || (!this.j && this.g == null);
    }

    protected cbs e() {
        return new cbs(this.e, az.a(this.e), bg.a());
    }

    private CustomTabsSession d(String str) {
        CustomTabsSession customTabsSession = null;
        if (a()) {
            if (c || this.g != null) {
                customTabsSession = this.g.newSession(new al(str, this.e));
                if (customTabsSession == null) {
                    Map hashMap = new HashMap();
                    hashMap.put("url", str);
                    a(new ah("chrome::::error", hashMap));
                    cfb.b("CustomTabs", "Failed to create a session with the client...");
                    g();
                }
            } else {
                throw new AssertionError();
            }
        }
        return customTabsSession;
    }

    private void g() {
        this.j = false;
        this.g = null;
        this.h = null;
        this.b = null;
        this.i = null;
        this.a = false;
        cfb.b("CustomTabs", "CustomTabsManager cleared");
    }
}
