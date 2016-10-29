package com.twitter.model.json.media.sru;

import cjp;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSruResponse extends f<cjp> {
    @JsonField
    public long a;
    @JsonField
    public int b;
    @JsonField
    public int c;
    @JsonField
    public JsonProcessingInfo d;

    public /* synthetic */ Object b() {
        return a();
    }

    public cjp a() {
        if (this.d != null) {
            return new cjp(this.a, this.b, this.c, this.d.a, this.d.b, this.d.c);
        }
        int i;
        if (this.a == 0) {
            i = 2;
        } else {
            i = 0;
        }
        return new cjp(this.a, this.b, this.c, i, 0, null);
    }
}
