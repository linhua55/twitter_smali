package defpackage;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import com.twitter.android.av.watchmode.view.y;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.h;

/* compiled from: Twttr */
/* renamed from: vg */
public class vg extends ItemDecoration {
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        Adapter adapter = recyclerView.getAdapter();
        if (view.getResources().getConfiguration().orientation == 2) {
            rect.set(0, 0, 0, 0);
        } else if (childAdapterPosition == 0 && (adapter instanceof y)) {
            rect.set(0, ((int) (((float) recyclerView.getHeight()) - (((float) recyclerView.getWidth()) / h.a((AVDataSource) ((y) adapter).a(childAdapterPosition))))) / 2, 0, 0);
        } else {
            rect.set(0, 0, 0, 0);
        }
    }
}
