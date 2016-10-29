package com.evernote.android.job;

import android.support.annotation.NonNull;
import defpackage.ar;

/* compiled from: Twttr */
public final class b {
    private final JobRequest a;
    private ar b;

    private b(@NonNull JobRequest jobRequest) {
        this.a = jobRequest;
        this.b = jobRequest.m();
    }

    public int a() {
        return this.a.a();
    }

    public String b() {
        return this.a.b();
    }

    public boolean c() {
        return this.a.g();
    }

    @NonNull
    public ar d() {
        if (this.b == null) {
            this.b = new ar();
        }
        return this.b;
    }

    JobRequest e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((b) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
