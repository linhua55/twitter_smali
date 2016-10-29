package defpackage;

import android.content.Context;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.app.common.inject.m;
import com.twitter.internal.android.widget.aa;

/* compiled from: Twttr */
/* renamed from: akg */
public class akg implements m {
    private final RecyclerView a;
    private final ViewGroup b;
    private final akb c;

    public static akg a(Context context) {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(2130968973, null);
        return new akg(context, viewGroup, (RecyclerView) viewGroup.findViewById(2131952693), new aa(context.getResources().getDimensionPixelOffset(2131690212)), akb.a());
    }

    public akg(Context context, ViewGroup viewGroup, RecyclerView recyclerView, ItemDecoration itemDecoration, akb akb) {
        this.b = viewGroup;
        this.a = recyclerView;
        this.a.setLayoutManager(new GridLayoutManager(context, 3));
        this.a.addItemDecoration(itemDecoration);
        this.c = akb;
    }

    public void a(Adapter adapter) {
        this.a.setAdapter(adapter);
    }

    public View aO_() {
        return this.b;
    }

    public void a(ake ake) {
        this.c.a(this.a);
        this.c.a(ake);
    }
}
