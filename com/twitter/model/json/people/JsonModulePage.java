package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.cm;
import com.twitter.model.json.common.b;
import com.twitter.model.people.aj;
import com.twitter.model.people.am;
import com.twitter.model.people.l;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonModulePage extends b {
    @JsonField
    public l b;
    @JsonField
    public String c;
    @JsonField
    public aj d;
    @JsonField
    public List<am> e;
    @JsonField
    public List<cm> f;
    @JsonField
    public String g;
}
