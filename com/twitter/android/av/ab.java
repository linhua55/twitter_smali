package com.twitter.android.av;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.widget.a;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.ar;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public abstract class ab {
    private final Rect a;
    private final Rect b;
    private final Map<Float, a> c;
    private final List<a> d;

    abstract double a();

    protected abstract float a(Rect rect, Rect rect2);

    protected abstract int b();

    public ab() {
        this.a = new Rect();
        this.b = new Rect();
        this.c = MutableMap.b();
        this.d = MutableList.a();
    }

    protected boolean a(Rect rect, int i, int i2) {
        double a = a();
        return ((double) (rect.bottom - rect.top)) >= ((double) i) * a && ((double) (rect.right - rect.left)) >= a * ((double) i2);
    }

    public Set<a> a(ViewGroup viewGroup, List<a> list) {
        int size;
        viewGroup.getGlobalVisibleRect(this.a);
        for (size = list.size() - 1; size >= 0; size--) {
            a aVar = (a) list.get(size);
            View i = aVar.i();
            if (i != null && aVar.c() && i.getGlobalVisibleRect(this.b) && a(this.b, i.getHeight(), i.getWidth())) {
                float a = a(this.a, this.b);
                if (this.c.containsKey(Float.valueOf(a))) {
                    this.c.put(Float.valueOf(a + 1.0E-4f), aVar);
                } else {
                    this.c.put(Float.valueOf(a), aVar);
                }
            }
        }
        this.d.addAll(this.c.values());
        int min = Math.min(this.d.size(), b());
        Set<a> a2 = min > 0 ? MutableSet.a(min) : ar.g();
        for (size = 0; size < min; size++) {
            a2.add(this.d.get(size));
        }
        c();
        return a2;
    }

    private void c() {
        this.c.clear();
        this.d.clear();
    }

    public static ab a(int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return new ac();
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return new aa();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return new y();
            case Util.TYPE_OTHER /*3*/:
                return new z();
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return new x();
            default:
                return new aa();
        }
    }
}
