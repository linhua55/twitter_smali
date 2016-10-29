package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Intent;

final class ao {
    private final String a;
    private final ComponentName b;

    public ao(ComponentName componentName) {
        this.a = null;
        this.b = (ComponentName) bm.a(componentName);
    }

    public ao(String str) {
        this.a = bm.a(str);
        this.b = null;
    }

    public Intent a() {
        return this.a != null ? new Intent(this.a).setPackage("com.google.android.gms") : new Intent().setComponent(this.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ao)) {
            return false;
        }
        ao aoVar = (ao) obj;
        return bj.a(this.a, aoVar.a) && bj.a(this.b, aoVar.b);
    }

    public int hashCode() {
        return bj.a(this.a, this.b);
    }

    public String toString() {
        return this.a == null ? this.b.flattenToString() : this.a;
    }
}
