package com.twitter.android.widget;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.twitter.internal.android.widget.GroupedRowView;

/* compiled from: Twttr */
public abstract class bl<T extends ListAdapter> extends BaseAdapter {
    protected final T a;
    private final int b;
    private final int c;
    private boolean d;

    protected abstract View a(View view, ViewGroup viewGroup);

    protected abstract Object a();

    protected abstract View b(View view, ViewGroup viewGroup);

    protected abstract Object b();

    protected bl(T t, int i) {
        this.a = t;
        this.b = t.getViewTypeCount();
        this.c = i;
        this.d = g();
        t.registerDataSetObserver(new bm(this));
    }

    public T c() {
        return this.a;
    }

    public int getCount() {
        if (!g() || !this.d) {
            int count = this.a.getCount();
            if (count == 0) {
                return count;
            }
            if (f()) {
                count++;
            }
            if (d()) {
                return count + 1;
            }
            return count;
        } else if (f()) {
            return 2;
        } else {
            return 1;
        }
    }

    public Object getItem(int i) {
        if (b(i)) {
            return a();
        }
        if (d(i)) {
            return null;
        }
        if (c(i)) {
            return b();
        }
        return a(e(i));
    }

    protected Object a(int i) {
        return this.a.getItem(i);
    }

    public long getItemId(int i) {
        if (b(i) || d(i) || c(i)) {
            return 0;
        }
        return this.a.getItemId(e(i));
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View a = b(i) ? a(view, viewGroup) : d(i) ? view == null ? LayoutInflater.from(viewGroup.getContext()).inflate(2130968952, viewGroup, false) : view : c(i) ? b(view, viewGroup) : this.a.getView(e(i), view, viewGroup);
        if ((this.c & 8) != 0) {
            ((GroupedRowView) a).a(i, getCount());
        }
        return a;
    }

    public int getViewTypeCount() {
        return this.b + 3;
    }

    public int getItemViewType(int i) {
        if (b(i)) {
            return (this.b - 1) + 1;
        }
        if (d(i)) {
            return (this.b - 1) + 3;
        }
        if (c(i)) {
            return (this.b - 1) + 2;
        }
        return this.a.getItemViewType(e(i));
    }

    public boolean isEnabled(int i) {
        if (b(i)) {
            if (a() != null) {
                return true;
            }
            return false;
        } else if (d(i)) {
            return false;
        } else {
            if (!c(i)) {
                return this.a.isEnabled(e(i));
            }
            if (b() == null) {
                return false;
            }
            return true;
        }
    }

    private boolean f() {
        return (this.c & 1) != 0;
    }

    protected boolean d() {
        return (this.c & 2) != 0;
    }

    private boolean g() {
        return (this.c & 4) != 0;
    }

    public boolean b(int i) {
        return f() && i == 0;
    }

    public boolean c(int i) {
        return d() && i == getCount() - 1;
    }

    protected boolean e() {
        return (this.c & 32) != 0;
    }

    private boolean d(int i) {
        return g() && this.d && i == getCount() - 1;
    }

    private int e(int i) {
        return f() ? i - 1 : i;
    }

    public static View a(View view, ViewGroup viewGroup, String str) {
        return a(view, viewGroup, str, 2130969381);
    }

    public static View a(View view, ViewGroup viewGroup, String str, int i) {
        TextView textView;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
            textView = (TextView) view.findViewById(2131951868);
            view.setTag(textView);
        } else {
            textView = (TextView) view.getTag();
        }
        textView.setText(str);
        return view;
    }
}
