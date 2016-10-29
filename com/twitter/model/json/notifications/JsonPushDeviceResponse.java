package com.twitter.model.json.notifications;

import cnd;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;

@JsonObject
/* compiled from: Twttr */
public class JsonPushDeviceResponse extends f<cnd> {
    @JsonField(name = {"enabled_for"})
    public Integer a;

    public /* synthetic */ Object b() {
        return a();
    }

    public cnd a() {
        boolean z;
        int i = 0;
        if (this.a != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = this.a.intValue();
        }
        return new cnd(z, i);
    }
}
