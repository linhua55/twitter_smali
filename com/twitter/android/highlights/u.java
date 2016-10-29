package com.twitter.android.highlights;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import bli;
import com.twitter.android.widget.highlights.StoryPlayerView;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.network.forecaster.NetworkQuality;
import com.twitter.model.core.Tweet;
import defpackage.bdj;
import java.util.Map;

/* compiled from: Twttr */
public class u extends bp {
    private boolean a;
    private AVPlayer c;
    private AVPlayerAttachment d;

    public u(String str, long j, bli bli, boolean z, String str2, String str3, Tweet tweet) {
        super(str, j, bli, z, str2, str3, tweet, true);
    }

    public int a() {
        if (this.b.L()) {
            return 11;
        }
        return 4;
    }

    public at a(View view) {
        return new v(a(), view);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new t(map2);
    }

    public String b() {
        return a() == 11 ? "TYPE_VINE" : "TYPE_PLAYER";
    }

    public void a(v vVar, boolean z) {
        boolean z2 = true;
        if (this.a) {
            boolean z3;
            if (!z) {
                vVar.c.setVisibility(8);
                if (this.b.O()) {
                    vVar.d.setVisibility(8);
                    z3 = false;
                } else {
                    vVar.d.setVisibility(0);
                    z3 = false;
                }
            } else if (vVar.c.getVisibility() == 0 && vVar.d.getVisibility() == 8) {
                z3 = true;
            } else {
                z3 = false;
            }
            AVPlayer aVPlayer = this.c;
            if (z3) {
                z2 = false;
            }
            aVPlayer.d(z2);
            return;
        }
        vVar.c.setVisibility(8);
        vVar.d.setVisibility(8);
    }

    public void a(Context context, v vVar, AVPlayerAttachment aVPlayerAttachment) {
        if (vVar.e != null) {
            vVar.b.removeView(vVar.e);
        }
        this.d = aVPlayerAttachment;
        this.c = aVPlayerAttachment.a();
        vVar.e = new StoryPlayerView(context, this.d);
        vVar.b.addView(vVar.e);
        this.a = true;
    }

    public void a(v vVar) {
        vVar.a.setVisibility(0);
        bi.a(vVar.a, null, this.b);
        this.a = false;
    }

    public void a(boolean z) {
        if (this.a) {
            this.c.b(z ? 1.0f : 0.0f);
            if (z) {
                this.d.a(false);
            } else {
                this.d.m();
            }
        }
    }

    public boolean a(at atVar) {
        if (!this.a) {
            return false;
        }
        v vVar = (v) atVar;
        if (this.c.u()) {
            vVar.e.p();
        } else {
            vVar.e.n();
        }
        return this.c.u();
    }

    public void a(at atVar, boolean z) {
        if (this.a) {
            v vVar = (v) atVar;
            this.c.d(z);
            if (z) {
                vVar.c.setVisibility(8);
                vVar.d.setVisibility(0);
                return;
            }
            vVar.d.setVisibility(8);
            vVar.c.setVisibility(0);
        }
    }

    public boolean a(Context context, NetworkQuality networkQuality) {
        return networkQuality.compareTo(NetworkQuality.c) >= 0 && !bdj.a(context).b();
    }
}
