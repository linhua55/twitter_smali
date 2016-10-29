package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.json.common.j;
import com.twitter.util.math.Size;

@JsonObject
/* compiled from: Twttr */
public class JsonMediaSizes extends f<Size> {
    @JsonField(name = {"large"})
    public JsonMediaSize a;

    public /* synthetic */ Object b() {
        return a();
    }

    public Size a() {
        return (Size) j.a(this.a, Size.b);
    }
}
