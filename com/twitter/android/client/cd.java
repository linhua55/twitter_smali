package com.twitter.android.client;

import android.content.Context;
import android.content.Intent;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.b;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.n;
import com.twitter.util.h;
import defpackage.bbu;
import java.util.Collection;
import java.util.HashMap;

/* compiled from: Twttr */
public class cd {
    private static cd a;
    private final Context b;
    private final HashMap<Long, WidgetControl> c;
    private boolean d;

    public static synchronized cd a(Context context) {
        cd cdVar;
        synchronized (cd.class) {
            if (a == null) {
                a = new cd(context.getApplicationContext());
            }
            cdVar = a;
        }
        return cdVar;
    }

    private cd(Context context) {
        this.b = context;
        this.c = new HashMap();
    }

    public void a(Session session, boolean z) {
        h.a();
        long g = session.g();
        if (g > 0) {
            synchronized (this.c) {
                WidgetControl widgetControl = (WidgetControl) this.c.get(Long.valueOf(g));
                if (widgetControl == null) {
                    widgetControl = new WidgetControl(this.b, session.e(), g);
                    this.c.put(Long.valueOf(g), widgetControl);
                    widgetControl.c();
                    return;
                }
                widgetControl.b(z);
            }
        }
    }

    void a(Intent intent) {
        long longExtra = intent.getLongExtra("owner_id", 0);
        WidgetControl a = a(longExtra);
        if (a != null) {
            a.a(intent.getIntExtra("status_type", 0));
            bbu.a(new TwitterScribeLog(longExtra).b("widget::::click"));
        }
    }

    void b(Intent intent) {
        long longExtra = intent.getLongExtra("owner_id", 0);
        WidgetControl a = a(longExtra);
        if (a != null) {
            a.b(intent.getIntExtra("status_type", 0));
            bbu.a(new TwitterScribeLog(longExtra).b("widget::::click"));
        }
    }

    void a() {
        h.a();
        if (!this.d) {
            for (a c : d.a().c()) {
                TwitterUser c2 = b.c(c);
                if (c2 != null) {
                    synchronized (this.c) {
                        WidgetControl widgetControl = (WidgetControl) this.c.get(Long.valueOf(c2.c));
                        if (widgetControl == null) {
                            widgetControl = new WidgetControl(this.b, c2.k, c2.c);
                            this.c.put(Long.valueOf(c2.c), widgetControl);
                        }
                        widgetControl.c();
                    }
                }
            }
            this.d = true;
        }
    }

    Collection<WidgetControl> b() {
        Collection a;
        synchronized (this.c) {
            a = n.a(this.c.values());
        }
        return a;
    }

    WidgetControl a(long j) {
        WidgetControl widgetControl;
        synchronized (this.c) {
            widgetControl = (WidgetControl) this.c.get(Long.valueOf(j));
        }
        return widgetControl;
    }
}
