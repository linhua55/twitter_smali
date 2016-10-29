package com.facebook.drawee.generic;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.drawable.f;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.drawable.s;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class b extends f implements r {
    @Nullable
    private s a;

    public b(Drawable drawable) {
        super(drawable);
    }

    public int getIntrinsicWidth() {
        return -1;
    }

    public int getIntrinsicHeight() {
        return -1;
    }

    public void a(@Nullable s sVar) {
        this.a = sVar;
    }

    public boolean setVisible(boolean z, boolean z2) {
        if (this.a != null) {
            this.a.a(z);
        }
        return super.setVisible(z, z2);
    }

    @SuppressLint({"WrongCall"})
    public void draw(Canvas canvas) {
        if (isVisible()) {
            if (this.a != null) {
                this.a.a();
            }
            super.draw(canvas);
        }
    }
}
