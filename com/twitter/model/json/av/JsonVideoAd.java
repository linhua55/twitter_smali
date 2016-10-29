package com.twitter.model.json.av;

import cni;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdMediaInfo;
import com.twitter.model.av.i;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonVideoAd extends f<i> {
    @JsonField
    public String a;
    @JsonField
    public cni b;
    @JsonField
    public String c;
    @JsonField
    public int d;
    @JsonField
    public DynamicAdMediaInfo e;

    public /* synthetic */ Object b() {
        return a();
    }

    public i a() {
        if (this.a == null || this.c == null) {
            return null;
        }
        try {
            return new i(new DynamicAd(this.c, this.d, this.b, this.e), Long.parseLong(this.a));
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
