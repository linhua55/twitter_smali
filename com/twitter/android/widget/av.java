package com.twitter.android.widget;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

/* compiled from: Twttr */
class av extends SimpleOnGestureListener {
    final /* synthetic */ MediaStoreItemView a;
    final /* synthetic */ at b;

    av(at atVar, MediaStoreItemView mediaStoreItemView) {
        this.b = atVar;
        this.a = mediaStoreItemView;
    }

    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    public void onLongPress(MotionEvent motionEvent) {
        if (this.a.isEnabled()) {
            if (this.b.o != null) {
                this.b.o.b(this.a, this.a.getEditableMedia());
            }
            if (this.b.m != null) {
                this.a.startAnimation(this.b.m);
            }
        }
    }

    public void onShowPress(MotionEvent motionEvent) {
        if (this.a.isEnabled() && this.b.l != null) {
            this.a.startAnimation(this.b.l);
        }
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        if (!this.a.isEnabled()) {
            return false;
        }
        if (this.b.n != null) {
            this.b.n.a(this.a, this.a.getEditableMedia());
        }
        if (this.b.m != null) {
            this.a.startAnimation(this.b.m);
        }
        return true;
    }
}
