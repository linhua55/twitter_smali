package com.twitter.model.json.activity;

import cfr;
import cfx;
import cfy;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.json.common.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonGenericActivity extends f<cfx> {
    @JsonField
    public long a;
    @JsonField
    public long b;
    @JsonField
    public long c;
    @JsonField
    public cfr d;
    @JsonField
    public String e;
    @JsonField
    public String f;
    @JsonField
    public String g;
    @JsonField
    public List<TwitterUser> h;
    @JsonField
    public List<TwitterUser> i;
    @JsonField
    public List<cm> j;

    public /* synthetic */ Object b() {
        return a();
    }

    public cfx a() {
        return (cfx) new cfy().a(this.a).b(this.b).c(this.c).a(this.d).a(this.e).b(this.f).c(this.g).a(this.h).b(this.j).c(this.i).q();
    }
}
