package com.twitter.model.json.watchmode;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.av.ad;
import com.twitter.model.av.ae;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonWatchModeSectionStatusMetadata extends f<ad> {
    @JsonField
    public long a;
    @JsonField
    public float b;
    @JsonField
    public int c;

    public /* synthetic */ Object b() {
        return a();
    }

    public ad a() {
        return (ad) new ae().a(this.a).a(this.b).a(this.c).q();
    }
}
