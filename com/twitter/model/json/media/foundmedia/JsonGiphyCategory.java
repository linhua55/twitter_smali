package com.twitter.model.json.media.foundmedia;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.o;
import com.twitter.model.media.foundmedia.p;

@JsonObject
/* compiled from: Twttr */
public class JsonGiphyCategory extends f<o> {
    @JsonField(name = {"name"})
    public String a;
    @JsonField(name = {"name_encoded"})
    public String b;
    @JsonField(name = {"gif"})
    public p c;

    public /* synthetic */ Object b() {
        return a();
    }

    public o a() {
        if (this.a != null && this.b != null && this.c != null) {
            return new o(this.a, this.b, this.c);
        }
        bbn.a(new InvalidJsonFormatException("JsonGiphyCategory"));
        return null;
    }
}
