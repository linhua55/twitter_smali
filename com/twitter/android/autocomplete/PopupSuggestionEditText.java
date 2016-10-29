package com.twitter.android.autocomplete;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import bct;
import bdd;
import com.twitter.internal.android.widget.DropDownListView;
import defpackage.cgu;

/* compiled from: Twttr */
public class PopupSuggestionEditText<T, S> extends ListViewSuggestionEditText<T, S> implements OnDismissListener {
    private final PopupWindow c;
    private final boolean d;
    private final boolean e;
    private final int f;
    private final int g;
    private boolean h;

    public PopupSuggestionEditText(Context context) {
        this(context, null);
    }

    public PopupSuggestionEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.popupSuggestionEditTextStyle);
    }

    public PopupSuggestionEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.PopupSuggestionEditText, i, 0);
        this.f = obtainStyledAttributes.getDimensionPixelOffset(bdd.PopupSuggestionEditText_popupMenuXOffset, 0);
        this.g = obtainStyledAttributes.getDimensionPixelOffset(bdd.PopupSuggestionEditText_popupMenuYOffset, 0);
        this.e = obtainStyledAttributes.getBoolean(bdd.PopupSuggestionEditText_showFullScreen, false);
        this.d = obtainStyledAttributes.getBoolean(bdd.PopupSuggestionEditText_showAsDropdown, true);
        DropDownListView dropDownListView = new DropDownListView(context, null, bct.popupSuggestionEditListStyle);
        super.setListView(dropDownListView);
        PopupWindow popupWindow = new PopupWindow(context, attributeSet, 16843519);
        popupWindow.setSoftInputMode(16);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setContentView(dropDownListView);
        popupWindow.setOnDismissListener(this);
        this.c = popupWindow;
        obtainStyledAttributes.recycle();
    }

    public void setListView(ListView listView) {
        throw new UnsupportedOperationException("You don't need to set ListView manually");
    }

    public boolean a() {
        return this.c.isShowing();
    }

    public void onDismiss() {
        if (this.b.getCount() > 0) {
            c();
        }
    }

    protected boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (a()) {
            d();
        }
        return frame;
    }

    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z) {
            c();
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z) {
            c();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.h) {
            d();
        }
    }

    public void setVisibility(int i) {
        super.setVisibility(i);
        if (this.h && i == 0) {
            d();
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        super.onItemClick(adapterView, view, i, j);
        c();
    }

    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (i == 4 && a()) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                getKeyDispatcherState().startTracking(keyEvent, this);
                return true;
            } else if (keyEvent.getAction() == 1) {
                getKeyDispatcherState().handleUpEvent(keyEvent);
                if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    c();
                    return true;
                }
            }
        }
        return super.onKeyPreIme(i, keyEvent);
    }

    protected boolean a(boolean z, int i) {
        if (z) {
            this.c.setInputMethodMode(2);
        } else {
            boolean z2;
            if (this.c.isAboveAnchor()) {
                z2 = false;
            } else {
                z2 = true;
            }
            int selectedItemPosition = this.a.getSelectedItemPosition();
            if (z2 && i == 20 && selectedItemPosition == this.b.getCount()) {
                return true;
            }
            if (!z2 && i == 19 && selectedItemPosition == 0) {
                return true;
            }
        }
        return false;
    }

    protected boolean a(T t, cgu<S> cgu_S) {
        if (!super.a((Object) t, (cgu) cgu_S)) {
            return false;
        }
        if (cgu_S.aU_() > 0) {
            d();
        } else {
            this.c.dismiss();
            this.h = false;
        }
        return true;
    }

    private void d() {
        if (getWindowVisibility() == 0 && getVisibility() == 0) {
            int width = this.e ? getRootView().getWidth() : getWidth();
            PopupWindow popupWindow = this.c;
            if (!popupWindow.isShowing()) {
                popupWindow.setWidth(width);
                popupWindow.setWindowLayoutMode(0, -2);
                popupWindow.setInputMethodMode(1);
                if (this.d) {
                    popupWindow.showAsDropDown(this, this.f, this.g);
                } else {
                    popupWindow.setWindowLayoutMode(0, 0);
                    Rect rect = new Rect();
                    getWindowVisibleDisplayFrame(rect);
                    int[] iArr = new int[2];
                    getLocationInWindow(iArr);
                    popupWindow.setHeight(iArr[1] - rect.top);
                    popupWindow.showAsDropDown(this, this.f, this.g);
                }
            } else if (this.d) {
                popupWindow.update(this, this.f, this.g, width, 0);
            }
            this.a.setSelectionAfterHeaderView();
            this.h = false;
            return;
        }
        this.h = true;
    }
}
