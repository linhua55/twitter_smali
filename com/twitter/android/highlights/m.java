package com.twitter.android.highlights;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import bli;
import com.twitter.library.av.playback.AVPlayerAttachment;
import java.util.Map;

/* compiled from: Twttr */
public class m extends as {
    public final boolean a;
    private int b;
    private int c;
    private o d;

    public m(boolean z) {
        super("IntroStory", 2147483647L, 0, new bli(0, 0, null), true, null, null);
        this.b = 0;
        this.c = -1;
        this.a = z;
    }

    public int c() {
        return this.b;
    }

    public void a(int i) {
        if (i != this.b) {
            this.c = this.b;
            this.b = i;
        }
    }

    public int d() {
        return this.c;
    }

    public void e() {
        this.c = this.b;
    }

    public int a() {
        return 10;
    }

    public at a(View view) {
        return new p(view);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new k();
    }

    public Intent a(Context context) {
        return null;
    }

    public String b() {
        return null;
    }

    public void a(p pVar, n nVar) {
        pVar.d.setMute(true);
        if (this.d == null) {
            this.d = new o(this, pVar, nVar);
        } else {
            this.d.a(pVar, nVar);
        }
        pVar.d.setOnPreparedListener(this.d);
        pVar.d.setOnCompletionListener(this.d);
        pVar.d.setOnErrorListener(this.d);
        pVar.d.setVideoPath("android.resource://com.twitter.android/2131296271");
    }
}
