package com.twitter.model.json.irs;

import cjj;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;

@JsonObject
/* compiled from: Twttr */
public class JsonInstallReferrer extends f<cjj> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField
    public String e;

    public /* synthetic */ Object b() {
        return a();
    }

    public cjj a() {
        return new cjj(this.a, this.b, this.c, this.d, this.e);
    }
}
