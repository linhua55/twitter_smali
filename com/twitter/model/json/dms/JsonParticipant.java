package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.dms.Participant;
import com.twitter.model.dms.bb;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonParticipant extends e<Participant> {
    @JsonField
    public long a;
    @JsonField
    public long b;
    @JsonField
    public long c;

    public /* synthetic */ f c() {
        return a();
    }

    public bb a() {
        return (bb) ((bb) ((bb) new bb().a(this.a)).b(this.b)).c(this.c);
    }
}
