package com.twitter.android.widget;

import android.database.DataSetObserver;
import android.support.annotation.IdRes;
import android.support.annotation.LayoutRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.exoplayer.SampleSource;
import com.twitter.util.aj;
import com.twitter.util.collection.z;

/* compiled from: Twttr */
public class br extends BaseAdapter {
    protected final BaseAdapter a;
    protected final BaseAdapter b;
    private final boolean c;
    @LayoutRes
    private final int d;
    private final boolean e;
    @LayoutRes
    private final int f;
    @IdRes
    private final int g;
    private final String h;
    private final String i;
    private int j;

    protected br(bt btVar) {
        this.a = btVar.a;
        this.b = btVar.b;
        this.j = btVar.c;
        this.c = btVar.d;
        this.d = btVar.e;
        this.e = btVar.f;
        this.f = btVar.g;
        this.g = btVar.h;
        this.h = btVar.i;
        this.i = btVar.j;
        DataSetObserver bsVar = new bs(this);
        this.a.registerDataSetObserver(bsVar);
        this.b.registerDataSetObserver(bsVar);
    }

    public void a(int i) {
        if (this.j != i) {
            this.j = i;
            notifyDataSetChanged();
        }
    }

    public int getCount() {
        return ((this.a.getCount() + this.b.getCount()) + e()) + f();
    }

    public z<BaseAdapter, Integer> b(int i) {
        z<BaseAdapter, Integer> c = c(i);
        BaseAdapter baseAdapter = (BaseAdapter) c.a();
        int intValue = ((Integer) c.b()).intValue();
        if (intValue < 0) {
            return null;
        }
        if (baseAdapter instanceof br) {
            return ((br) baseAdapter).b(intValue);
        }
        return c;
    }

    private z<BaseAdapter, Integer> c(int i) {
        int i2 = 1;
        int count = this.a.getCount();
        int g = g();
        if (count <= 0) {
            if (!c()) {
                i2 = 0;
            } else if (i == g) {
                return z.a(this.b, Integer.valueOf(-2));
            }
            return z.a(this.b, Integer.valueOf(i - i2));
        } else if (i < g) {
            return z.a(this.a, Integer.valueOf(i));
        } else {
            if (!a()) {
                i2 = 0;
            } else if (i == 0 + g) {
                return z.a(this.b, Integer.valueOf(-1));
            }
            if (c()) {
                if (i == g + i2) {
                    return z.a(this.b, Integer.valueOf(-2));
                }
                i2++;
            }
            if (g + i2 <= i && i < (g + i2) + this.b.getCount()) {
                return z.a(this.b, Integer.valueOf((i - g) - i2));
            }
            i2 += this.b.getCount();
            if (b()) {
                if (i == g + i2) {
                    return z.a(this.a, Integer.valueOf(-1));
                }
                i2++;
            }
            if (d()) {
                if (i == g + i2) {
                    return z.a(this.a, Integer.valueOf(-2));
                }
                i2++;
            }
            return z.a(this.a, Integer.valueOf(i - i2));
        }
    }

    public long getItemId(int i) {
        z c = c(i);
        BaseAdapter baseAdapter = (BaseAdapter) c.a();
        int intValue = ((Integer) c.b()).intValue();
        return intValue >= 0 ? baseAdapter.getItemId(intValue) : 0;
    }

    public Object getItem(int i) {
        z c = c(i);
        BaseAdapter baseAdapter = (BaseAdapter) c.a();
        int intValue = ((Integer) c.b()).intValue();
        return intValue >= 0 ? baseAdapter.getItem(intValue) : null;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        z c = c(i);
        BaseAdapter baseAdapter = (BaseAdapter) c.a();
        int intValue = ((Integer) c.b()).intValue();
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        Object tag = view != null ? view.getTag() : null;
        switch (intValue) {
            case SampleSource.NOTHING_READ /*-2*/:
                if (view == null || tag == null || !(tag instanceof Integer) || ((Integer) tag).intValue() != -2) {
                    view = from.inflate(this.f, viewGroup, false);
                    view.setTag(Integer.valueOf(-2));
                }
                TextView textView = (TextView) view.findViewById(this.g);
                if (baseAdapter == this.a) {
                    textView.setText(this.i);
                    return view;
                }
                textView.setText(this.h);
                return view;
            case TtmlStyle.UNSPECIFIED /*-1*/:
                if (view != null && tag != null && (tag instanceof Integer) && ((Integer) tag).intValue() == -1) {
                    return view;
                }
                view = from.inflate(this.d, viewGroup, false);
                view.setTag(Integer.valueOf(-1));
                return view;
            default:
                return baseAdapter.getView(intValue, view, viewGroup);
        }
    }

    public int getItemViewType(int i) {
        z c = c(i);
        BaseAdapter baseAdapter = (BaseAdapter) c.a();
        int intValue = ((Integer) c.b()).intValue();
        switch (intValue) {
            case SampleSource.NOTHING_READ /*-2*/:
                return 1;
            case TtmlStyle.UNSPECIFIED /*-1*/:
                return 0;
            default:
                int i2;
                if (baseAdapter == this.a) {
                    i2 = 0;
                } else {
                    i2 = this.a.getViewTypeCount();
                }
                return baseAdapter.getItemViewType(intValue) + (i2 + 2);
        }
    }

    public int getViewTypeCount() {
        return (this.a.getViewTypeCount() + this.b.getViewTypeCount()) + 2;
    }

    public boolean areAllItemsEnabled() {
        return false;
    }

    public boolean isEnabled(int i) {
        z c = c(i);
        BaseAdapter baseAdapter = (BaseAdapter) c.a();
        int intValue = ((Integer) c.b()).intValue();
        return intValue >= 0 && baseAdapter.isEnabled(intValue);
    }

    protected boolean a() {
        return this.c && this.b.getCount() > 0 && g() > 0;
    }

    protected boolean b() {
        return this.c && this.b.getCount() > 0 && g() < this.a.getCount();
    }

    private boolean c() {
        return this.e && aj.b(this.h) && this.b.getCount() > 0;
    }

    private boolean d() {
        return this.e && aj.b(this.i) && this.a.getCount() > 0 && this.b.getCount() > 0 && Math.min(this.a.getCount(), this.j) < this.a.getCount();
    }

    private int e() {
        int i;
        int i2 = 1;
        if (a()) {
            i = 1;
        } else {
            i = 0;
        }
        if (!b()) {
            i2 = 0;
        }
        return i + i2;
    }

    private int f() {
        int i;
        int i2 = 1;
        if (c()) {
            i = 1;
        } else {
            i = 0;
        }
        if (!d()) {
            i2 = 0;
        }
        return i + i2;
    }

    private int g() {
        return Math.min(this.a.getCount(), this.j);
    }
}
