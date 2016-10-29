package com.twitter.android.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
class fx implements OnTouchListener {
    final /* synthetic */ TwitterMapFragment a;

    fx(TwitterMapFragment twitterMapFragment) {
        this.a = twitterMapFragment;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case Util.TYPE_DASH /*0*/:
                view.getParent().requestDisallowInterceptTouchEvent(this.a.a);
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                view.getParent().requestDisallowInterceptTouchEvent(!this.a.a);
                break;
        }
        if (this.a.b != null) {
            this.a.b.a(view, motionEvent);
        }
        return false;
    }
}
