package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.EscherbirdAnnotation;
import com.twitter.model.core.EscherbirdAnnotation.DomainType;
import com.twitter.model.core.EscherbirdAnnotation.GroupType;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonEscherbirdAnnotation extends f<EscherbirdAnnotation> {
    @JsonField
    public int a;
    @JsonField
    public int b;
    @JsonField
    public long c;

    public /* synthetic */ Object b() {
        return a();
    }

    public EscherbirdAnnotation a() {
        return new EscherbirdAnnotation(GroupType.a(this.a), DomainType.a(this.b), this.c);
    }
}
