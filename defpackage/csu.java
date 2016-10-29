package defpackage;

import android.content.res.Resources;
import android.support.annotation.LayoutRes;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import com.twitter.ui.widget.o;
import com.twitter.util.a;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: csu */
public class csu<T extends csq> {
    private final RecyclerView a;
    private final css<T> b;

    public static <N extends csq> csu<N> a(LayoutInflater layoutInflater, RecyclerView recyclerView) {
        return csu.a(layoutInflater, recyclerView, csc.navigation_pill_item_light);
    }

    public static <N extends csq> csu<N> b(LayoutInflater layoutInflater, RecyclerView recyclerView) {
        return csu.a(layoutInflater, recyclerView, csc.navigation_pill_item_dark);
    }

    private static <N extends csq> csu<N> a(LayoutInflater layoutInflater, RecyclerView recyclerView, @LayoutRes int i) {
        return new csu(layoutInflater, recyclerView.getResources(), recyclerView, i);
    }

    public csu(LayoutInflater layoutInflater, Resources resources, RecyclerView recyclerView, @LayoutRes int i) {
        this.a = recyclerView;
        this.a.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, a.a(recyclerView.getContext())));
        this.b = new css(layoutInflater, i);
        this.a.setAdapter(this.b);
    }

    public void a(List<T> list) {
        this.b.a((List) list);
    }

    public void a(o<T> oVar) {
        this.b.a((o) oVar);
    }
}
