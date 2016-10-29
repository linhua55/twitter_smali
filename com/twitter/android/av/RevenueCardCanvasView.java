package com.twitter.android.av;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.PorterDuff;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.Button;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayer.PlayerStartType;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.c;
import defpackage.bqk;

/* compiled from: Twttr */
public abstract class RevenueCardCanvasView<T extends VideoPlayerView> extends AVBaseCardCanvasView<Button> {
    private T f;
    private final MediaImageView h;
    private final ViewGroup i;
    private ViewGroup j;
    private boolean k;

    protected abstract T a(AVPlayerAttachment aVPlayerAttachment, Mode mode);

    protected abstract void a(T t);

    protected abstract int getBottomContainerLayoutId();

    public RevenueCardCanvasView(Context context) {
        this(context, null, 0);
    }

    public RevenueCardCanvasView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RevenueCardCanvasView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.h = (MediaImageView) findViewById(2131952396);
        this.i = (ViewGroup) findViewById(2131952637);
        this.d.setColorFilter(context.getResources().getColor(2131886170), PorterDuff.Mode.SRC_ATOP);
        a();
    }

    protected void a(Context context) {
        this.j = (ViewGroup) findViewById(2131952131);
        View.inflate(context, getBottomContainerLayoutId(), this.j);
    }

    protected int getLayoutId() {
        return 2130969521;
    }

    public void a(AVPlayerAttachment aVPlayerAttachment, Configuration configuration) {
        super.a(aVPlayerAttachment, configuration);
        if (this.f != null) {
            removeView(this.f);
        }
        if (2 == configuration.orientation) {
            this.f = a(aVPlayerAttachment, Mode.FULLSCREEN_CARD_CANVAS);
            a(this.f);
        } else {
            this.f = a(aVPlayerAttachment, Mode.CARD_CANVAS);
            this.f.setOnClickListener(this);
        }
        this.f.setAVPlayerListener(this);
        addView(this.f);
    }

    protected bqk a(Configuration configuration) {
        return bqk.b;
    }

    public void onClick(View view) {
        if (view.equals(this.f)) {
            m();
        } else {
            super.onClick(view);
        }
    }

    public void a(PlayerStartType playerStartType) {
        super.a(playerStartType);
        this.f.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
    }

    public void p() {
        this.k = true;
        this.h.setVisibility(8);
        this.i.setVisibility(0);
        this.d.setImageResource(2130840014);
        this.d.setColorFilter(getResources().getColor(2131886213), PorterDuff.Mode.SRC_ATOP);
        b();
        q();
    }

    public void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        if (this.k) {
            q();
        }
        if (2 == configuration.orientation) {
            i = 8;
        } else {
            i = 0;
        }
        if (this.h != null) {
            this.h.setVisibility(i);
        }
        if (this.j != null) {
            this.j.setVisibility(i);
        }
    }

    private void q() {
        if (c.f(getContext())) {
            this.j.setVisibility(8);
            this.i.setBackgroundColor(0);
            return;
        }
        this.j.setVisibility(0);
        this.i.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
    }

    protected void onMeasure(int i, int i2) {
        if (c.f(getContext())) {
            setMeasuredDimension(i, i2);
            this.i.measure(i, i2);
            if (this.f != null) {
                this.f.measure(i, i2);
            }
            this.h.measure(i, i2);
            return;
        }
        int size = MeasureSpec.getSize(i2);
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i), RtlSpacingHelper.UNDEFINED);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i2), RtlSpacingHelper.UNDEFINED);
        this.j.measure(makeMeasureSpec, makeMeasureSpec2);
        int measuredHeight = this.j.getMeasuredHeight();
        size -= measuredHeight;
        int size2 = MeasureSpec.getSize(i);
        float f = ((float) size2) / ((float) size);
        if (1.7777778f != f) {
            if (1.7777778f > f) {
                size = (int) (((float) size2) / 1.7777778f);
            } else {
                size2 = (int) (((float) size) * 1.7777778f);
            }
        }
        int makeMeasureSpec3 = MeasureSpec.makeMeasureSpec(size2, 1073741824);
        int makeMeasureSpec4 = MeasureSpec.makeMeasureSpec(size, 1073741824);
        setMeasuredDimension(size2, size + measuredHeight);
        if (this.f != null) {
            this.f.measure(makeMeasureSpec3, makeMeasureSpec4);
        }
        this.h.measure(makeMeasureSpec3, makeMeasureSpec4);
        this.j.measure(makeMeasureSpec3, makeMeasureSpec2);
        this.i.measure(makeMeasureSpec, makeMeasureSpec2);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.h.getMeasuredWidth();
        int measuredHeight = this.h.getMeasuredHeight();
        this.h.layout(0, 0, measuredWidth, measuredHeight);
        if (this.f != null) {
            this.f.layout(0, 0, this.f.getMeasuredWidth(), this.f.getMeasuredHeight());
        }
        if (c.f(getContext())) {
            this.i.layout(i, i2, i3, i4);
            return;
        }
        this.j.layout(0, measuredHeight, this.j.getMeasuredWidth(), this.j.getMeasuredHeight() + measuredHeight);
        this.i.layout(0, 0, measuredWidth, measuredHeight);
    }
}
