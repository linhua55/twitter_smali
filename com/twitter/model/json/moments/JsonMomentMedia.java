package com.twitter.model.json.moments;

import ckz;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.json.common.j;
import com.twitter.model.json.core.JsonMediaSize;
import com.twitter.util.math.Size;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMomentMedia extends f<ckz> {
    @JsonField
    public long a;
    @JsonField
    public JsonMediaSize b;
    @JsonField
    public String c;

    public /* synthetic */ Object b() {
        return a();
    }

    public ckz a() {
        return new ckz(this.a, (Size) j.a(this.b, Size.b), this.c);
    }
}
