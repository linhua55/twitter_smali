package com.twitter.android.media.widget;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

/* compiled from: Twttr */
class o implements OnSeekBarChangeListener {
    final /* synthetic */ int a;
    final /* synthetic */ SeekBar b;
    final /* synthetic */ FilterFilmstripView c;

    o(FilterFilmstripView filterFilmstripView, int i, SeekBar seekBar) {
        this.c = filterFilmstripView;
        this.a = i;
        this.b = seekBar;
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        this.c.a(this.a, ((float) i) / ((float) this.b.getMax()));
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.c.g != null) {
            this.c.g.b(this.c);
        }
    }
}
