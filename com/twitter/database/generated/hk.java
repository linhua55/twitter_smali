package com.twitter.database.generated;

import android.content.ContentValues;
import defpackage.axp;
import defpackage.axu;

/* compiled from: Twttr */
final class hk implements axu {
    private final ContentValues a;

    public /* synthetic */ axp b(String str) {
        return a(str);
    }

    public /* synthetic */ axp b(byte[] bArr) {
        return a(bArr);
    }

    hk(ContentValues contentValues) {
        this.a = contentValues;
    }

    public axu a(String str) {
        this.a.put("key", str);
        return this;
    }

    public axu a(byte[] bArr) {
        if (bArr == null) {
            this.a.putNull("value");
        } else {
            this.a.put("value", bArr);
        }
        return this;
    }
}
