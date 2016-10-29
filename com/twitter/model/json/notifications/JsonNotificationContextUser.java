package com.twitter.model.json.notifications;

import bbn;
import cmj;
import cml;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonNotificationContextUser extends f<cmj> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cmj a() {
        if (aj.a(this.a)) {
            bbn.a(new InvalidJsonFormatException("Context user missing screen name"));
            return null;
        } else if (!aj.a(this.b)) {
            return (cmj) new cml().a(this.a).b(this.b).q();
        } else {
            bbn.a(new InvalidJsonFormatException("Context user missing avatar"));
            return null;
        }
    }
}
