package com.twitter.model.json.media.foundmedia;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.a;
import com.twitter.model.media.foundmedia.b;
import com.twitter.model.media.foundmedia.m;

@JsonObject
/* compiled from: Twttr */
public class JsonFoundMediaResponse extends f<m> {
    @JsonField
    public b a;
    @JsonField
    public a b;

    public /* synthetic */ Object b() {
        return a();
    }

    public m a() {
        if (this.a == null) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaResponse has no data"));
            return null;
        } else if (this.b != null) {
            return new m(this.a, this.b);
        } else {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaResponse has no cursor"));
            return null;
        }
    }
}
