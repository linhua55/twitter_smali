package com.twitter.android.client;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import com.twitter.database.model.j;
import com.twitter.database.schema.m;
import com.twitter.database.schema.n;
import com.twitter.library.provider.ar;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: Twttr */
public class ce {
    public final String a;
    public final int b;
    public final int c;
    public final int d;
    private int[] e;
    private int[] f;
    private int[] g;

    public ce(String str, int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.a = str;
    }

    public boolean a(Context context) {
        int[] b = b(context);
        return b != null && b.length > 0;
    }

    public synchronized int[] a() {
        return this.e;
    }

    public synchronized int[] b() {
        return this.f;
    }

    public synchronized int[] c() {
        return this.g;
    }

    public String d() {
        return this.b == 2131230724 ? "large" : "small";
    }

    public int[] b(Context context) {
        if (this.b == 2131230724) {
            return AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, WidgetLargeProvider.class));
        }
        return AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, WidgetSmallProvider.class));
    }

    public synchronized void a(Context context, int[] iArr) {
        int i = 0;
        synchronized (this) {
            if (iArr != null) {
                if (iArr.length != 0) {
                    String valueOf;
                    if (this.b == 2131230724) {
                        valueOf = String.valueOf(1);
                    } else {
                        valueOf = String.valueOf(0);
                    }
                    j a = ((m) ar.a(context).b().a(m.class)).f().a("widget_type=?", valueOf);
                    Collection arrayList = new ArrayList();
                    Collection arrayList2 = new ArrayList();
                    Collection arrayList3 = new ArrayList();
                    while (a.c()) {
                        Integer valueOf2 = Integer.valueOf(((n) a.a).b());
                        CharSequence c = ((n) a.a).c();
                        int d = ((n) a.a).d();
                        if (!aj.b(c)) {
                            try {
                                arrayList.add(valueOf2);
                            } catch (Throwable th) {
                                a.close();
                            }
                        } else if (!c.equals(this.a)) {
                            continue;
                        } else if (d == 0) {
                            arrayList2.add(valueOf2);
                        } else {
                            arrayList3.add(valueOf2);
                        }
                        i++;
                    }
                    a.close();
                    if (i == 0) {
                        this.e = iArr;
                        this.f = null;
                        this.g = null;
                    } else {
                        this.e = CollectionUtils.d(arrayList);
                        this.f = CollectionUtils.d(arrayList2);
                        this.g = CollectionUtils.d(arrayList3);
                    }
                }
            }
            this.e = null;
            this.f = null;
            this.g = null;
        }
    }
}
