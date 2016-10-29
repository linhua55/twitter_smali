package defpackage;

import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bdn */
public abstract class bdn<VH extends ViewHolder> extends Adapter<ViewHolder> {
    private List<View> a;

    protected abstract int a();

    protected abstract VH a(ViewGroup viewGroup, int i);

    protected abstract void a(VH vh, int i);

    public bdn() {
        this.a = n.g();
    }

    public int getItemViewType(int i) {
        return i < this.a.size() ? 1 : a(b(i)) + 2;
    }

    protected int a(int i) {
        return 0;
    }

    private int b(int i) {
        return i - this.a.size();
    }

    private int f(int i) {
        return this.a.size() + i;
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new bdp((FrameLayout) LayoutInflater.from(viewGroup.getContext()).inflate(bcy.recycler_view_header, viewGroup, false));
        }
        return a(viewGroup, i - 2);
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        if (viewHolder instanceof bdp) {
            bdp bdp = (bdp) viewHolder;
            bdp.a.removeAllViews();
            View view = (View) this.a.get(i);
            a(view);
            bdp.a.addView(view);
            return;
        }
        a((ViewHolder) ObjectUtils.a(viewHolder), b(i));
    }

    private void a(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
    }

    public int getItemCount() {
        return this.a.size() + a();
    }

    public void a(List<View> list) {
        this.a = list;
    }

    public List<View> b() {
        return this.a;
    }

    public final void c(int i) {
        notifyItemChanged(f(i));
    }

    public final void d(int i) {
        notifyItemInserted(f(i));
    }

    public final void e(int i) {
        notifyItemRemoved(f(i));
    }
}
