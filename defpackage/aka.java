package defpackage;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.app.common.inject.m;
import com.twitter.internal.android.widget.aa;

/* compiled from: Twttr */
/* renamed from: aka */
public class aka implements m {
    private final View a;
    private final RecyclerView b;

    aka(View view, RecyclerView recyclerView, ItemDecoration itemDecoration, LayoutManager layoutManager) {
        this.a = view;
        this.b = recyclerView;
        recyclerView.setLayoutManager(layoutManager);
        recyclerView.addItemDecoration(itemDecoration);
    }

    public static aka a(Context context, ViewGroup viewGroup) {
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(2131690159);
        aa aaVar = new aa(dimensionPixelOffset, dimensionPixelOffset);
        LayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false);
        View inflate = LayoutInflater.from(context).inflate(2130968972, viewGroup, false);
        return new aka(inflate, (RecyclerView) inflate.findViewById(2131952692), aaVar, linearLayoutManager);
    }

    public View aO_() {
        return this.a;
    }

    public void a(Adapter adapter) {
        this.b.setAdapter(adapter);
    }
}
