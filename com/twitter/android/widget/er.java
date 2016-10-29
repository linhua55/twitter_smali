package com.twitter.android.widget;

import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.twitter.internal.android.widget.GroupedRowView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: Twttr */
public class er extends BaseAdapter implements dl {
    boolean a;
    private final ArrayList<BaseAdapter> b;
    private final boolean[] c;
    private final int d;
    private final int[] e;
    private int f;
    private dl g;

    public er(BaseAdapter[] baseAdapterArr) {
        this(null, null, baseAdapterArr, 2130969379, 1);
    }

    public er(BaseAdapter[] baseAdapterArr, int i) {
        this(null, null, baseAdapterArr, 2130969379, i);
    }

    public er(boolean[] zArr, int[] iArr, BaseAdapter[] baseAdapterArr, int i, int i2) {
        this.a = true;
        this.c = zArr;
        this.b = new ArrayList(Arrays.asList(baseAdapterArr));
        this.d = i;
        this.e = iArr;
        this.f = i2;
        DataSetObserver esVar = new es(this);
        for (BaseAdapter registerDataSetObserver : baseAdapterArr) {
            registerDataSetObserver.registerDataSetObserver(esVar);
        }
    }

    public void a(int i, BaseAdapter baseAdapter) {
        this.b.add(i, baseAdapter);
        baseAdapter.registerDataSetObserver(new es(this));
    }

    public void a(int i) {
        this.f = i;
    }

    public boolean b(int i) {
        int i2;
        boolean z = true;
        int i3 = 0;
        for (i2 = 0; i2 < i; i2++) {
            i3 += d(i2);
        }
        if (i3 == 0) {
            return false;
        }
        if (this.e != null) {
            i2 = this.e[i];
        } else {
            i2 = this.f;
        }
        if (i2 != 1) {
            z = false;
        }
        return z;
    }

    private int d(int i) {
        int count = ((BaseAdapter) this.b.get(i)).getCount();
        if (count <= 0 || !b(i)) {
            return count;
        }
        return count + 1;
    }

    public int getCount() {
        int i = 0;
        int i2 = 0;
        while (i < this.b.size()) {
            i2 += d(i);
            i++;
        }
        return i2;
    }

    public Object getItem(int i) {
        Iterator it = this.b.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            BaseAdapter baseAdapter = (BaseAdapter) it.next();
            int count = baseAdapter.getCount();
            if (count > 0) {
                if (b(i2)) {
                    count++;
                    if (i == 0) {
                        return null;
                    }
                    if (i < count) {
                        return baseAdapter.getItem(i - 1);
                    }
                } else if (i < count) {
                    return baseAdapter.getItem(i);
                }
                i -= count;
            }
            i2++;
        }
        return null;
    }

    public long getItemId(int i) {
        Iterator it = this.b.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            BaseAdapter baseAdapter = (BaseAdapter) it.next();
            int count = baseAdapter.getCount();
            if (count > 0) {
                if (b(i2)) {
                    count++;
                    if (i == 0) {
                        return 0;
                    }
                    if (i < count) {
                        return baseAdapter.getItemId(i - 1);
                    }
                } else if (i < count) {
                    return baseAdapter.getItemId(i);
                }
                i -= count;
            }
            i2++;
        }
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        Iterator it = this.b.iterator();
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        while (it.hasNext()) {
            BaseAdapter baseAdapter = (BaseAdapter) it.next();
            int count = baseAdapter.getCount();
            if (count > 0) {
                if (b(i3)) {
                    count++;
                    if (i4 == 0) {
                        return view == null ? from.inflate(this.d, viewGroup, false) : view;
                    } else {
                        if (i4 < count) {
                            return a(baseAdapter, i2, i3, i4 - 1, view, viewGroup);
                        }
                    }
                } else if (i4 < count) {
                    return a(baseAdapter, i2, i3, i4, view, viewGroup);
                }
                i4 -= count;
                i2++;
            }
            i3++;
        }
        return view;
    }

    protected View a(BaseAdapter baseAdapter, int i, int i2, int i3, View view, ViewGroup viewGroup) {
        int i4;
        if (this.e != null) {
            i4 = this.e[i2];
        } else {
            i4 = this.f;
        }
        if (i4 != 0) {
            return baseAdapter.getView(i3, view, viewGroup);
        }
        GroupedRowView groupedRowView = (GroupedRowView) baseAdapter.getView(i3, view, viewGroup);
        boolean z = this.c != null && this.c[i2];
        if (i != 0 || i2 <= 0) {
            groupedRowView.a(i2, this.b.size(), z);
            return groupedRowView;
        }
        groupedRowView.setGroupStyle(1);
        return groupedRowView;
    }

    public boolean areAllItemsEnabled() {
        boolean z;
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            if (b(i)) {
                z = true;
                break;
            }
        }
        z = false;
        if (z || !super.areAllItemsEnabled()) {
            return false;
        }
        return true;
    }

    public boolean isEnabled(int i) {
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            BaseAdapter baseAdapter = (BaseAdapter) this.b.get(i2);
            int count = baseAdapter.getCount();
            if (count > 0) {
                if (b(i2)) {
                    count++;
                    if (i == 0) {
                        return false;
                    }
                    if (i < count) {
                        return baseAdapter.isEnabled(i - 1);
                    }
                } else if (i < count) {
                    return baseAdapter.isEnabled(i);
                }
                i -= count;
            }
        }
        return super.isEnabled(i);
    }

    public int getItemViewType(int i) {
        Iterator it = this.b.iterator();
        int i2 = 0;
        int i3 = 1;
        while (it.hasNext()) {
            BaseAdapter baseAdapter = (BaseAdapter) it.next();
            int count = baseAdapter.getCount();
            if (count > 0) {
                if (b(i2)) {
                    count++;
                    if (i == 0) {
                        return 0;
                    }
                    if (i < count) {
                        return baseAdapter.getItemViewType(i - 1) + i3;
                    }
                } else if (i < count) {
                    return baseAdapter.getItemViewType(i) + i3;
                }
                i -= count;
            }
            i3 += baseAdapter.getViewTypeCount();
            i2++;
        }
        return super.getItemViewType(i);
    }

    public int getViewTypeCount() {
        Iterator it = this.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = ((BaseAdapter) it.next()).getViewTypeCount() + i;
        }
        return i + 1;
    }

    public int c(int i) {
        Iterator it = this.b.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            int count = ((BaseAdapter) it.next()).getCount();
            if (count > 0) {
                count += i2;
                if (b(i3)) {
                    count++;
                }
            } else {
                count = i2;
            }
            if (i < count) {
                break;
            }
            i3++;
            i2 = count;
        }
        return i3;
    }

    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.a = true;
    }

    public int a_(int i, int i2) {
        if (this.g != null) {
            return this.g.a_(i, i2);
        }
        return 0;
    }

    public void a(dl dlVar) {
        this.g = dlVar;
    }

    public void a(View view, int i, int i2, int i3) {
        if (this.g != null) {
            this.g.a(view, i, i2, i3);
        }
    }
}
