package com.twitter.database.generated;

import android.content.ContentValues;
import defpackage.axp;
import defpackage.ayo;

/* compiled from: Twttr */
final class jo implements ayo {
    private final ContentValues a;

    public /* synthetic */ axp b(String str) {
        return a(str);
    }

    public /* synthetic */ axp b(byte[] bArr) {
        return a(bArr);
    }

    jo(ContentValues contentValues) {
        this.a = contentValues;
    }

    public ayo a(String str) {
        this.a.put("key", str);
        return this;
    }

    public ayo a(byte[] bArr) {
        if (bArr == null) {
            this.a.putNull("value");
        } else {
            this.a.put("value", bArr);
        }
        return this;
    }
}
