package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.IdManager.DeviceIdentifierType;
import java.util.Map;
import java.util.UUID;

/* compiled from: Twttr */
class ae {
    private final Context a;
    private final IdManager b;
    private final String c;
    private final String d;

    public ae(Context context, IdManager idManager, String str, String str2) {
        this.a = context;
        this.b = idManager;
        this.c = str;
        this.d = str2;
    }

    public ac a() {
        Map i = this.b.i();
        return new ac(this.b.c(), UUID.randomUUID().toString(), this.b.b(), (String) i.get(DeviceIdentifierType.d), (String) i.get(DeviceIdentifierType.g), this.b.l(), (String) i.get(DeviceIdentifierType.c), CommonUtils.m(this.a), this.b.d(), this.b.g(), this.c, this.d);
    }
}
