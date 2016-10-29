package com.twitter.database.generated;

import android.content.ContentValues;
import defpackage.axp;
import defpackage.azc;

/* compiled from: Twttr */
final class kl implements azc {
    private final ContentValues a;

    public /* synthetic */ axp b(String str) {
        return a(str);
    }

    public /* synthetic */ axp b(byte[] bArr) {
        return a(bArr);
    }

    kl(ContentValues contentValues) {
        this.a = contentValues;
    }

    public azc a(String str) {
        this.a.put("key", str);
        return this;
    }

    public azc a(byte[] bArr) {
        if (bArr == null) {
            this.a.putNull("value");
        } else {
            this.a.put("value", bArr);
        }
        return this;
    }
}
