package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import bdm;

/* compiled from: Twttr */
/* renamed from: bdl */
public abstract class bdl<T> extends BaseAdapter {
    private final Context a;
    private cgu<T> b;

    protected abstract View a(Context context, T t, ViewGroup viewGroup);

    protected abstract void a(View view, Context context, T t);

    protected bdl(Context context) {
        this.a = context;
    }

    public Context i() {
        return this.a;
    }

    public static <T> bdl<T> b(Context context) {
        return new bdm(context);
    }

    public cgu<T> a(cgu<T> cgu_T) {
        cgu<T> h = h();
        this.b = cgu_T;
        if (!h.equals(h())) {
            notifyDataSetChanged();
        }
        return h;
    }

    public boolean j() {
        return this.b != null;
    }

    public cgu<T> h() {
        return this.b != null ? this.b : ad_();
    }

    public cgu<T> ad_() {
        return cgu.f();
    }

    public int getCount() {
        return h().aU_();
    }

    public T getItem(int i) {
        return h().a(i);
    }

    public int getItemViewType(int i) {
        Object item = getItem(i);
        if (item != null) {
            return a(item);
        }
        return 0;
    }

    protected int a(T t) {
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        Object item = getItem(i);
        if (item == null) {
            return null;
        }
        View a = view != null ? view : a(this.a, item, viewGroup, i);
        if (a == null) {
            return a;
        }
        a(a, this.a, item, i);
        return a;
    }

    public long getItemId(int i) {
        return -1;
    }

    public boolean isEnabled(int i) {
        Object item = getItem(i);
        return item != null && a(this.a, item);
    }

    @Deprecated
    protected View a(Context context, T t, ViewGroup viewGroup, int i) {
        return a(context, (Object) t, viewGroup);
    }

    @Deprecated
    protected void a(View view, Context context, T t, int i) {
        a(view, context, (Object) t);
    }

    protected boolean a(Context context, T t) {
        return true;
    }
}
