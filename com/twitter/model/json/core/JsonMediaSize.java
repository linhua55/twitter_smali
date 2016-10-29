package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.util.math.Size;

@JsonObject
/* compiled from: Twttr */
public class JsonMediaSize extends f<Size> {
    @JsonField
    public int a;
    @JsonField
    public int b;

    public /* synthetic */ Object b() {
        return a();
    }

    public Size a() {
        return Size.a(this.a, this.b);
    }
}
