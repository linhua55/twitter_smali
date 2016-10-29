package com.twitter.model.json.nativecards;

import cme;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;

@JsonObject
/* compiled from: Twttr */
public class JsonPollCompose extends f<cme> {
    @JsonField(name = {"card_uri"})
    public String a;
    @JsonField(name = {"status"})
    public String b;
    @JsonField(name = {"error_type"})
    public String c;
    @JsonField(name = {"message"})
    public String d;

    public /* synthetic */ Object b() {
        return a();
    }

    public cme a() {
        return new cme(this.b, this.a, this.c, this.d);
    }
}
