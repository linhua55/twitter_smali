package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.dms.Participant;
import com.twitter.model.dms.h;
import com.twitter.model.dms.j;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonConversationInfo extends e<h> {
    @JsonField
    public String a;
    @JsonField(typeConverter = b.class)
    public int b;
    @JsonField(name = {"name"})
    public String c;
    @JsonField(name = {"avatar_image_https"})
    public String d;
    @JsonField
    public long e;
    @JsonField
    public long f;
    @JsonField
    public long g;
    @JsonField
    public long h;
    @JsonField
    public long i;
    @JsonField
    public long j;
    @JsonField
    public List<Participant> k;
    @JsonField(name = {"notifications_disabled"})
    public boolean l;
    @JsonField
    public boolean m;

    public /* synthetic */ f c() {
        return a();
    }

    public j a() {
        return new j().c(this.a).a(this.b).a(this.c).b(this.d).a(this.l).b(this.m).b(this.f).c(this.g).a(this.k).d(this.e).a(this.i).e(this.j);
    }
}
