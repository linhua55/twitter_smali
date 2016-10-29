package com.twitter.android.av.watchmode;

import android.content.Context;
import android.content.res.Configuration;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.State;
import com.twitter.app.common.inject.c;
import defpackage.cqp;

/* compiled from: Twttr */
public class WatchModeLayoutManager extends LinearLayoutManager implements c, cqp {
    private f a;
    private boolean b;

    public WatchModeLayoutManager(Context context) {
        super(context);
        this.b = false;
        a(context.getResources().getConfiguration());
    }

    public void a(f fVar) {
        this.a = fVar;
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, State state, int i) {
        g gVar = new g(recyclerView.getContext(), this);
        gVar.setTargetPosition(i);
        startSmoothScroll(gVar);
    }

    public void onLayoutChildren(Recycler recycler, State state) {
        super.onLayoutChildren(recycler, state);
        if (this.a != null) {
            this.a.aq_();
        }
    }

    public void a(Configuration configuration) {
        setOrientation(configuration.orientation == 2 ? 0 : 1);
    }

    protected int getExtraLayoutSpace(State state) {
        if (findFirstVisibleItemPosition() == 0) {
            return getHeight();
        }
        return super.getExtraLayoutSpace(state);
    }

    public boolean canScrollHorizontally() {
        if (getOrientation() == 0) {
            return !this.b;
        } else {
            return super.canScrollHorizontally();
        }
    }

    public void e() {
    }

    public void a(float f) {
        this.b = f != 0.0f;
    }
}
