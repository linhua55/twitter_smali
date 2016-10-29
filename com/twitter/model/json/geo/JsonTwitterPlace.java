package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.TwitterPlace.PlaceType;
import com.twitter.model.geo.VendorInfo;
import com.twitter.model.geo.a;
import com.twitter.model.geo.d;
import com.twitter.model.geo.k;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTwitterPlace extends f<TwitterPlace> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public PlaceType c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public String f;
    @JsonField
    public TwitterPlace[] g;
    @JsonField
    public double[] h;
    @JsonField
    public CoordinateArray i;
    @JsonField
    public JsonPlaceAttributes j;
    @JsonField
    public VendorInfo k;

    @JsonObject
    /* compiled from: Twttr */
    public class CoordinateArray extends b {
        @JsonField
        public List<List<List<Double>>> a;
    }

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonPlaceAttributes extends b {
        @JsonField
        public String a;
        @JsonField(name = {"twitter"})
        public String b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public JsonTwitterPlace() {
        this.c = PlaceType.f;
    }

    public TwitterPlace a() {
        d dVar = null;
        if (aj.a(this.d)) {
            return null;
        }
        List list;
        k a;
        if (this.i != null) {
            Object<List> obj = this.i.a;
            if (!CollectionUtils.b(obj)) {
                n d = n.d();
                for (List<List> it : obj) {
                    for (List list2 : it) {
                        d.c(new d(((Double) list2.get(1)).doubleValue(), ((Double) list2.get(0)).doubleValue()));
                    }
                }
                list = (List) d.q();
                if (this.h != null) {
                    dVar = new d(this.h[1], this.h[0]);
                }
                a = new k().a(this.d).a(this.c).b(this.a).c(this.b).a(a.a(list)).a(dVar).d(this.e).e(this.f).a((TwitterPlace) CollectionUtils.c(this.g)).a(this.k);
                if (this.j != null) {
                    a.f(this.j.a);
                    a.g(this.j.b);
                }
                return (TwitterPlace) a.q();
            }
        }
        list = null;
        if (this.h != null) {
            dVar = new d(this.h[1], this.h[0]);
        }
        a = new k().a(this.d).a(this.c).b(this.a).c(this.b).a(a.a(list)).a(dVar).d(this.e).e(this.f).a((TwitterPlace) CollectionUtils.c(this.g)).a(this.k);
        if (this.j != null) {
            a.f(this.j.a);
            a.g(this.j.b);
        }
        return (TwitterPlace) a.q();
    }
}
