package com.twitter.library.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.Checkable;
import com.twitter.ui.widget.TintableImageView;
import com.twitter.util.aj;
import defpackage.bdc;

/* compiled from: Twttr */
public class ActionButton extends TintableImageView implements Checkable {
    private static final int[] a;
    private boolean b;
    private final String c;
    private final String d;
    private final String e;
    private String f;

    static {
        a = new int[]{16842912};
    }

    public ActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = context.getString(bdc.content_description_follow_button);
        this.c = context.getString(bdc.content_description_unfollow_button);
        this.e = context.getString(bdc.default_user_value);
    }

    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.b) {
            mergeDrawableStates(onCreateDrawableState, a);
        }
        a();
        return onCreateDrawableState;
    }

    public void setChecked(boolean z) {
        if (this.b != z) {
            this.b = z;
            refreshDrawableState();
            a();
        }
    }

    public boolean isChecked() {
        return this.b;
    }

    public void toggle() {
        setChecked(!this.b);
    }

    public void a(int i) {
        if (i == 0) {
            setVisibility(8);
            return;
        }
        setImageResource(i);
        setVisibility(0);
    }

    public void getHitRect(Rect rect) {
        super.getHitRect(rect);
        if (rect != null) {
            int i = (int) (getResources().getDisplayMetrics().density * 24.0f);
            rect.top -= i;
            rect.right += i;
            rect.bottom += i / 2;
            rect.left -= i;
        }
    }

    public void setUnclickableResource(int i) {
        if (i != 0) {
            setVisibility(0);
            setImageResource(i);
            setBackgroundDrawable(null);
            setClickable(false);
            return;
        }
        setVisibility(8);
    }

    public void setUsername(String str) {
        this.f = str;
        a();
    }

    public void a() {
        String str = this.b ? this.c : this.d;
        if (str != null) {
            String str2 = aj.b(this.f) ? this.f : this.e;
            setContentDescription(String.format(str, new Object[]{str2}));
        }
    }
}
