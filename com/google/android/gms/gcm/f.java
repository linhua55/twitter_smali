package com.google.android.gms.gcm;

public class f extends j {
    private long i;
    private long j;

    public f() {
        this.i = -1;
        this.j = -1;
        this.e = false;
    }

    public f a(int i) {
        this.a = i;
        return this;
    }

    public f a(long j, long j2) {
        this.i = j;
        this.j = j2;
        return this;
    }

    public f a(Class<? extends GcmTaskService> cls) {
        this.b = cls.getName();
        return this;
    }

    public f a(String str) {
        this.c = str;
        return this;
    }

    public f a(boolean z) {
        this.f = z;
        return this;
    }

    protected void a() {
        super.a();
        if (this.i == -1 || this.j == -1) {
            throw new IllegalArgumentException("Must specify an execution window using setExecutionWindow.");
        } else if (this.i >= this.j) {
            throw new IllegalArgumentException("Window start must be shorter than window end.");
        }
    }

    public OneoffTask b() {
        a();
        return new OneoffTask(this, null);
    }

    public f b(boolean z) {
        this.e = z;
        return this;
    }

    public f c(boolean z) {
        this.d = z;
        return this;
    }
}
