package defpackage;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;

/* compiled from: Twttr */
/* renamed from: vf */
public class vf extends ItemDecoration {
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int itemCount = recyclerView.getAdapter().getItemCount();
        if (!a(childAdapterPosition, itemCount) || itemCount <= 1) {
            rect.set(0, 0, 0, 0);
        } else {
            a(rect, recyclerView);
        }
    }

    void a(Rect rect, RecyclerView recyclerView) {
        rect.set(0, 0, 0, recyclerView.getHeight());
    }

    boolean a(int i, int i2) {
        return i == i2 + -1;
    }
}
