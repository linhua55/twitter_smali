package com.twitter.android.initialization;

import android.app.Activity;
import android.app.Service;
import bbn;
import bbq;
import bbs;
import com.twitter.app.common.app.a;
import com.twitter.app.common.util.c;
import com.twitter.app.common.util.f;
import com.twitter.app.common.util.p;
import com.twitter.library.media.manager.i;
import com.twitter.library.media.manager.l;
import com.twitter.util.al;
import com.twitter.util.collection.m;
import java.text.NumberFormat;
import java.util.List;
import java.util.Map.Entry;

/* compiled from: Twttr */
class j implements bbs {
    final /* synthetic */ StringBuilder a;
    final /* synthetic */ k b;
    final /* synthetic */ NumberFormat c;
    final /* synthetic */ OomeReporterInitializer d;

    j(OomeReporterInitializer oomeReporterInitializer, StringBuilder stringBuilder, k kVar, NumberFormat numberFormat) {
        this.d = oomeReporterInitializer;
        this.a = stringBuilder;
        this.b = kVar;
        this.c = numberFormat;
    }

    public void a(OutOfMemoryError outOfMemoryError, bbq bbq, boolean z) {
        try {
            bbq.a("OutOfMemoryErrorLog.foreground_time", al.e(f.a().d()));
            Activity b = c.a().b();
            if (b != null) {
                bbq.a("OutOfMemoryErrorLog.current_activity", b.getClass().getSimpleName());
            }
            bbq.a("OutOfMemoryErrorLog.activity_report", a());
            bbq.a("OutOfMemoryErrorLog.service_report", b());
            l a = l.a();
            if (a != null) {
                bbq.a("OutOfMemoryErrorLog.fetcher_report", a(a));
            }
        } catch (Throwable th) {
        }
    }

    private String a(l lVar) {
        this.a.setLength(0);
        try {
            for (Entry entry : lVar.h().entrySet()) {
                String str = (String) entry.getKey();
                m a = ((i) entry.getValue()).a();
                if (a != null) {
                    this.b.c();
                    a.a(this.b);
                    if (this.a.length() > 0) {
                        this.a.append("\n");
                    }
                    this.a.append(str.toUpperCase()).append(": ").append(this.c.format((long) this.b.a())).append(" bitmaps, ").append(this.c.format(this.b.b())).append(" bytes");
                }
            }
        } catch (OutOfMemoryError e) {
        } catch (Throwable e2) {
            bbn.a(e2);
        }
        return OomeReporterInitializer.b(this.a);
    }

    private String a() {
        this.a.setLength(0);
        try {
            p a = a.a().f().a();
            List<Activity> b = a.b();
            List<Activity> c = a.c();
            this.a.append("Created Activities: ").append(a.a()).append(", Active: ").append(b.size()).append(", Leaked: ").append(c.size()).append('\n');
            for (Activity activity : b) {
                this.a.append("* ").append(activity.getClass().getSimpleName()).append(" (alive for ").append(al.e(a.c(activity)));
                a(this.a, activity);
                this.a.append(")\n");
            }
            for (Activity activity2 : c) {
                this.a.append("* ").append(activity2.getClass().getSimpleName()).append(" (*leaked* for ").append(al.e(a.d(activity2)));
                a(this.a, activity2);
                this.a.append(")\n");
            }
        } catch (OutOfMemoryError e) {
        } catch (Throwable e2) {
            bbn.a(e2);
        }
        return OomeReporterInitializer.b(this.a);
    }

    private void a(StringBuilder stringBuilder, Activity activity) {
        this.b.c();
        try {
            com.twitter.media.util.a.a(activity, this.b);
            stringBuilder.append(", ").append(this.c.format((long) this.b.a())).append(", ").append(this.c.format(this.b.b()));
        } catch (OutOfMemoryError e) {
        } catch (Throwable e2) {
            bbn.a(e2);
        }
    }

    private String b() {
        this.a.setLength(0);
        try {
            p a = a.a().g().a();
            List<Service> b = a.b();
            List<Service> c = a.c();
            this.a.append("Created Services: ").append(a.a()).append(", Active: ").append(b.size()).append(", Leaked: ").append(c.size()).append('\n');
            for (Service service : b) {
                this.a.append("* ").append(service.getClass().getSimpleName()).append(" (alive for ").append(al.e(a.c(service))).append(")\n");
            }
            for (Service service2 : c) {
                this.a.append("* ").append(service2.getClass().getSimpleName()).append(" (*leaked* for ").append(al.e(a.d(service2))).append(")\n");
            }
        } catch (OutOfMemoryError e) {
        } catch (Throwable e2) {
            bbn.a(e2);
        }
        return OomeReporterInitializer.b(this.a);
    }
}
