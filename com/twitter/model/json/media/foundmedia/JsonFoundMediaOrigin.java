package com.twitter.model.json.media.foundmedia;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.FoundMediaOrigin;

@JsonObject
/* compiled from: Twttr */
public class JsonFoundMediaOrigin extends f<FoundMediaOrigin> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public FoundMediaOrigin a() {
        if (this.a != null && this.b != null) {
            return new FoundMediaOrigin(this.a, this.b);
        }
        bbn.a(new InvalidJsonFormatException("JsonFoundMediaOrigin has no provider or id"));
        return null;
    }
}
