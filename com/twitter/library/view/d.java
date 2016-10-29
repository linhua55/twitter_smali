package com.twitter.library.view;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.text.SpannableStringBuilder;
import android.view.View;
import asp;
import bvj;
import com.twitter.library.media.manager.i;
import com.twitter.library.media.manager.l;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.b;
import com.twitter.model.core.q;
import com.twitter.ui.widget.w;
import com.twitter.util.math.Size;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Timer;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* compiled from: Twttr */
public class d {
    private static final Map<String, h> d;
    private static final Size e;
    private static boolean f;
    private static Context g;
    private static String h;
    private static int i;
    private static final asp j;
    public final String a;
    public int b;
    public final String c;

    static {
        d = new LinkedHashMap();
        e = Size.a(Callback.DEFAULT_DRAG_ANIMATION_DURATION, Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        i = 0;
        j = new e();
    }

    public d(String str, int i) {
        this.a = str;
        this.b = i;
        this.c = ((h) d.get(str.toLowerCase())).b;
    }

    public static void a(Context context) {
        g = context;
        i = com.twitter.config.d.a("hashflags_settings_version", 0);
        f = com.twitter.config.d.a("hashflags_settings_enabled");
        h = com.twitter.config.d.b("hashflags_settings_location_prefix");
        g();
        h();
        bvj.a(j);
    }

    public static SpannableStringBuilder a(Context context, Iterable<q> iterable, SpannableStringBuilder spannableStringBuilder, boolean z) {
        return a(context, (Iterable) iterable, spannableStringBuilder, z, new k(), null);
    }

    public static SpannableStringBuilder a(Context context, Iterable<q> iterable, SpannableStringBuilder spannableStringBuilder, boolean z, View view) {
        return a(context, (Iterable) iterable, spannableStringBuilder, z, new k(), view);
    }

    public static SpannableStringBuilder a(Context context, Iterable<q> iterable, SpannableStringBuilder spannableStringBuilder, boolean z, l lVar, View view) {
        List<d> a = a(iterable, z);
        if (view != null) {
            g.a(view);
        }
        if (a.size() > 0) {
            g gVar = new g(context, view);
            int i = 0;
            for (d dVar : a) {
                boolean z2;
                dVar.b += i;
                if (view != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                i = a(context, lVar, spannableStringBuilder, dVar, gVar, z2) + i;
            }
        }
        return spannableStringBuilder;
    }

    public static int a(Context context, SpannableStringBuilder spannableStringBuilder, d dVar, View view, boolean z) {
        return a(context, new k(), spannableStringBuilder, dVar, new g(context, view), z);
    }

    private static int a(Context context, l lVar, SpannableStringBuilder spannableStringBuilder, d dVar, g gVar, boolean z) {
        int i = dVar.b;
        int length = spannableStringBuilder.length();
        if (dVar.c != null && i <= spannableStringBuilder.length()) {
            w wVar = new w();
            b a = new b(dVar.c).a(e);
            i iVar = new i(gVar, wVar);
            if (z) {
                a.a(iVar);
            }
            Future a2 = lVar.a(a.a());
            gVar.b();
            try {
                if (a2.isDone()) {
                    try {
                        iVar.a((ImageResponse) a2.get());
                    } catch (InterruptedException e) {
                    } catch (ExecutionException e2) {
                    }
                }
                gVar.c();
                spannableStringBuilder.insert(i, "\u202f");
                spannableStringBuilder.insert(i, "\u202f");
                spannableStringBuilder.setSpan(new j(wVar, 0), i, "\u202f".length() + i, 33);
                spannableStringBuilder.insert(i, "\u202f");
            } catch (Throwable th) {
                gVar.c();
            }
        }
        return spannableStringBuilder.length() - length;
    }

    public static synchronized boolean a(String str) {
        boolean z;
        synchronized (d.class) {
            h hVar = (h) d.get(str.toLowerCase());
            z = hVar != null && hVar.a();
        }
        return z;
    }

    public static synchronized boolean a() {
        boolean z;
        synchronized (d.class) {
            z = !d.isEmpty();
        }
        return z;
    }

    public static synchronized List<h> b() {
        List<h> arrayList;
        synchronized (d.class) {
            arrayList = new ArrayList(d.size());
            for (Entry value : d.entrySet()) {
                arrayList.add(value.getValue());
            }
        }
        return arrayList;
    }

    private static synchronized void g() {
        synchronized (d.class) {
            d.clear();
            if (f) {
                List<String> c = com.twitter.config.d.c("hashflags_settings_groups");
                if (!c.isEmpty()) {
                    for (String str : c) {
                        if (com.twitter.config.d.a("hashflags_settings_group_" + str + "_enabled")) {
                            try {
                                long parseLong = Long.parseLong(com.twitter.config.d.b("hashflags_settings_group_" + str + "_start"));
                                long parseLong2 = Long.parseLong(com.twitter.config.d.b("hashflags_settings_group_" + str + "_end"));
                                List c2 = com.twitter.config.d.c("hashflags_settings_group_" + str + "_keys");
                                List c3 = com.twitter.config.d.c("hashflags_settings_group_" + str + "_values");
                                if (c2.size() == c3.size()) {
                                    int i = 0;
                                    for (Object next : c2) {
                                        int i2 = i + 1;
                                        String str2 = (String) c3.get(i);
                                        int lastIndexOf = str2.lastIndexOf(46);
                                        if (lastIndexOf == -1) {
                                            i = i2;
                                        } else {
                                            String str3 = h + str + "/" + str2.substring(0, lastIndexOf) + str2.substring(lastIndexOf, str2.length());
                                            String toLowerCase = ((String) next).toLowerCase();
                                            d.put(r16, new h(((String) next).toLowerCase(), str3, parseLong, parseLong2));
                                            i = i2;
                                        }
                                    }
                                }
                            } catch (NumberFormatException e) {
                            }
                        }
                    }
                }
            }
        }
    }

    private static void h() {
        if (com.twitter.config.d.a("hashflags_settings_preload_images")) {
            i d = l.a(g).d();
            Timer timer = new Timer();
            timer.schedule(new f(b().iterator(), d, timer), 70000, 200);
        }
    }

    private static List<d> a(Iterable<q> iterable, boolean z) {
        List linkedList = new LinkedList();
        for (q qVar : iterable) {
            if (a(qVar.c)) {
                linkedList.add(new d(qVar.c, z ? qVar.j : qVar.h));
            }
        }
        return linkedList;
    }
}
