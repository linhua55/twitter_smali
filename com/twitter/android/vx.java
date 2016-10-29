package com.twitter.android;

import adg;
import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.provider.cr;
import com.twitter.library.provider.e;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import com.twitter.util.collection.n;
import com.twitter.util.h;
import cym;
import defpackage.bkb;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.o;

/* compiled from: Twttr */
public class vx implements bkb {
    private static final long a;
    private static final Integer b;
    private static final Integer c;
    private Map<Long, Long> d;
    private Map<Long, Object> e;
    private final e f;
    private final String g;
    private final t h;
    private final AtomicInteger i;
    private final Set<Long> j;
    private wb k;
    private Long l;

    static {
        a = TimeUnit.SECONDS.toMillis(5);
        b = Integer.valueOf(10);
        c = Integer.valueOf(b.intValue() - 1);
    }

    public vx(e eVar, String str) {
        this.f = eVar;
        this.g = str;
        this.d = new LinkedHashMap(4);
        this.e = new LinkedHashMap(4);
        this.j = new LinkedHashSet(4);
        this.h = PlatformContext.f().a();
        this.i = new AtomicInteger(b.intValue());
    }

    public void a(View view, boolean z, Context context, adg adg) {
        Object obj;
        Object obj2 = 1;
        if (z || this.k == null) {
            this.k = new wb(view, context, this);
            Object obj3 = !this.e.isEmpty() ? 1 : null;
            this.e.clear();
            this.j.clear();
            obj = obj3;
        } else {
            obj = null;
        }
        ViewGroup viewGroup = (ViewGroup) view.findViewById(2131952369);
        if (a()) {
            if (d()) {
                obj2 = null;
            }
            n b = b(adg, viewGroup);
            n a = a(adg, viewGroup);
            if (obj != null) {
                this.k.c();
            } else if (obj2 != null) {
                this.k.a();
            } else {
                this.k.b((List) a.q());
                this.k.a((List) b.q());
            }
        } else if (d()) {
            this.e.clear();
            this.j.clear();
            this.k.b();
        }
    }

    protected n<View> a(adg adg, ViewGroup viewGroup) {
        n<View> d = n.d();
        for (Long longValue : c()) {
            long longValue2 = longValue.longValue();
            Integer e = e(longValue2);
            if (e != c) {
                d.c(viewGroup.findViewWithTag(e));
                if (!this.j.isEmpty()) {
                    long longValue3 = ((Long) this.j.iterator().next()).longValue();
                    a(longValue3, viewGroup);
                    a(longValue3, a(longValue3, viewGroup, adg, !this.j.isEmpty()).getTag());
                }
            } else {
                a(longValue2, viewGroup);
            }
        }
        return d;
    }

    protected n<View> b(adg adg, ViewGroup viewGroup) {
        n<View> d = n.d();
        for (Long longValue : b()) {
            View a;
            long longValue2 = longValue.longValue();
            if (this.e.size() < 3) {
                a = a(longValue2, viewGroup, adg, false);
            } else {
                a = b(longValue2, viewGroup);
            }
            Integer tag = a.getTag();
            a(longValue2, (Object) tag);
            if (tag != c || this.e.size() == 4) {
                d.c(a);
            }
        }
        return d;
    }

    private View a(long j, ViewGroup viewGroup, adg adg, boolean z) {
        UserImageView userImageView = (UserImageView) LayoutInflater.from(viewGroup.getContext()).inflate(2130969491, viewGroup, false);
        adg.a(j).c(new vy(this, userImageView));
        if (z) {
            viewGroup.addView(userImageView, 3);
        } else {
            viewGroup.addView(userImageView);
        }
        userImageView.setTag(Integer.valueOf(this.i.getAndIncrement()));
        return userImageView;
    }

    private void a(long j, ViewGroup viewGroup) {
        TextView textView = (TextView) viewGroup.findViewWithTag(c);
        this.j.remove(Long.valueOf(j));
        if (this.j.isEmpty()) {
            viewGroup.removeView(textView);
        } else {
            textView.setText(h());
        }
    }

    private View b(long j, ViewGroup viewGroup) {
        View view;
        if (this.j.isEmpty()) {
            view = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(2130969492, viewGroup, false);
            viewGroup.addView(view);
            view.setVisibility(8);
            view.setTag(c);
        } else {
            TextView textView = (TextView) viewGroup.findViewWithTag(c);
        }
        this.j.add(Long.valueOf(j));
        view.setText(h());
        return view;
    }

    private String h() {
        return "+" + Integer.toString(this.j.size());
    }

    public void a(long j) {
        h.a();
        boolean containsKey = this.d.containsKey(Long.valueOf(j));
        this.d.put(Long.valueOf(j), Long.valueOf(this.h.b()));
        if (!containsKey) {
            e();
        }
    }

    public void b(long j) {
        h.a();
        if (this.d.containsKey(Long.valueOf(j))) {
            this.d.remove(Long.valueOf(j));
            e();
        }
    }

    public boolean a() {
        h.a();
        return !this.d.isEmpty();
    }

    protected Long c(long j) {
        h.a();
        return this.d.containsKey(Long.valueOf(j)) ? (Long) this.d.get(Long.valueOf(j)) : null;
    }

    public o<Long> d(long j) {
        return o.b(Long.valueOf(j)).b(f(), TimeUnit.MILLISECONDS).a(cym.a()).d(new vz(this));
    }

    protected List<Long> b() {
        h.a();
        return (List) n.d().c(this.d.keySet()).d(this.e.keySet()).q();
    }

    protected List<Long> c() {
        h.a();
        return (List) n.d().c(this.e.keySet()).d(this.d.keySet()).q();
    }

    public boolean d() {
        h.a();
        return !this.e.isEmpty();
    }

    protected void a(long j, Object obj) {
        h.a();
        this.e.put(Long.valueOf(j), obj);
    }

    protected Object e(long j) {
        h.a();
        return this.e.remove(Long.valueOf(j));
    }

    protected void e() {
        this.f.a(new Uri[]{Uri.withAppendedPath(cr.a, this.g)});
        this.f.a();
    }

    protected long f() {
        return this.l == null ? a : this.l.longValue();
    }
}
