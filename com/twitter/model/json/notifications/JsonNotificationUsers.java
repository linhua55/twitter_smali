package com.twitter.model.json.notifications;

import bbn;
import cmj;
import cmu;
import cmy;
import cna;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonNotificationUsers extends f<cmy> {
    @JsonField
    public cmu a;
    @JsonField
    public cmu b;
    @JsonField
    public cmu c;
    @JsonField(name = {"context"})
    public List<cmj> d;

    public /* synthetic */ Object b() {
        return a();
    }

    public cmy a() {
        if (this.a != null) {
            return (cmy) new cna().a(this.a).b(this.b).c(this.c).a(this.d).q();
        }
        bbn.a(new InvalidJsonFormatException("Missing recipient"));
        return null;
    }
}
