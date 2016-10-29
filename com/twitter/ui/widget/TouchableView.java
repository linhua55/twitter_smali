package com.twitter.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.twitter.util.ui.a;
import com.twitter.util.ui.r;
import java.util.ArrayList;
import java.util.List;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class TouchableView extends ViewGroup {
    private final List<aj> a;
    private long b;

    static /* synthetic */ long a(TouchableView touchableView, long j) {
        long j2 = touchableView.b | j;
        touchableView.b = j2;
        return j2;
    }

    static /* synthetic */ long b(TouchableView touchableView, long j) {
        long j2 = touchableView.b & j;
        touchableView.b = j2;
        return j2;
    }

    protected TouchableView(Context context) {
        this(context, null);
    }

    protected TouchableView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected TouchableView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new ArrayList();
        setWillNotDraw(false);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (a()) {
            List<aj> list = this.a;
            int action = motionEvent.getAction() & 255;
            if (!isEnabled()) {
                if (action == 1) {
                    c();
                }
                return false;
            } else if (!a(motionEvent)) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                boolean z;
                boolean z2;
                switch (action) {
                    case p.View_android_theme /*0*/:
                        z = false;
                        for (aj ajVar : list) {
                            if (ajVar.a(x, y)) {
                                if (r.a(this)) {
                                    ajVar.a();
                                    postDelayed(ajVar.d(), (long) ViewConfiguration.getTapTimeout());
                                } else {
                                    ajVar.a(true);
                                }
                                z2 = true;
                            } else {
                                ajVar.a(false);
                                z2 = z;
                            }
                            z = z2;
                        }
                        if (z) {
                            return true;
                        }
                        break;
                    case p.View_android_focusable /*1*/:
                        for (aj ajVar2 : list) {
                            boolean c = ajVar2.c();
                            if (!ajVar2.b()) {
                                if (c) {
                                }
                            }
                            if (c) {
                                ajVar2.a(true);
                            }
                            if (!post(ajVar2.f())) {
                                ajVar2.g();
                            }
                            if (c) {
                                postDelayed(ajVar2.e(), (long) ViewConfiguration.getPressedStateDuration());
                            } else if (!post(ajVar2.e())) {
                                ajVar2.a(false);
                            }
                            ajVar2.h();
                            return true;
                        }
                        break;
                    case p.View_paddingStart /*2*/:
                        z = false;
                        for (aj ajVar22 : list) {
                            if (ajVar22.a(x, y)) {
                                z2 = z;
                            } else {
                                ajVar22.h();
                                ajVar22.a(false);
                                z2 = true;
                            }
                            z = z2;
                        }
                        if (z) {
                            return true;
                        }
                        break;
                    case p.View_paddingEnd /*3*/:
                        c();
                        break;
                }
            } else {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z) {
            c();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        c();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    protected boolean a() {
        return !a.a();
    }

    protected boolean a(MotionEvent motionEvent) {
        return false;
    }

    protected int[] onCreateDrawableState(int i) {
        if (this.a == null) {
            return super.onCreateDrawableState(i);
        }
        int[] onCreateDrawableState = super.onCreateDrawableState(this.a.size() + i);
        for (aj ajVar : this.a) {
            if (ajVar.b()) {
                ajVar.a(onCreateDrawableState);
            }
        }
        return onCreateDrawableState;
    }

    protected void b() {
        c();
        this.a.clear();
    }

    protected void a(aj ajVar) {
        if (!this.a.contains(ajVar)) {
            this.a.add(ajVar);
        }
    }

    protected void b(aj ajVar) {
        this.a.remove(ajVar);
    }

    private void c() {
        for (aj ajVar : this.a) {
            ajVar.a(false);
            ajVar.i();
        }
    }
}
