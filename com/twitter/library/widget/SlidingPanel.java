package com.twitter.library.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import bcy;
import bdd;
import defpackage.bcx;

/* compiled from: Twttr */
public class SlidingPanel extends SlidingUpPanelLayout {
    private final int a;
    private final int b;
    private View c;

    public /* bridge */ /* synthetic */ void a(int i) {
        super.a(i);
    }

    public /* bridge */ /* synthetic */ boolean a() {
        return super.a();
    }

    public /* bridge */ /* synthetic */ void b(int i) {
        super.b(i);
    }

    public /* bridge */ /* synthetic */ boolean b() {
        return super.b();
    }

    public /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    public /* bridge */ /* synthetic */ void computeScroll() {
        super.computeScroll();
    }

    public /* bridge */ /* synthetic */ boolean d() {
        return super.d();
    }

    public /* bridge */ /* synthetic */ boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public /* bridge */ /* synthetic */ void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public /* bridge */ /* synthetic */ LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return super.generateLayoutParams(attributeSet);
    }

    public /* bridge */ /* synthetic */ int getCoveredFadeColor() {
        return super.getCoveredFadeColor();
    }

    public /* bridge */ /* synthetic */ int getPanelPeekHeight() {
        return super.getPanelPeekHeight();
    }

    public /* bridge */ /* synthetic */ int getPanelPreviewHeight() {
        return super.getPanelPreviewHeight();
    }

    public /* bridge */ /* synthetic */ int getPanelState() {
        return super.getPanelState();
    }

    public /* bridge */ /* synthetic */ int getPossibleStates() {
        return super.getPossibleStates();
    }

    public /* bridge */ /* synthetic */ boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public /* bridge */ /* synthetic */ void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
    }

    public /* bridge */ /* synthetic */ void setClipChildren(boolean z) {
        super.setClipChildren(z);
    }

    public /* bridge */ /* synthetic */ void setCoveredFadeColor(int i) {
        super.setCoveredFadeColor(i);
    }

    public /* bridge */ /* synthetic */ void setDragView(View view) {
        super.setDragView(view);
    }

    public /* bridge */ /* synthetic */ void setFadeMode(int i) {
        super.setFadeMode(i);
    }

    public /* bridge */ /* synthetic */ void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
    }

    @TargetApi(17)
    public /* bridge */ /* synthetic */ void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
    }

    public /* bridge */ /* synthetic */ void setPanelPeekHeight(int i) {
        super.setPanelPeekHeight(i);
    }

    public /* bridge */ /* synthetic */ void setPanelPreviewHeight(int i) {
        super.setPanelPreviewHeight(i);
    }

    public /* bridge */ /* synthetic */ void setPanelSlideListener(ac acVar) {
        super.setPanelSlideListener(acVar);
    }

    public /* bridge */ /* synthetic */ void setPanelVisiblity(int i) {
        super.setPanelVisiblity(i);
    }

    public /* bridge */ /* synthetic */ void setPossiblePanelStates(int i) {
        super.setPossiblePanelStates(i);
    }

    public /* bridge */ /* synthetic */ void setShadowDrawable(Drawable drawable) {
        super.setShadowDrawable(drawable);
    }

    public SlidingPanel(Context context) {
        this(context, null);
    }

    public SlidingPanel(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPanel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.SlidingPanel, i, 0);
        this.a = obtainStyledAttributes.getResourceId(bdd.SlidingPanel_panelHeaderLayoutId, 0);
        this.b = obtainStyledAttributes.getResourceId(bdd.SlidingPanel_panelContentLayoutId, 0);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        if (getChildCount() != 1) {
            throw new IllegalStateException("SlidingPanel must contain only one child");
        }
        addView(LayoutInflater.from(getContext()).inflate(bcy.sliding_panel, null), 1);
        if (this.a != 0) {
            setHeader(this.a);
        }
        if (this.b != 0) {
            setContent(this.b);
        }
        super.onFinishInflate();
    }

    public void setHeader(int i) {
        this.c = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) findViewById(bcx.header_container));
    }

    public View getHeader() {
        return this.c;
    }

    public void setContent(int i) {
        setContent(LayoutInflater.from(getContext()).inflate(i, null));
    }

    public void setContent(View view) {
        ((ViewGroup) findViewById(bcx.sliding_panel_content)).addView(view);
    }
}
