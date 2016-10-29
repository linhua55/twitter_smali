package com.twitter.library.av.control;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import bcx;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.bd;
import com.twitter.util.al;
import defpackage.bdc;

/* compiled from: Twttr */
public class a implements OnSeekBarChangeListener {
    final b a;
    long b;
    private final TextView c;
    private final TextView d;
    private final TextView e;
    private final SeekBar f;
    private final String g;
    private boolean h;
    private boolean i;
    private AVPlayer j;
    private final Handler k;

    public a(View view, b bVar) {
        this(view, null, bVar, view.getContext(), new Handler(Looper.getMainLooper()));
    }

    public a(View view, AVPlayer aVPlayer, b bVar) {
        this(view, aVPlayer, bVar, view.getContext(), new Handler(Looper.getMainLooper()));
    }

    a(View view, AVPlayer aVPlayer, b bVar, Context context, Handler handler) {
        this.b = -1;
        this.k = handler;
        this.a = bVar;
        this.f = (SeekBar) view.findViewById(bcx.mediacontroller_progress);
        this.f.setOnSeekBarChangeListener(this);
        this.f.setMax(ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
        this.d = (TextView) view.findViewById(bcx.time_current);
        this.c = (TextView) view.findViewById(bcx.time);
        this.e = (TextView) view.findViewById(bcx.countdown);
        this.g = context.getString(bdc.av_preroll_countdown_text);
        a(aVPlayer);
    }

    public void a(AVPlayer aVPlayer) {
        if (aVPlayer != this.j) {
            this.j = aVPlayer;
            b(bd.a);
        }
    }

    public void a(Runnable runnable) {
        this.k.post(runnable);
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        if (this.j != null) {
            this.h = true;
            this.i = false;
            this.j.J();
            this.a.d();
        }
    }

    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (this.j != null && z) {
            bd z2 = this.j.z();
            if (this.j.D() != null) {
                long j = (z2.c * ((long) i)) / 1000;
                this.i = j < z2.b;
                this.b = j;
                if (this.d != null) {
                    this.d.setText(al.a((long) ((int) j)));
                }
            }
        }
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.j != null) {
            long j = this.b;
            this.h = false;
            if (this.b != -1) {
                this.j.a((long) ((int) this.b));
                this.b = -1;
            }
            b(this.j.z());
            this.j.K();
            this.a.a(this.i, j);
            if (this.i) {
                this.j.A();
            }
        }
    }

    public void a(bd bdVar) {
        if (!this.h && b() && this.j != null) {
            b(bdVar);
            this.a.c();
        }
    }

    public void b(bd bdVar) {
        long j = 0;
        if (!this.h) {
            if (this.f != null) {
                if (bdVar.c > 0) {
                    j = (1000 * bdVar.b) / bdVar.c;
                }
                this.f.setProgress((int) j);
            }
            this.c.setText(al.a(bdVar.c));
            this.d.setText(al.a(bdVar.b));
            if (this.e != null) {
                String a = al.a(bdVar.c - bdVar.b);
                this.e.setText(String.format(this.g, new Object[]{a}));
            }
        }
    }

    public void a() {
        this.f.setProgress(0);
    }

    boolean b() {
        return this.f.getParent() != null;
    }

    public void c() {
        this.c.setVisibility(8);
        this.d.setVisibility(8);
        this.f.setVisibility(8);
        if (this.e != null) {
            this.e.setVisibility(0);
        }
    }

    public void d() {
        this.c.setVisibility(0);
        this.d.setVisibility(0);
        this.f.setVisibility(0);
        if (this.e != null) {
            this.e.setVisibility(8);
        }
    }
}
