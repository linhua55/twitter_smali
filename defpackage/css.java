package defpackage;

import android.support.annotation.LayoutRes;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.twitter.ui.widget.o;
import com.twitter.util.collection.MutableList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: css */
public class css<T extends csq> extends Adapter<csr> {
    private final LayoutInflater a;
    private final List<T> b;
    @LayoutRes
    private final int c;
    private o<T> d;

    public /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        a((csr) viewHolder, i);
    }

    public /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return a(viewGroup, i);
    }

    public css(LayoutInflater layoutInflater, @LayoutRes int i) {
        this.b = MutableList.a();
        this.a = layoutInflater;
        this.c = i;
    }

    public csr a(ViewGroup viewGroup, int i) {
        return new csr(this.a.inflate(this.c, viewGroup, false));
    }

    public void a(csr csr, int i) {
        csq csq = (csq) this.b.get(i);
        csr.a(csq.a());
        csr.a(new cst(this, csq));
    }

    public int getItemCount() {
        return this.b.size();
    }

    public void a(List<T> list) {
        this.b.clear();
        this.b.addAll(list);
        notifyDataSetChanged();
    }

    public void a(o<T> oVar) {
        this.d = oVar;
    }
}
