package com.twitter.ui.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import defpackage.cse;

/* compiled from: Twttr */
public class TwitterSelection extends ViewGroup {
    private final OnItemClickListener a;
    private au b;
    private v c;
    private final aw d;
    private final int e;
    private final boolean f;
    private int g;

    @VisibleForTesting
    /* compiled from: Twttr */
    class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        public final int a;

        static {
            CREATOR = new av();
        }

        SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.a = i;
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
        }

        public String toString() {
            return TwitterSelection.class.getSimpleName() + ".SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + "}";
        }
    }

    public TwitterSelection(Context context) {
        this(context, null);
    }

    public TwitterSelection(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwitterSelection(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new ar(this);
        this.g = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cse.TwitterSelection, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(cse.TwitterSelection_displayLayout, 0);
        if (resourceId > 0) {
            LayoutInflater.from(context).inflate(resourceId, this);
        }
        this.e = obtainStyledAttributes.getInt(cse.TwitterSelection_selectionMode, 0);
        this.f = obtainStyledAttributes.getBoolean(cse.TwitterSelection_showPopupOnClick, true);
        if (this.e == 0) {
            this.d = new as(this, context, obtainStyledAttributes.getResourceId(cse.TwitterSelection_dialogTheme, 0), obtainStyledAttributes.getResourceId(cse.TwitterSelection_listLayout, 17367060));
        } else {
            resourceId = obtainStyledAttributes.getResourceId(cse.TwitterSelection_dropDownAnchor, 0);
            int resourceId2 = obtainStyledAttributes.getResourceId(cse.TwitterSelection_dropDownWidth, -2);
            int resourceId3 = obtainStyledAttributes.getResourceId(cse.TwitterSelection_dropDownHeight, -2);
            aw atVar = new at(this, context, attributeSet, resourceId);
            atVar.setWidth(resourceId2);
            atVar.setHeight(resourceId3);
            this.d = atVar;
        }
        this.d.setOnItemClickListener(this.a);
        obtainStyledAttributes.recycle();
        c();
    }

    public boolean performClick() {
        boolean performClick = super.performClick();
        if (performClick || !this.f) {
            return performClick;
        }
        a();
        return true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f;
    }

    private void c() {
        setClickable(true);
        setFocusable(true);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        getDisplayLayout().layout(0, 0, i3 - i, i4 - i2);
    }

    protected void onMeasure(int i, int i2) {
        View displayLayout = getDisplayLayout();
        displayLayout.measure(i, i2);
        setMeasuredDimension(displayLayout.getMeasuredWidth(), displayLayout.getMeasuredHeight());
    }

    public int getBaseline() {
        return getDisplayLayout().getBaseline();
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.g);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.a != -1) {
            setSelectedPosition(savedState.a);
        }
    }

    public void a() {
        if (!this.d.isShowing()) {
            this.d.show();
        }
    }

    public void b() {
        this.d.dismiss();
    }

    public View getDisplayLayout() {
        if (getChildCount() <= 1) {
            return getChildAt(0);
        }
        throw new IllegalStateException(getClass().getSimpleName() + " can only have exactly one child view as displayLayout." + " But now the children count is " + getChildCount());
    }

    public void setSelectionAdapter(v vVar) {
        if (this.c != vVar) {
            v vVar2 = this.c;
            this.c = vVar;
            this.d.setAdapter(vVar);
            if (vVar2 != null || vVar.getCount() <= this.g) {
                this.g = -1;
            }
            b(this.g);
        }
    }

    public v getSelectionAdapter() {
        return this.c;
    }

    public void setOnSelectionChangeListener(au auVar) {
        this.b = auVar;
    }

    public au getOnSelectionChangeListener() {
        return this.b;
    }

    public void setSelectedPosition(int i) {
        if (this.g != i) {
            this.g = i;
            b(i);
            a(i);
        }
    }

    private void a(int i) {
        if (this.b != null) {
            this.b.a(this, i);
        }
    }

    private void b(int i) {
        if (this.c != null) {
            this.c.a(getDisplayLayout(), i);
        }
    }

    public int getSelectedPosition() {
        return this.g;
    }

    public Object getSelectedItem() {
        return this.c != null ? this.c.getItem(this.g) : null;
    }

    @VisibleForTesting
    int getSelectionMode() {
        return this.e;
    }

    public Dialog getDialog() {
        return this.e == 0 ? (Dialog) this.d : null;
    }
}
