package com.twitter.android.smartfollow.followpeople;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListAdapter;
import com.twitter.android.bm;
import com.twitter.android.qo;
import com.twitter.android.smartfollow.BaseSmartFollowScreen;
import com.twitter.android.widget.PinnedHeaderRefreshableListView;
import com.twitter.refresh.widget.a;

/* compiled from: Twttr */
public class FollowPeopleScreen extends BaseSmartFollowScreen<a> implements OnScrollListener {
    private PinnedHeaderRefreshableListView b;

    public FollowPeopleScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = (PinnedHeaderRefreshableListView) findViewById(2131952487);
    }

    protected a getFirstVisibleItem() {
        View childAt;
        PinnedHeaderRefreshableListView pinnedHeaderRefreshableListView = this.b;
        int firstVisiblePosition = pinnedHeaderRefreshableListView.getFirstVisiblePosition();
        int headerViewsCount = pinnedHeaderRefreshableListView.getHeaderViewsCount();
        if (firstVisiblePosition < headerViewsCount) {
            childAt = pinnedHeaderRefreshableListView.getChildAt(headerViewsCount - firstVisiblePosition);
        } else {
            int i = firstVisiblePosition;
            childAt = pinnedHeaderRefreshableListView.getChildAt(0);
            headerViewsCount = i;
        }
        long itemIdAtPosition = pinnedHeaderRefreshableListView.getItemIdAtPosition(headerViewsCount);
        if (childAt != null) {
            firstVisiblePosition = childAt.getTop();
        } else {
            firstVisiblePosition = 0;
        }
        return new a(headerViewsCount, itemIdAtPosition, firstVisiblePosition);
    }

    @SuppressLint({"NewApi"})
    protected void a(qo qoVar, a aVar) {
        this.b.addHeaderView(a(), "FollowPeoplePresenterHeader", true);
        this.b.setAdapter((ListAdapter) qoVar);
        this.b.setHeaderDividersEnabled(true);
        this.b.setOnScrollListener(this);
        View a = qoVar.a(2130969408, this.b);
        this.b.a(a, 0);
        qoVar.a(a);
        this.b.setRedrawOnDirtyHeaderView(a.findViewById(2131953264));
        this.b.setSelectionFromTop(aVar.a, aVar.c);
    }

    private View a() {
        Context context = getContext();
        return bm.a(context, context.getString(2131363815), context.getString(2131363814));
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.b.a(i);
    }
}
