package com.twitter.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.nx;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.p;
import com.twitter.app.common.list.t;
import com.twitter.library.service.x;
import com.twitter.library.widget.ObservableScrollView;
import com.twitter.library.widget.w;
import defpackage.bdl;

/* compiled from: Twttr */
public abstract class ScrollingHeaderListFragment<T, A extends bdl<T>> extends TwitterListFragment<T, A> implements nx, p, w {
    protected int N;
    protected int O;
    protected int P;
    protected int Q;
    protected int R;
    protected boolean S;
    private final boolean a;
    private View b;
    private View c;
    private View d;
    private View e;
    private ObservableScrollView f;
    private int g;
    private boolean h;
    private boolean i;
    private final OnGlobalLayoutListener j;
    private int k;

    public ScrollingHeaderListFragment() {
        this.a = p();
        this.j = new en(this);
        this.k = -1;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.a) {
            h C = C();
            Context activity = getActivity();
            Resources resources = activity.getResources();
            this.N = R_();
            this.g = resources.getDisplayMetrics().heightPixels;
            this.b = new View(activity);
            this.c = new View(activity);
            this.b.setLayoutParams(new LayoutParams(-1, Math.max(this.N, this.O), -1));
            this.P = C.b("fragment_page_number");
            this.h = resources.getConfiguration().orientation != 2;
        }
    }

    public void m(int i) {
        this.P = i;
    }

    protected int R_() {
        return getActivity().getResources().getDimensionPixelSize(2131690233);
    }

    protected void a(t tVar) {
        super.a(tVar);
        if (this.a) {
            tVar.d(Z() ? 2130969368 : 2130969366).f(tVar.d() ? 2130969064 : 2130969367);
        }
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        if (a != null && this.a) {
            k ap = ap();
            View view = ap.b;
            if (view != null) {
                this.f = view instanceof ObservableScrollView ? (ObservableScrollView) view : (ObservableScrollView) a.findViewById(2131952829);
                this.d = a.findViewById(2131952830);
                ((LinearLayout.LayoutParams) this.d.getLayoutParams()).height = this.O;
                this.e = a.findViewById(2131952831);
                this.f.setObservableScrollViewListener(this);
                this.Q = ap.a.getDividerHeight();
            }
            ap.a((p) this);
        }
        return a;
    }

    protected boolean p() {
        return false;
    }

    protected boolean Z() {
        return false;
    }

    public View K() {
        return this.f;
    }

    protected void aa() {
        if (this.h) {
            int height = this.f.getHeight();
            int i = this.O - this.N;
            int height2 = this.f.getChildAt(0).getHeight();
            int i2 = this.e.getLayoutParams().height;
            height = Math.max(0, ((height + i2) + i) - height2);
            if (i2 != height) {
                this.e.getLayoutParams().height = height;
                this.e.requestLayout();
            }
        }
        this.f.post(new eo(this));
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        ab();
    }

    protected void ab() {
        if (this.a && ap().i()) {
            if (this.f.getHeight() == 0 || this.f.getChildAt(0).getHeight() == 0) {
                this.f.getViewTreeObserver().addOnGlobalLayoutListener(this.j);
            } else {
                aa();
            }
        }
        this.i = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
        if (this.a) {
            ListView listView = ap().a;
            listView.addHeaderView(this.b, null, false);
            listView.addFooterView(this.c, null, false);
        }
        super.onViewCreated(view, bundle);
    }

    private void a(int i) {
        if (this.a) {
            if (this.O != i) {
                if (this.b != null) {
                    this.b.setLayoutParams(new LayoutParams(-1, i));
                }
                if (this.d != null) {
                    this.d.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
                }
                this.O = i;
            }
            View view = an() ? ap().c : null;
            if (view != null) {
                view.setPadding(0, (this.O - this.N) + this.R, 0, 0);
            }
        }
    }

    public void d(int i) {
        if (this.a) {
            k ap = ap();
            int firstVisiblePosition = ap.a.getFirstVisiblePosition();
            if (firstVisiblePosition < 1) {
                return;
            }
            if (firstVisiblePosition > 15) {
                ap.a(1, i);
                return;
            }
            ap.a.smoothScrollToPositionFromTop(1, i);
            this.k = i;
        }
    }

    public void a(int i, int i2) {
        if (this.a) {
            this.R = i2;
            a(i);
            if (an()) {
                k ap = ap();
                ListView listView = ap.a;
                if (listView.getMeasuredHeight() == 0) {
                    return;
                }
                int i3;
                if (ap.i()) {
                    i3 = -i2;
                    if (this.i) {
                        this.f.scrollTo(this.f.getScrollX(), i3);
                    }
                } else if (!this.S && ac()) {
                    ap.a(1, i2 + i);
                } else if (i2 + i > this.N) {
                    ap.a(1, i2 + i);
                } else {
                    int i4;
                    i3 = listView.getFirstVisiblePosition();
                    View childAt = listView.getChildAt(0);
                    if (i3 < 1 || childAt == null) {
                        i4 = this.N;
                        i3 = 1;
                    } else {
                        i4 = childAt.getTop();
                    }
                    ap.a(i3, i4);
                }
            }
        }
    }

    protected boolean ac() {
        ListView listView = ap().a;
        int count = listView.getCount();
        int count2 = listView.getAdapter().getCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int lastVisiblePosition = listView.getLastVisiblePosition();
        boolean z = false;
        if (lastVisiblePosition > 0 && count > 1 && (lastVisiblePosition - firstVisiblePosition) + 1 >= count2) {
            this.c.setLayoutParams(new LayoutParams(-1, this.g - ((listView.getChildAt(1).getHeight() * (count - 2)) + (this.N * 2)), -1));
            z = true;
        }
        this.S = true;
        return z;
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        if (i <= 1 && this.a && i2 > 0 && this.O > 0) {
            int top;
            if (i == 0) {
                View childAt = absListView.getChildAt(0);
                if (childAt != null) {
                    top = childAt.getTop();
                    top = (-top) - (top == 0 ? 0 : this.Q);
                } else {
                    top = 0;
                }
            } else {
                top = this.O;
            }
            int max = Math.max(-top, -(this.O - this.N));
            FragmentActivity activity = getActivity();
            if (activity instanceof ScrollingHeaderActivity) {
                if (this.S) {
                    this.R = max;
                    ((ScrollingHeaderActivity) activity).b(max, this.P);
                } else {
                    absListView.post(new ep(this));
                }
            }
        }
        return false;
    }

    public boolean a(AbsListView absListView, int i) {
        if (this.k != -1 && i == 0) {
            int i2;
            if (absListView.getFirstVisiblePosition() > 1) {
                i2 = 1;
            } else {
                boolean z = false;
            }
            if (i2 != 0) {
                ap().a(1, this.k);
            }
            this.k = -1;
        }
        return false;
    }

    public void a(ObservableScrollView observableScrollView, int i, int i2, int i3, int i4) {
        if (ap().i() && ah()) {
            int max = Math.max(-i2, -(this.O - this.N));
            FragmentActivity activity = getActivity();
            if (activity instanceof ScrollingHeaderActivity) {
                this.R = max;
                ((ScrollingHeaderActivity) activity).b(max, this.P);
            }
        }
    }

    public void a(ObservableScrollView observableScrollView) {
    }

    public void b(ObservableScrollView observableScrollView) {
    }

    public void b(ObservableScrollView observableScrollView, int i, int i2, int i3, int i4) {
    }
}
