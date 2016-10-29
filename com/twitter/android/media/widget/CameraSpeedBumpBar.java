package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.google.android.exoplayer.C;
import com.twitter.android.mx;
import com.twitter.android.util.j;
import com.twitter.util.h;

/* compiled from: Twttr */
public class CameraSpeedBumpBar extends LinearLayout implements OnClickListener {
    private final View a;
    private final View b;
    private final View c;
    private final int d;
    private final int e;
    private j f;

    public CameraSpeedBumpBar(Context context) {
        this(context, null);
    }

    public CameraSpeedBumpBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CameraSpeedBumpBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.CameraSpeedBumpBar, i, 0);
        try {
            this.d = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.e = obtainStyledAttributes.getDimensionPixelSize(1, 0);
            inflate(context, 2130968663, this);
            this.a = findViewById(2131952055);
            this.b = findViewById(2131952056);
            this.c = findViewById(2131952057);
            this.a.setOnClickListener(this);
            this.b.setOnClickListener(this);
            this.c.setOnClickListener(this);
            onConfigurationChanged(getResources().getConfiguration());
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void onClick(View view) {
        if (this.f != null) {
            int i;
            if (view == this.a) {
                i = 1;
            } else if (view == this.b) {
                i = 2;
            } else {
                i = 3;
            }
            this.f.a(i);
        }
    }

    public void a(int i) {
        int i2 = 0;
        h.b(!j.d());
        if (getVisibility() == 0) {
            i2 = 300;
        }
        j.a(this.a, i, i2, 2131034164);
        j.a(this.b, i, i2, 2131034164);
        j.a(this.c, i, i2, 2131034164);
    }

    public void setListener(j jVar) {
        this.f = jVar;
    }

    protected void onConfigurationChanged(Configuration configuration) {
        if (configuration.orientation == 1) {
            setOrientation(0);
        } else {
            setOrientation(1);
        }
    }

    protected void onMeasure(int i, int i2) {
        if (getResources().getConfiguration().orientation == 1) {
            i2 = MeasureSpec.makeMeasureSpec(this.e, C.ENCODING_PCM_32BIT);
        } else {
            i = MeasureSpec.makeMeasureSpec(this.d, C.ENCODING_PCM_32BIT);
        }
        super.onMeasure(i, i2);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (getOrientation() == 1) {
            int left = this.a.getLeft();
            int top = this.a.getTop();
            int right = this.a.getRight();
            int bottom = this.a.getBottom();
            this.a.layout(this.c.getLeft(), this.c.getTop(), this.c.getRight(), this.c.getBottom());
            this.c.layout(left, top, right, bottom);
        }
    }
}
