package com.twitter.android.moments.ui.fullscreen;

import android.support.v4.view.ViewPager;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.model.moments.viewmodels.j;
import com.twitter.moments.core.ui.widget.capsule.b;
import com.twitter.moments.core.ui.widget.sectionpager.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: Twttr */
public class eq implements j {
    static final /* synthetic */ boolean a;
    private final e b;
    private final ViewPager c;
    private final List<a> d;
    private final NavigableMap<Integer, a> e;
    private final Map<a, Integer> f;
    private final Map<a, Integer> g;

    static {
        a = !eq.class.desiredAssertionStatus();
    }

    public eq(e eVar, ViewPager viewPager) {
        this.e = new TreeMap();
        this.f = new HashMap();
        this.g = new HashMap();
        this.b = eVar;
        this.c = viewPager;
        this.d = new ArrayList();
    }

    public void a(a aVar) {
        this.d.add(aVar);
        c();
    }

    public void b(a aVar) {
        this.d.remove(aVar);
        c();
    }

    public boolean a() {
        return this.d.isEmpty();
    }

    private void c() {
        this.e.clear();
        this.f.clear();
        this.g.clear();
        int i = 0;
        int i2 = 0;
        for (a aVar : this.d) {
            this.e.put(Integer.valueOf(i2), aVar);
            this.f.put(aVar, Integer.valueOf(i2));
            this.g.put(aVar, Integer.valueOf(i));
            i2 += aVar.d().size();
            i++;
        }
    }

    public int a(int i) {
        Object obj;
        Integer num = (Integer) this.e.floorKey(Integer.valueOf(i));
        if (num != null) {
            a aVar = (a) this.e.get(num);
            if (a || aVar != null) {
                obj = (Integer) this.g.get(aVar);
            } else {
                throw new AssertionError();
            }
        }
        obj = null;
        return ((Integer) com.twitter.util.object.e.b(obj, Integer.valueOf(0))).intValue();
    }

    public int b(int i) {
        return ((Integer) this.e.ceilingKey(Integer.valueOf(i))).intValue();
    }

    public b c(a aVar) {
        return new es(this, aVar);
    }

    public MomentPage c(int i) {
        Entry floorEntry = this.e.floorEntry(Integer.valueOf(i));
        if (floorEntry == null) {
            return null;
        }
        return (MomentPage) ((a) floorEntry.getValue()).d().get(i - ((Integer) floorEntry.getKey()).intValue());
    }

    public a d(int i) {
        Entry floorEntry = this.e.floorEntry(Integer.valueOf(i));
        if (floorEntry == null) {
            return null;
        }
        return (a) floorEntry.getValue();
    }

    public int b() {
        int i = 0;
        for (a d : this.d) {
            i = d.d().size() + i;
        }
        return i;
    }

    private int a(a aVar, int i) {
        if (this.f.containsKey(aVar)) {
            return i - ((Integer) this.f.get(aVar)).intValue();
        }
        throw new IllegalStateException("The capsule section has not been added to this controller");
    }

    private int b(a aVar, int i) {
        if (this.f.containsKey(aVar)) {
            return ((Integer) this.f.get(aVar)).intValue() + i;
        }
        throw new IllegalStateException("The capsule section has not been added to this controller");
    }
}
