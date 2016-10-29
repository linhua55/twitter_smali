package com.facebook.drawee.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import defpackage.bt;
import defpackage.dk;
import dl;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class DraweeView<DH extends dl> extends ImageView {
    private c<DH> a;

    public DraweeView(Context context) {
        super(context);
        a(context);
    }

    public DraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public DraweeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.a = c.a(null, context);
    }

    public void setHierarchy(DH dh) {
        this.a.a((dl) dh);
        super.setImageDrawable(this.a.f());
    }

    public DH getHierarchy() {
        return this.a.e();
    }

    @Nullable
    public Drawable getTopLevelDrawable() {
        return this.a.f();
    }

    public void setController(@Nullable dk dkVar) {
        this.a.a(dkVar);
        super.setImageDrawable(this.a.f());
    }

    @Nullable
    public dk getController() {
        return this.a.d();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.a.b();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.a.c();
    }

    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        this.a.c();
    }

    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        this.a.b();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.a.a(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Deprecated
    public void setImageDrawable(Drawable drawable) {
        this.a.a(null);
        super.setImageDrawable(drawable);
    }

    @Deprecated
    public void setImageBitmap(Bitmap bitmap) {
        this.a.a(null);
        super.setImageBitmap(bitmap);
    }

    @Deprecated
    public void setImageResource(int i) {
        this.a.a(null);
        super.setImageResource(i);
    }

    @Deprecated
    public void setImageURI(Uri uri) {
        this.a.a(null);
        super.setImageURI(uri);
    }

    public String toString() {
        return bt.a((Object) this).a("holder", this.a != null ? this.a.toString() : "<no holder set>").toString();
    }
}
