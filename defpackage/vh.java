package defpackage;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.State;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.TextView;
import com.twitter.util.aj;
import com.twitter.util.collection.r;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: vh */
public class vh extends ItemDecoration {
    private Map<Integer, String> a;
    private final View b;
    private final TextView c;
    private final int d;

    public vh(RecyclerView recyclerView, LayoutInflater layoutInflater) {
        this(layoutInflater.inflate(2130969536, recyclerView, false), recyclerView.getResources().getDimensionPixelSize(2131690656));
    }

    @VisibleForTesting
    vh(View view, int i) {
        this.a = r.e();
        this.b = view;
        this.c = (TextView) this.b.findViewById(2131953396);
        this.d = i;
    }

    public void a(Map<Integer, String> map) {
        this.a = map;
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        String str = (String) this.a.get(Integer.valueOf(recyclerView.getChildAdapterPosition(view)));
        if (view.getResources().getConfiguration().orientation == 2) {
            rect.set(0, 0, 0, 0);
        } else if (aj.b(str)) {
            this.c.setText(str);
            a(recyclerView);
            rect.set(0, this.b.getMeasuredHeight(), 0, 0);
        } else {
            rect.set(0, this.d, 0, 0);
        }
    }

    public void onDraw(Canvas canvas, RecyclerView recyclerView, State state) {
        super.onDraw(canvas, recyclerView, state);
        if (recyclerView.getResources().getConfiguration().orientation != 2) {
            LayoutManager layoutManager = recyclerView.getLayoutManager();
            int childCount = recyclerView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                String str = (String) this.a.get(Integer.valueOf(recyclerView.getChildLayoutPosition(childAt)));
                if (aj.b(str)) {
                    this.c.setText(str);
                    a(recyclerView);
                    this.b.layout(0, 0, this.b.getMeasuredWidth(), this.b.getMeasuredHeight());
                    canvas.save();
                    canvas.translate((float) layoutManager.getDecoratedLeft(childAt), (float) layoutManager.getDecoratedTop(childAt));
                    this.b.draw(canvas);
                    canvas.restore();
                }
            }
        }
    }

    private void a(RecyclerView recyclerView) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        this.b.measure(MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), makeMeasureSpec);
    }
}
