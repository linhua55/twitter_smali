package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.aj;
import com.twitter.model.core.am;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMediaVideoInfo extends f<aj> {
    @JsonField
    public int[] a;
    @JsonField
    public float b;
    @JsonField
    public List<am> c;

    public /* synthetic */ Object b() {
        return a();
    }

    public JsonMediaVideoInfo() {
        this.a = new int[2];
    }

    public aj a() {
        float f = this.a[1] != 0 ? ((float) this.a[0]) / ((float) this.a[1]) : 0.0f;
        List a = ImmutableList.a(this.c);
        if (a.isEmpty() || f == 0.0f) {
            return null;
        }
        return new aj(f, this.b / 1000.0f, a);
    }
}
