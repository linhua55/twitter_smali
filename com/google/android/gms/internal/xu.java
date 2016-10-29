package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

final class xu {
    final int a;
    final byte[] b;

    xu(int i, byte[] bArr) {
        this.a = i;
        this.b = bArr;
    }

    int a() {
        return (0 + zzsn.f(this.a)) + this.b.length;
    }

    void a(zzsn com_google_android_gms_internal_zzsn) throws IOException {
        com_google_android_gms_internal_zzsn.e(this.a);
        com_google_android_gms_internal_zzsn.d(this.b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xu)) {
            return false;
        }
        xu xuVar = (xu) obj;
        return this.a == xuVar.a && Arrays.equals(this.b, xuVar.b);
    }

    public int hashCode() {
        return ((this.a + 527) * 31) + Arrays.hashCode(this.b);
    }
}
