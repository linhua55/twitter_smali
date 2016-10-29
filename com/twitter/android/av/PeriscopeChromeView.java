package com.twitter.android.av;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.twitter.library.av.playback.AVPlayerAttachment;
import tv.periscope.android.view.PsLoading;

/* compiled from: Twttr */
public class PeriscopeChromeView extends AutoPlayVideoPlayerChromeView {
    private ImageView e;
    private PsLoading f;

    public PeriscopeChromeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        p();
    }

    public PeriscopeChromeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        p();
    }

    public PeriscopeChromeView(Context context) {
        super(context);
        p();
    }

    private void p() {
        setLayoutParams(new LayoutParams(-1, -1));
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        removeAllViews();
        this.b = aVPlayerAttachment;
        LayoutInflater.from(getContext()).inflate(2130969166, this);
        this.f = (PsLoading) findViewById(2131953021);
        this.e = (ImageView) findViewById(2131953022);
    }

    protected void m() {
        if (this.f != null) {
            this.f.b();
        }
    }

    protected void n() {
        if (this.e != null && this.f != null) {
            this.e.setVisibility(8);
            this.f.c();
        }
    }

    protected void o() {
        if (this.e != null && this.f != null) {
            this.e.setVisibility(0);
            this.f.c();
        }
    }
}
