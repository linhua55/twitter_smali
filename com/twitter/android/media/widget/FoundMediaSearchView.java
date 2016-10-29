package com.twitter.android.media.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.twitter.android.autocomplete.PopupSuggestionEditText;
import com.twitter.android.mx;
import tl;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class FoundMediaSearchView extends PopupSuggestionEditText<String, String> {
    private int c;
    private int d;
    private ae e;
    private Drawable[] f;
    private Drawable[] g;
    private Drawable[] h;

    public FoundMediaSearchView(Context context) {
        super(context);
        this.c = 0;
        this.d = -1;
    }

    public FoundMediaSearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 0;
        this.d = -1;
    }

    public FoundMediaSearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 0;
        this.d = -1;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setTokenizer(new tl());
        setAdapter(new ac(this, getContext()));
        setSuggestionProvider(new af(this));
        setSelection(getText().length());
        this.f = getCompoundDrawables();
        this.g = new Drawable[this.f.length];
        System.arraycopy(this.f, 0, this.g, 0, this.f.length);
        this.g[getClearDrawableIndex()] = null;
        a(getText().length());
        addTextChangedListener(new ad(this));
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.e == null) {
            return super.onTouchEvent(motionEvent);
        }
        boolean z;
        switch (motionEvent.getActionMasked()) {
            case mx.View_android_theme /*0*/:
                int clearDrawableIndex = getClearDrawableIndex();
                if (!a(motionEvent, clearDrawableIndex)) {
                    this.d = -1;
                    z = false;
                    break;
                }
                this.d = clearDrawableIndex;
                z = true;
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                if (!a(motionEvent, this.d)) {
                    z = false;
                    break;
                }
                this.e.a(this);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        if (z || super.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    public void setOnClearClickListener(ae aeVar) {
        this.e = aeVar;
    }

    public void setDismissButtonStyle(int i) {
        this.c = i;
        Editable text = getText();
        a(text != null ? text.length() : 0);
    }

    void a(int i) {
        Drawable[] drawableArr = (this.c == 1 || i > 0) ? this.f : this.g;
        if (drawableArr != this.h) {
            this.h = drawableArr;
            setCompoundDrawables(drawableArr[0], drawableArr[1], drawableArr[2], drawableArr[3]);
        }
    }

    private int getClearDrawableIndex() {
        if (VERSION.SDK_INT < 17 || getResources().getConfiguration().getLayoutDirection() == 0) {
            return 2;
        }
        return 0;
    }

    private boolean a(MotionEvent motionEvent, int i) {
        boolean z = true;
        if (i != 0 && i != 2) {
            return false;
        }
        int y = (int) motionEvent.getY();
        if (y < 0 || y > getHeight()) {
            return false;
        }
        Drawable drawable = this.h[i];
        if (drawable == null) {
            return false;
        }
        y = drawable.getBounds().width();
        int x = (int) motionEvent.getX();
        switch (i) {
            case mx.View_android_theme /*0*/:
                if (x > (y + getPaddingLeft()) + getCompoundPaddingLeft()) {
                    z = false;
                }
                return z;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (x < ((getWidth() - getPaddingRight()) - y) - getCompoundPaddingRight()) {
                    z = false;
                }
                return z;
            default:
                return false;
        }
    }
}
