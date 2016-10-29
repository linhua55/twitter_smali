package com.twitter.library.api.timeline;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.support.v7.recyclerview.BuildConfig;
import buf;
import com.twitter.library.client.bg;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.media.manager.l;
import com.twitter.library.media.util.q;
import com.twitter.media.request.ResourceRequestType;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.cm;
import com.twitter.model.timeline.av;
import com.twitter.platform.PlatformContext;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.h;
import com.twitter.util.math.Size;
import defpackage.asp;
import defpackage.bvj;
import defpackage.cap;
import defpackage.cgl;
import defpackage.cmc;
import defpackage.cpb;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TimelineHelper implements asp {
    protected static final long a;
    private static TimelineHelper f;
    protected boolean b;
    protected boolean c;
    protected int d;
    protected Size e;

    static {
        a = TimeUnit.MILLISECONDS.convert(1, TimeUnit.DAYS);
    }

    protected TimelineHelper() {
        bvj.a((asp) this);
        bg.a().a(new ai(this));
    }

    public static synchronized TimelineHelper a() {
        TimelineHelper timelineHelper;
        synchronized (TimelineHelper.class) {
            if (f == null) {
                f = new TimelineHelper();
            }
            timelineHelper = f;
        }
        return timelineHelper;
    }

    public static String a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if (!defaultSharedPreferences.getBoolean("inject_ptr_enabled", false)) {
            return null;
        }
        CharSequence string = defaultSharedPreferences.getString("inject_ptr_order", BuildConfig.VERSION_NAME);
        CharSequence string2 = defaultSharedPreferences.getString("inject_ptr_index", "0");
        if (aj.a(string) || aj.a(string2)) {
            return null;
        }
        int parseInt = Integer.parseInt(string2);
        String[] split = string.split(",");
        if (parseInt < 0 || parseInt >= split.length) {
            defaultSharedPreferences.edit().putString("inject_ptr_index", "0").apply();
            return null;
        }
        defaultSharedPreferences.edit().putString("inject_ptr_index", Integer.toString((parseInt + 1) % split.length)).apply();
        return split[parseInt].trim();
    }

    public void b() {
        h.a();
        if (!this.b || this.c) {
            c();
        }
    }

    public void a(long j) {
        this.c = true;
    }

    public int a(boolean z, long j, l lVar, List<? extends av> list, PrefetchOrder prefetchOrder, Context context) {
        if (!this.b) {
            return 0;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("prefetchSettings" + j, 0);
        Editor edit = sharedPreferences.edit();
        Object obj = null;
        int i = 0;
        int i2 = sharedPreferences.getInt("prefetchRequestsThisPeriod", 0);
        long j2 = sharedPreferences.getLong("prefetchPeriodResetTime", 0);
        long a = PlatformContext.f().a().a();
        if (a > j2) {
            edit.putLong("prefetchPeriodResetTime", a + a);
            i2 = 0;
            obj = 1;
        }
        List<av> a2 = a(list, prefetchOrder);
        Set hashSet = new HashSet();
        Object obj2 = obj;
        int i3 = i2;
        for (av a3 : a2) {
            List<cm> a4 = av.a(a3);
            if (!a4.isEmpty()) {
                for (cm cmVar : a4) {
                    cm cmVar2;
                    n d = n.d();
                    cm c = cmVar.c();
                    Object obj3 = c.F != null ? 1 : null;
                    if (obj3 != null) {
                        cmVar2 = c.F;
                    } else {
                        cmVar2 = c;
                    }
                    d.c(((b) ((b) ((b) UserImageRequest.a(c.C.e, this.d).e(false)).f(true)).a(ResourceRequestType.b)).a());
                    if (z && (!cmVar2.s || cmVar2.C.c == j)) {
                        cgl cgl = cmVar2.z;
                        if (cgl != null) {
                            n d2 = n.d();
                            if (cap.b().a(cgl) && obj3 == null) {
                                for (cmc cmc : cgl.s()) {
                                    d2.c(a.a(cmc.a));
                                }
                            } else if ((obj3 == null && cgl.O()) || (obj3 != null && cgl.P())) {
                                d2.c(q.a(cgl));
                            }
                            for (b e : (List) d2.q()) {
                                d.c(((b) ((b) ((b) e.e(false)).f(true)).a(ResourceRequestType.b)).a());
                            }
                        } else if (!cmVar2.e.d.c()) {
                            for (MediaEntity a5 : cpb.a(cmVar2.e.d, this.e)) {
                                d.c(((b) ((b) ((b) q.a(a5).e(false)).f(true)).a(ResourceRequestType.b)).a());
                            }
                        }
                    }
                    Iterator it = d.iterator();
                    while (it.hasNext()) {
                        a aVar = (a) it.next();
                        String u = aVar.u();
                        boolean equals = "user".equals(aVar.o());
                        if (!hashSet.contains(u) && lVar.c(aVar) == null) {
                            if ((i < 10 && i3 < 100) || equals) {
                                lVar.b(aVar);
                                hashSet.add(u);
                                if (!equals) {
                                    i++;
                                    i3++;
                                    obj2 = 1;
                                }
                            }
                        }
                    }
                }
            }
            obj2 = obj2;
            i = i;
            i3 = i3;
        }
        if (obj2 != null) {
            edit.putInt("prefetchRequestsThisPeriod", i3);
            edit.apply();
        }
        return hashSet.size();
    }

    protected static List<av> a(List<? extends av> list, PrefetchOrder prefetchOrder) {
        int i = 2;
        int i2 = 1;
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        if (list.size() == 1) {
            return n.a((List) list);
        }
        int size = list.size();
        n a = n.a(size);
        int i3;
        switch (aj.a[prefetchOrder.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (size != 2) {
                    while (i2 < size) {
                        a.c(list.get(i2));
                        i2 += 2;
                    }
                    while (i < size) {
                        a.c(list.get(i));
                        i += 2;
                    }
                    a.c(list.get(0));
                    break;
                }
                return Arrays.asList(new av[]{(av) list.get(1), (av) list.get(0)});
            case WireMessage.WIRE_CONTROL /*2*/:
                if (size != 2) {
                    for (i3 = size - 1; i3 > 0; i3 -= 2) {
                        a.c(list.get(i3 - 1));
                    }
                    for (i3 = size - 2; i3 > 0; i3 -= 2) {
                        a.c(list.get(i3 - 1));
                    }
                    a.c(list.get(size - 1));
                    break;
                }
                return Arrays.asList(new av[]{(av) list.get(0), (av) list.get(1)});
            default:
                if (size != 2) {
                    if (size != 3) {
                        int i4 = size % 2 == 0 ? 1 : 2;
                        int i5 = size - 2;
                        if (i4 == 2) {
                            a.c(list.get(1));
                            i3 = size - 2;
                        } else {
                            i3 = size;
                        }
                        for (i2 = i4; i2 < i3; i2 += 2) {
                            a.c(list.get(i2));
                            if (i5 >= 0) {
                                a.c(list.get(i5));
                                i5 -= 2;
                            }
                        }
                        if (i4 == 2) {
                            a.c(list.get(size - 1));
                            a.c(list.get(0));
                            break;
                        }
                    }
                    return Arrays.asList(new av[]{(av) list.get(1), (av) list.get(2), (av) list.get(0)});
                }
                return Arrays.asList(new av[]{(av) list.get(1), (av) list.get(0)});
                break;
        }
        return (List) a.q();
    }

    protected void c() {
        h.a();
        this.d = buf.a().b();
        this.e = buf.a().e();
        this.b = true;
        this.c = false;
    }
}
