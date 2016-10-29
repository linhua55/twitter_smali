package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.moments.ax;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonThemeData extends f<ax> {
    @JsonField
    public int a;
    @JsonField
    public int b;

    public /* synthetic */ Object b() {
        return a();
    }

    public ax a() {
        return new ax(a(this.a), a(this.b));
    }

    private static int a(int i) {
        return -16777216 | i;
    }
}
