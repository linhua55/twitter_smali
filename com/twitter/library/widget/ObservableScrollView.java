package com.twitter.library.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;
import com.twitter.android.mx;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ObservableScrollView extends ScrollView {
    private w a;
    private int b;
    private int c;
    private int d;
    private int e;

    public ObservableScrollView(Context context) {
        super(context);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setObservableScrollViewListener(w wVar) {
        this.a = wVar;
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        this.b = i;
        this.c = i2;
        if (this.a != null) {
            this.a.a(this, i, i2, i3, i4);
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.a != null) {
            this.a.b(this, i, i2, i3, i4);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case mx.View_android_theme /*0*/:
                this.d = this.b;
                this.e = this.c;
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                b();
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (!(this.d == this.b && this.e == this.c)) {
                    a();
                    break;
                }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void a() {
        if (this.a != null) {
            this.a.a(this);
        }
    }

    protected void b() {
        if (this.a != null) {
            this.a.b(this);
        }
    }
}
