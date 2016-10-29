package com.google.android.gms.gcm;

public class i extends j {
    private long i;
    private long j;

    public i() {
        this.i = -1;
        this.j = -1;
        this.e = true;
    }

    public i a(int i) {
        this.a = i;
        return this;
    }

    public i a(long j) {
        this.i = j;
        return this;
    }

    public i a(Class<? extends GcmTaskService> cls) {
        this.b = cls.getName();
        return this;
    }

    public i a(String str) {
        this.c = str;
        return this;
    }

    public i a(boolean z) {
        this.f = z;
        return this;
    }

    protected void a() {
        super.a();
        if (this.i == -1) {
            throw new IllegalArgumentException("Must call setPeriod(long) to establish an execution interval for this periodic task.");
        } else if (this.i <= 0) {
            throw new IllegalArgumentException("Period set cannot be less or equal to 0: " + this.i);
        } else if (this.j == -1) {
            this.j = (long) (((float) this.i) * 0.1f);
        } else if (this.j > this.i) {
            this.j = this.i;
        }
    }

    public PeriodicTask b() {
        a();
        return new PeriodicTask(this, null);
    }

    public i b(boolean z) {
        this.e = z;
        return this;
    }

    public i c(boolean z) {
        this.d = z;
        return this;
    }
}
