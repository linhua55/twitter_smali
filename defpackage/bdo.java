package defpackage;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;

/* compiled from: Twttr */
/* renamed from: bdo */
public class bdo extends ItemDecoration {
    private final ItemDecoration a;

    public bdo(ItemDecoration itemDecoration) {
        this.a = itemDecoration;
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        if (!(recyclerView.getChildViewHolder(view) instanceof bdp)) {
            this.a.getItemOffsets(rect, view, recyclerView, state);
        }
    }
}
