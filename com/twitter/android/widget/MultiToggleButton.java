package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageButton;
import com.twitter.android.mx;
import com.twitter.util.math.b;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class MultiToggleButton extends ImageButton {
    private cs a;
    private int b;
    private boolean c;
    private final CharSequence[] d;
    private final int[] e;
    private final int f;
    private final Set<CharSequence> g;

    public MultiToggleButton(Context context) {
        this(context, null);
    }

    public MultiToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MultiToggleButton(Context context, AttributeSet attributeSet, int i) {
        int i2 = 0;
        super(context, attributeSet, i);
        this.b = -1;
        this.c = true;
        if (isInEditMode()) {
            this.d = new String[]{"0"};
            this.e = new int[]{0};
            this.f = 1;
            this.g = Collections.singleton(this.d[0]);
            return;
        }
        int[] iArr;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.MultiToggleButton, i, 0);
        CharSequence[] textArray = obtainStyledAttributes.getTextArray(0);
        int resourceId = obtainStyledAttributes.getResourceId(1, 0);
        if (resourceId != 0) {
            TypedArray obtainTypedArray = context.getResources().obtainTypedArray(resourceId);
            int[] iArr2 = new int[obtainTypedArray.length()];
            for (resourceId = 0; resourceId < iArr2.length; resourceId++) {
                iArr2[resourceId] = obtainTypedArray.getResourceId(resourceId, 0);
            }
            obtainTypedArray.recycle();
            iArr = iArr2;
        } else {
            iArr = null;
        }
        if (textArray == null || iArr == null || textArray.length != iArr.length || textArray.length <= 0) {
            throw new IllegalArgumentException("Invalid configuration for MultiToggleButton!");
        }
        this.d = textArray;
        this.e = iArr;
        this.f = textArray.length;
        a(0);
        this.g = new HashSet(this.f);
        while (i2 < this.f) {
            this.g.add(this.d[i2]);
            i2++;
        }
        obtainStyledAttributes.recycle();
        setClickable(true);
    }

    public boolean performClick() {
        a();
        return super.performClick();
    }

    public void a() {
        if (!this.g.contains(getCurrentMode()) || this.g.size() != 1) {
            int i = this.b;
            do {
                i = (i + 1) % this.f;
            } while (!this.g.contains(this.d[i]));
            if (a(i) && this.a != null) {
                this.a.a(this, this.d[i]);
            }
        }
    }

    private boolean a(int i) {
        if (i == this.b || i < 0 || i >= this.f) {
            return false;
        }
        setImageResource(this.e[i]);
        this.b = i;
        return true;
    }

    public void setMode(CharSequence charSequence) {
        if (!getCurrentMode().equals(charSequence) && this.g.contains(charSequence)) {
            for (int i = 0; i < this.f; i++) {
                if (this.d[i].equals(charSequence)) {
                    a(i);
                    return;
                }
            }
        }
    }

    public void b() {
        a(b.a(this.b - 1, this.f));
    }

    public CharSequence getCurrentMode() {
        return this.b >= 0 ? this.d[this.b] : TtmlNode.ANONYMOUS_REGION_ID;
    }

    public void a(Collection<CharSequence> collection, CharSequence charSequence) {
        boolean z = false;
        this.g.clear();
        for (int i = 0; i < this.f; i++) {
            Object obj = this.d[i];
            if (collection.contains(obj)) {
                this.g.add(obj);
            }
        }
        if (!this.g.isEmpty()) {
            z = true;
        }
        setAllowed(z);
        if (!z) {
            return;
        }
        if (charSequence == null || !this.g.contains(charSequence)) {
            throw new IllegalArgumentException("New mode is not allowed!");
        }
        setMode(charSequence);
    }

    private void setAllowed(boolean z) {
        super.setEnabled(z);
        setAlpha(z ? 1.0f : 0.5f);
        if (!z) {
            this.b = -1;
        }
        this.c = z;
    }

    public void setEnabled(boolean z) {
        if (this.c) {
            super.setEnabled(z);
        }
    }

    public void setOnToggleListener(cs csVar) {
        this.a = csVar;
    }
}
