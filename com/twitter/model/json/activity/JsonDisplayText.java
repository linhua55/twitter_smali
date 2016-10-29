package com.twitter.model.json.activity;

import cfr;
import cft;
import cfu;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonDisplayText extends f<cfr> {
    @JsonField
    public String a;
    @JsonField(name = {"bold_indexes"})
    public List<cfu> b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cfr a() {
        return (cfr) new cft().a(this.a).a(this.b).q();
    }
}
