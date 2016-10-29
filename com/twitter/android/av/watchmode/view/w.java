package com.twitter.android.av.watchmode.view;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.PointF;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.OnItemTouchListener;
import android.view.MotionEvent;
import android.view.View;
import com.twitter.app.common.inject.c;

/* compiled from: Twttr */
public class w implements OnItemTouchListener, c {
    @VisibleForTesting
    boolean a;
    private final PointF b;
    private int c;
    private final int d;

    public w(Context context) {
        this(context, context.getResources().getDimensionPixelSize(2131690651));
    }

    public w(Context context, int i) {
        this.a = false;
        this.b = new PointF();
        this.c = context.getResources().getConfiguration().orientation;
        this.d = i;
    }

    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (recyclerView instanceof WatchModeRecyclerView) {
            if (motionEvent.getAction() == 1) {
                LayoutManager layoutManager = recyclerView.getLayoutManager();
                t scroller = ((WatchModeRecyclerView) recyclerView).getScroller();
                if (layoutManager instanceof LinearLayoutManager) {
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                    int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                    View findViewByPosition = linearLayoutManager.findViewByPosition(findFirstVisibleItemPosition);
                    if (findViewByPosition != null) {
                        int i = a(motionEvent) ? 1 : -1;
                        int b = b(findViewByPosition);
                        float f = (((float) i) * (((float) b) * 0.3125f)) + ((float) (b / 2));
                        b = recyclerView.getAdapter().getItemCount() - 1;
                        if (!this.a && findFirstVisibleItemPosition == 0 && b(motionEvent)) {
                            scroller.a(new Point(Math.min(0, (int) (motionEvent.getX() - this.b.x)), Math.min(0, (int) (motionEvent.getY() - this.b.y))));
                        } else if (((float) a(findViewByPosition)) < f && findFirstVisibleItemPosition != b) {
                            scroller.a(findFirstVisibleItemPosition + 1);
                        } else if (findFirstVisibleItemPosition != 0 || this.a || findFirstVisibleItemPosition == b) {
                            scroller.a(findFirstVisibleItemPosition);
                        } else {
                            scroller.a(1);
                            this.a = true;
                        }
                    }
                }
            } else if (motionEvent.getAction() == 0) {
                this.b.set(motionEvent.getX(), motionEvent.getY());
            }
        }
        return false;
    }

    private int a(View view) {
        return this.c == 1 ? view.getBottom() : view.getRight();
    }

    private int b(View view) {
        return this.c == 1 ? view.getMeasuredHeight() : view.getMeasuredWidth();
    }

    private boolean a(MotionEvent motionEvent) {
        return this.c == 1 ? motionEvent.getY() < this.b.y : motionEvent.getX() < this.b.x;
    }

    private boolean b(MotionEvent motionEvent) {
        return Math.abs(this.c == 1 ? motionEvent.getY() - this.b.y : motionEvent.getX() - this.b.x) < ((float) this.d);
    }

    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
    }

    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    public void a(Configuration configuration) {
        this.c = configuration.orientation;
    }
}
