package com.twitter.android.highlights;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import bli;
import com.twitter.library.av.playback.AVPlayerAttachment;
import java.util.Map;

/* compiled from: Twttr */
public abstract class as {
    public final String e;
    public final long f;
    public final bli g;
    public final String h;
    public final String i;
    public int j;
    public boolean k;
    protected final int l;

    public abstract int a();

    public abstract Intent a(Context context);

    public abstract ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2);

    public abstract at a(View view);

    public abstract String b();

    public as(String str, long j, int i, bli bli, boolean z, String str2, String str3) {
        this.e = str;
        this.f = j;
        this.l = i;
        this.g = bli;
        this.k = z;
        this.h = str2;
        this.i = str3;
    }

    public boolean f() {
        return this.l != 0;
    }

    public boolean b(int i) {
        return (this.l & i) == i;
    }
}
