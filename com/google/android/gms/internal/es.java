package com.google.android.gms.internal;

import com.google.android.exoplayer.ExoPlayer.Factory;

public class es implements wa {
    private int a;
    private int b;
    private final int c;
    private final float d;

    public es() {
        this(Factory.DEFAULT_MIN_BUFFER_MS, 1, 1.0f);
    }

    public es(int i, int i2, float f) {
        this.a = i;
        this.c = i2;
        this.d = f;
    }

    public int a() {
        return this.a;
    }

    public void a(zzr com_google_android_gms_internal_zzr) throws zzr {
        this.b++;
        this.a = (int) (((float) this.a) + (((float) this.a) * this.d));
        if (!c()) {
            throw com_google_android_gms_internal_zzr;
        }
    }

    public int b() {
        return this.b;
    }

    protected boolean c() {
        return this.b <= this.c;
    }
}
