package com.twitter.model.json.client;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.client.UrlConfiguration;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonUrlConfiguration extends f<UrlConfiguration> {
    @JsonField
    public int a;
    @JsonField
    public int b;
    @JsonField(name = {"client_event_url"})
    public String c;
    @JsonField(name = {"non_username_paths"})
    public List<String> d;

    public /* synthetic */ Object b() {
        return a();
    }

    public UrlConfiguration a() {
        return new UrlConfiguration(this.a, this.b, this.c, ImmutableList.a(this.d));
    }
}
