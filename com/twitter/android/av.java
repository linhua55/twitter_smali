package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.v4.util.LruCache;
import android.util.Pair;
import cfa;
import com.twitter.android.client.z;
import com.twitter.app.common.util.c;
import com.twitter.app.common.util.f;
import com.twitter.app.common.util.h;
import com.twitter.config.AppConfig;
import com.twitter.config.a;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.network.an;
import com.twitter.library.network.narc.i;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.concurrent.j;
import com.twitter.util.concurrent.n;
import com.twitter.util.m;
import com.twitter.util.object.e;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.ui.r;
import csx;
import defpackage.bbl;
import defpackage.bbm;
import defpackage.bvs;
import defpackage.bvt;
import defpackage.bvy;
import defpackage.cfb;
import defpackage.cun;
import defpackage.cvi;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class av implements bbm, h {
    private static av a;
    private final Context b;
    private final Intent c;
    private final LruCache<Long, bbl> d;

    public static synchronized av a(Context context) {
        av avVar;
        synchronized (av.class) {
            if (a == null) {
                a = new av(context);
            }
            avVar = a;
        }
        return avVar;
    }

    private av(Context context) {
        this.b = context.getApplicationContext();
        String str = a.a() + ".bug";
        this.c = new Intent().setAction(str);
        this.d = new LruCache(10);
        if (h()) {
            context.registerReceiver(new az(null), new IntentFilter(str));
            f.a().a((h) this);
        }
    }

    public Intent a() {
        return this.c;
    }

    public void a(Activity activity) {
        z.a(this.b).b();
    }

    public void b(Activity activity) {
        z.a(this.b).a();
    }

    public void a(bbl bbl, Map<String, Object> map) {
        this.d.put(Long.valueOf(m.b()), bbl);
    }

    public void b(bbl bbl, Map<String, Object> map) {
        a(bbl, map);
    }

    public String b() {
        Context context = this.b;
        Activity b = c.a().b();
        return "Reporting bug in " + (b != null ? b.getClass().getSimpleName() : "Unknown") + " with v" + com.twitter.util.c.d(context) + " (" + context.getPackageName() + ")";
    }

    public String c() {
        StringBuilder stringBuilder = new StringBuilder();
        Session c = bg.a().c();
        if (c.d()) {
            TwitterUser twitterUser = (TwitterUser) e.a(c.f());
            stringBuilder.append("\nuserId: ").append(twitterUser.c);
            stringBuilder.append("\nusername: ").append(twitterUser.k);
            stringBuilder.append("\nprotected: ").append(twitterUser.m);
            stringBuilder.append("\nsuspended: ").append(twitterUser.l);
            stringBuilder.append("\ncrash url: ").append(this.b.getString(2131364302, new Object[]{twitterUser.k}));
        } else {
            stringBuilder.append("\nusername: <none -- logged out>");
        }
        return stringBuilder.toString();
    }

    public String d() {
        Context context = this.b;
        StringBuilder stringBuilder = new StringBuilder();
        Activity b = c.a().b();
        if (b instanceof bb) {
            CharSequence b2 = ((bb) b).b();
            if (aj.b(b2)) {
                stringBuilder.append("\n\n").append(b2);
            }
        }
        stringBuilder.append("\n\n");
        stringBuilder.append("package: ").append(context.getPackageName());
        stringBuilder.append("\nversion: ").append(com.twitter.util.c.d(context));
        boolean h = TelephonyUtil.i().h();
        stringBuilder.append("\nconnectivity: ").append(h);
        if (h) {
            stringBuilder.append("\nconnectivityType: ").append(TelephonyUtil.i().a());
        }
        stringBuilder.append(c());
        an a = an.a(context);
        stringBuilder.append("\n").append(a.e);
        if (a.e()) {
            List f = a.f();
            int min = Math.min(f.size(), 4);
            if (min > 0) {
                stringBuilder.append("\nRecent traces (only work if requests sent from Dodo):");
                for (Pair pair : f.subList(0, min)) {
                    String format = String.format("http://go/zipkin/%1$s", new Object[]{pair.first});
                    stringBuilder.append("\n");
                    stringBuilder.append(format).append(" (").append(((URI) pair.second).getPath()).append(")");
                }
            }
        }
        return stringBuilder.toString();
    }

    public String e() {
        Context context = this.b;
        StringBuilder stringBuilder = new StringBuilder();
        bvt a = bvs.a();
        stringBuilder.append("isLocationEnabled [geoTag, system, app]: [").append(a.b(bg.a().c())).append(", ").append(a.e()).append(", ").append(a.d()).append("]");
        StringBuilder append = stringBuilder.append("\nisGooglePlayServicesEnabled: ");
        boolean z = com.twitter.library.platform.c.a(context) && d.a("geo_data_provider_google_play_services_enabled");
        append.append(z);
        Location a2 = bvy.a(context).a();
        if (a2 != null) {
            stringBuilder.append("\nlocation [lat,lng]: [").append(a2.getLatitude()).append(", ").append(a2.getLongitude()).append("]");
            stringBuilder.append("\nlocationAccuracy: ").append(a2.getAccuracy());
            stringBuilder.append("\nlocationProvider: ").append(a2.getProvider());
        } else {
            stringBuilder.append("\nlocation: null");
        }
        return stringBuilder.toString();
    }

    public j<Intent> a(String str, String str2, String str3, boolean z) {
        Bitmap bitmap;
        File file = null;
        Activity b = c.a().b();
        if (!z || b == null) {
            bitmap = null;
        } else {
            bitmap = r.d(b.getWindow().getDecorView());
            file = (File) com.twitter.util.j.a((n) new aw(this, b));
        }
        return new com.twitter.util.concurrent.c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new ax(this, str, str2, str3, z, bitmap, file)).a();
    }

    private Intent a(String str, String str2, String str3, boolean z, Bitmap bitmap, File file) {
        com.twitter.util.j.c();
        Intent type = new Intent("android.intent.action.SEND_MULTIPLE").setType("text/xml");
        type.putExtra("android.intent.extra.EMAIL", new String[]{str});
        type.putExtra("android.intent.extra.SUBJECT", str2);
        type.putExtra("android.intent.extra.TEXT", str3);
        File c = cvi.c(this.b);
        if (z && c != null) {
            File file2;
            File file3;
            i();
            ArrayList arrayList = new ArrayList();
            if (bitmap != null) {
                try {
                    file2 = new File(c, "bug_report.jpg");
                    if (com.twitter.media.util.a.a(bitmap, file2, CompressFormat.JPEG, 70)) {
                        arrayList.add(Uri.fromFile(file2));
                    }
                    bitmap.recycle();
                } catch (Throwable th) {
                    bitmap.recycle();
                }
            }
            if (file != null) {
                file2 = new File(c, "activity_state.txt");
                if (cun.c(file, file2)) {
                    arrayList.add(Uri.fromFile(file2));
                }
                cun.d(file);
            }
            if (AppConfig.m().p()) {
                String a = i.a(this.b, true);
                if (a != null) {
                    arrayList.add(Uri.fromFile(new File(a)));
                }
            }
            File file4 = new File(c, "stack_traces.txt");
            StringBuilder stringBuilder = new StringBuilder();
            for (Entry entry : this.d.snapshot().entrySet()) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append("\n\n");
                }
                stringBuilder.append("Time: ").append(new Date(((Long) entry.getKey()).longValue())).append("\n");
                stringBuilder.append("----------------------------------------\n");
                bbl bbl = (bbl) entry.getValue();
                stringBuilder.append(cfb.a(bbl.c()));
                Map a2 = bbl.a();
                if (!a2.isEmpty()) {
                    stringBuilder.append("----------------------------------------\n");
                    for (Entry entry2 : a2.entrySet()) {
                        stringBuilder.append((String) entry2.getKey()).append(" : ").append(entry2.getValue()).append("\n");
                    }
                }
            }
            Iterable a3 = cfa.a(true);
            if (!a3.isEmpty()) {
                file3 = new File(c, "logcat.txt");
                cun.a(aj.a((CharSequence) "\n", a3), file3);
                arrayList.add(Uri.fromFile(file3));
            }
            file2 = csx.a(this.b);
            if (file2 != null) {
                file3 = new File(c, "thread_dump.txt");
                if (cun.c(file2, file3)) {
                    arrayList.add(Uri.fromFile(file3));
                }
                cun.d(file2);
            }
            CharSequence stringBuilder2 = stringBuilder.toString();
            if (aj.b(stringBuilder2) && cun.a((String) stringBuilder2, file4)) {
                arrayList.add(Uri.fromFile(file4));
            }
            if (!arrayList.isEmpty()) {
                type.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
            }
        }
        return type;
    }

    public j<Void> f() {
        return new com.twitter.util.concurrent.c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new ay(this)).a();
    }

    private synchronized void i() {
        com.twitter.util.j.c();
        File c = cvi.c(this.b);
        if (c != null) {
            cun.b(new File(c, "bug_reports"));
            cun.d(new File(c, "bug_report.jpg"));
            cun.d(new File(c, "stack_traces.txt"));
            cun.d(new File(c, "activity_state.txt"));
            cun.d(new File(c, "logcat.txt"));
            cun.d(new File(c, "thread_dump.txt"));
        }
    }

    public static boolean g() {
        AppConfig m = AppConfig.m();
        return m.p() || m.o();
    }

    public static boolean h() {
        AppConfig m = AppConfig.m();
        return m.p() || m.c();
    }
}
