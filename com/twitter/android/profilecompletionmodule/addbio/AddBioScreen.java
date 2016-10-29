package com.twitter.android.profilecompletionmodule.addbio;

import android.content.Context;
import android.support.annotation.StringRes;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout.LayoutParams;
import com.twitter.android.profilecompletionmodule.BaseProfileStepScreen;
import com.twitter.internal.android.widget.FlowLayoutManager;
import com.twitter.internal.android.widget.aa;
import com.twitter.library.widget.ObservableScrollView;
import com.twitter.library.widget.w;
import com.twitter.ui.widget.TwitterEditText;
import defpackage.bdo;

/* compiled from: Twttr */
public class AddBioScreen extends BaseProfileStepScreen<b> implements OnGlobalLayoutListener, w {
    private TwitterEditText a;
    private RecyclerView b;
    private ObservableScrollView c;
    private View d;

    public AddBioScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (TwitterEditText) findViewById(2131952417);
        this.a.addTextChangedListener(new d(this));
        int dimensionPixelSize = getResources().getDimensionPixelSize(2131690078);
        this.b = (RecyclerView) findViewById(2131952636);
        this.b.setLayoutManager(new FlowLayoutManager());
        this.b.addItemDecoration(new bdo(new aa(0, dimensionPixelSize, dimensionPixelSize, 0)));
        this.c = (ObservableScrollView) findViewById(2131951949);
        this.c.setObservableScrollViewListener(this);
        this.c.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.d = findViewById(2131953133);
    }

    @StringRes
    protected int getTitle() {
        return 2131363392;
    }

    @StringRes
    protected int getSubtitle() {
        return 2131363391;
    }

    protected int getBioSelection() {
        return this.a.getSelectionEnd();
    }

    protected void setBioCursor(int i) {
        this.a.setSelection(i);
    }

    protected void setBioText(String str) {
        if (!this.a.getText().toString().equals(str)) {
            this.a.setText(str);
        }
    }

    protected boolean a() {
        return this.a.f();
    }

    protected void setPillsAdapter(Adapter adapter) {
        if (adapter != null) {
            this.b.setAdapter(adapter);
            this.b.setVisibility(0);
        } else {
            this.b.setVisibility(8);
        }
        this.b.setLayoutFrozen(true);
    }

    public void onGlobalLayout() {
        a(this.c, -1, this.c.getScrollY(), -1, -1);
        if (this.d.getMeasuredHeight() != this.a.getMeasuredHeight()) {
            this.d.setLayoutParams(new LayoutParams(-1, this.a.getMeasuredHeight()));
        }
    }

    public void a(ObservableScrollView observableScrollView, int i, int i2, int i3, int i4) {
        this.a.setTranslationY((float) Math.max(this.d.getTop(), i2));
    }

    public void a(ObservableScrollView observableScrollView) {
    }

    public void b(ObservableScrollView observableScrollView) {
    }

    public void b(ObservableScrollView observableScrollView, int i, int i2, int i3, int i4) {
    }

    protected void onDetachedFromWindow() {
        this.c.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        super.onDetachedFromWindow();
    }
}
