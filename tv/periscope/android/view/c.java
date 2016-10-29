package tv.periscope.android.view;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import defpackage.dda;

/* compiled from: Twttr */
public class c extends ItemDecoration {
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        a(rect, view, recyclerView, state);
    }

    private void a(Rect rect, View view, RecyclerView recyclerView, State state) {
        int position = recyclerView.getLayoutManager().getPosition(view);
        int itemCount = state.getItemCount() - 1;
        if (position == 0 || position == itemCount) {
            int i;
            boolean a = dda.a(view.getContext());
            int measuredWidth = (int) (((float) recyclerView.getMeasuredWidth()) / 2.0f);
            int i2 = position == 0 ? measuredWidth : 0;
            if (position != itemCount) {
                measuredWidth = 0;
            }
            if (a) {
                i = measuredWidth;
            } else {
                i = i2;
            }
            rect.left = i;
            if (!a) {
                i2 = measuredWidth;
            }
            rect.right = i2;
        }
    }
}
