package com.twitter.android.av.watchmode.view;

import android.content.Context;
import android.content.res.Configuration;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnItemTouchListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.twitter.android.mx;
import com.twitter.app.common.inject.c;
import defpackage.cqn;
import defpackage.cqp;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class v extends cqn implements OnItemTouchListener, c {
    @VisibleForTesting
    int a;
    @VisibleForTesting
    int b;
    @VisibleForTesting
    boolean c;
    @VisibleForTesting
    int d;

    public v(cqp cqp, Context context) {
        this(cqp, context, ViewConfiguration.get(context).getScaledTouchSlop(), ((float) context.getResources().getDisplayMetrics().heightPixels) * 0.5f);
    }

    @VisibleForTesting
    v(cqp cqp, Context context, int i, float f) {
        super(cqp, i, f, 0.5f * f);
        this.a = 2;
        a(context.getResources().getConfiguration());
    }

    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (!(recyclerView.getLayoutManager() instanceof LinearLayoutManager)) {
            return false;
        }
        boolean a;
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        View findViewByPosition = linearLayoutManager.findViewByPosition(findFirstVisibleItemPosition);
        boolean z = findFirstVisibleItemPosition != linearLayoutManager.findFirstCompletelyVisibleItemPosition() && this.d == 2;
        if (!(findViewByPosition == null || z || !a(motionEvent, findViewByPosition, findFirstVisibleItemPosition, linearLayoutManager))) {
            int itemCount = linearLayoutManager.getItemCount();
            z = b(findFirstVisibleItemPosition, itemCount);
            if ((this.c && z) || a()) {
                this.a = a(findFirstVisibleItemPosition, itemCount);
                a = a((View) recyclerView, motionEvent);
                return a;
            }
        }
        a = false;
        return a;
    }

    @VisibleForTesting
    int a(int i, int i2) {
        if (this.d != 1) {
            return 2;
        }
        if (i != 0) {
            return 0;
        }
        if (i2 == 1) {
            return 2;
        }
        return 1;
    }

    @VisibleForTesting
    boolean b(int i, int i2) {
        if (this.d != 1 || i == 0 || i == i2 - 1) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    boolean a(MotionEvent motionEvent, View view, int i, LinearLayoutManager linearLayoutManager) {
        int action = motionEvent.getAction();
        boolean z = this.b == i || action != 2;
        if (action == 0) {
            this.b = i;
            this.c = a(view, linearLayoutManager);
        } else if (action == 1) {
            this.c = false;
        }
        return z;
    }

    @VisibleForTesting
    boolean a(View view, LinearLayoutManager linearLayoutManager) {
        int topDecorationHeight;
        int top;
        if (this.d == 1) {
            topDecorationHeight = linearLayoutManager.getTopDecorationHeight(view);
            top = view.getTop();
        } else {
            topDecorationHeight = linearLayoutManager.getLeftDecorationWidth(view);
            top = view.getLeft();
        }
        if (top == topDecorationHeight || top == 0) {
            return true;
        }
        return false;
    }

    protected boolean a(float f) {
        switch (this.a) {
            case mx.View_android_theme /*0*/:
                return f < ((float) (-this.e));
            case WireMessage.WIRE_CHAT /*1*/:
                if (f <= ((float) this.e)) {
                    return false;
                }
                return true;
            default:
                return super.a(f);
        }
    }

    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
    }

    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    public void a(Configuration configuration) {
        this.d = configuration.orientation;
    }
}
