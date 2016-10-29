package com.twitter.model.json.moments;

import ckw;
import cky;
import clc;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.moments.MomentGuideSectionType;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.object.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonGuideSection extends e<ckw> {
    @JsonField
    public String a;
    @JsonField
    public MomentGuideSectionType b;
    @JsonField
    public List<clc> c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public String f;

    public /* synthetic */ f c() {
        return a();
    }

    public cky a() {
        return new cky().a(this.a).b(this.d).c(this.e).d(this.f).a((MomentGuideSectionType) com.twitter.util.object.e.b(this.b, MomentGuideSectionType.LIST)).a(ImmutableList.a(this.c));
    }
}
