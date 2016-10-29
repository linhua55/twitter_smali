package com.twitter.android.smartfollow.interestpicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.StringRes;
import android.support.v7.widget.RecyclerView;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ProgressBar;
import com.twitter.android.bm;
import com.twitter.android.interestpicker.ah;
import com.twitter.android.interestpicker.ap;
import com.twitter.android.interestpicker.m;
import com.twitter.android.interestpicker.q;
import com.twitter.android.smartfollow.BaseSmartFollowScreen;
import com.twitter.internal.android.widget.FlowLayoutManager;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.util.collection.n;
import com.twitter.util.d;
import com.twitter.util.object.e;
import com.twitter.util.ui.r;
import defpackage.bdn;
import defpackage.bdo;
import java.util.List;

/* compiled from: Twttr */
public class InterestPickerScreen extends BaseSmartFollowScreen<a> implements OnGlobalLayoutListener, ah {
    private RecyclerView b;
    private PopupEditText c;
    private View d;
    private ProgressBar e;
    private View f;
    private boolean g;
    private View h;
    private View i;
    private boolean j;
    private boolean k;

    public InterestPickerScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        int i = 4;
        super.onFinishInflate();
        Resources resources = getResources();
        Context context = getContext();
        this.b = (RecyclerView) e.a(findViewById(2131952636));
        this.b.setLayoutManager(new FlowLayoutManager());
        int dimensionPixelSize = resources.getDimensionPixelSize(2131690078);
        this.b.addItemDecoration(new bdo(new q(0, dimensionPixelSize, 0, dimensionPixelSize)));
        this.e = (ProgressBar) e.a(findViewById(2131952050));
        this.f = (View) e.a(findViewById(2131952637));
        this.f.findViewById(2131952570).setOnClickListener(this);
        this.d = LayoutInflater.from(context).inflate(2130968929, this.b, false);
        this.c = (PopupEditText) e.a(this.d.findViewById(2131952638));
        this.c.setFilters(new InputFilter[]{new LengthFilter(25)});
        this.h = bm.a(context, resources.getString(2131362826));
        this.i = (View) e.a(findViewById(2131952687));
        ProgressBar progressBar = this.e;
        if (this.g) {
            dimensionPixelSize = 0;
        } else {
            dimensionPixelSize = 4;
        }
        progressBar.setVisibility(dimensionPixelSize);
        RecyclerView recyclerView = this.b;
        if (!this.g) {
            i = 0;
        }
        recyclerView.setVisibility(i);
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    public void setSeamfulSignupHeader(@StringRes int i) {
    }

    public void setSignupHeader(@StringRes int i) {
    }

    public void setupSearchController(ap apVar) {
        apVar.a(this.c);
        this.c.setOnClickListener(this);
    }

    public void setAdapterAndAttachHeaders(m mVar) {
        this.b.setAdapter(mVar);
        if (mVar != null) {
            n d = n.d();
            d.c(this.h);
            if (this.k) {
                this.h.setPadding(this.h.getPaddingLeft(), this.h.getPaddingTop(), this.h.getPaddingRight(), getResources().getDimensionPixelSize(2131690078));
            } else {
                d.c(this.d);
            }
            mVar.a((List) d.q());
        }
    }

    public void setSearchHint(@StringRes int i) {
        this.c.setHint(i);
    }

    public void a(boolean z) {
        boolean z2 = false;
        if (this.e == null || this.b == null) {
            if (!z) {
                z2 = true;
            }
            this.g = z2;
            return;
        }
        if (z) {
            this.e.setVisibility(0);
            this.b.setVisibility(4);
        } else {
            d.b(this.b);
            d.a(this.e);
        }
        this.f.setVisibility(8);
    }

    public void a() {
        this.e.setVisibility(4);
        this.b.setVisibility(4);
        this.f.setVisibility(0);
    }

    public void a(long j) {
        ((a) getPresenter()).b(j);
    }

    public void onClick(View view) {
        int id = view.getId();
        a aVar = (a) getPresenter();
        if (id == 2131952570) {
            aVar.w();
        } else if (id == 2131952638) {
            aVar.u();
        } else {
            super.onClick(view);
        }
    }

    protected void onDetachedFromWindow() {
        r.a(this, this);
        super.onDetachedFromWindow();
    }

    public void onGlobalLayout() {
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDisplayMetrics().heightPixels - resources.getDimensionPixelSize(2131690566);
        int height = getHeight();
        boolean z = height > 0 && height < dimensionPixelSize;
        if (z != this.j) {
            c(z);
        }
    }

    private void c(boolean z) {
        this.j = z;
        if (z) {
            this.b.scrollToPosition(((bdn) this.b.getAdapter()).b().indexOf(this.d));
            this.i.setVisibility(8);
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new c(this), 100);
    }

    public void setInterestPickerV11Enabled(boolean z) {
        this.k = z;
    }
}
