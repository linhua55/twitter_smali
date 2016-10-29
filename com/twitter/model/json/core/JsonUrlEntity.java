package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.cr;
import com.twitter.model.core.cu;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonUrlEntity extends e<cr> {
    @JsonField
    public int[] a;
    @JsonField(name = {"url_https"})
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField(name = {"url"})
    public String e;

    public /* synthetic */ f c() {
        return a();
    }

    public JsonUrlEntity() {
        this.a = new int[]{-1, -1};
    }

    public cu a() {
        return (cu) ((cu) ((cu) ((cu) ((cu) new cu().a(this.a[0])).b(this.a[1])).e(this.b != null ? this.b : this.e)).f(this.c)).g(this.d);
    }
}
