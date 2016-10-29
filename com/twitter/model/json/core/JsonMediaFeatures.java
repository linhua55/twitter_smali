package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.ag;
import com.twitter.model.core.bm;
import com.twitter.model.json.common.b;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonMediaFeatures extends b {
    @JsonField(name = {"all"})
    public SizeIndependent a;
    @JsonField(name = {"large"})
    public SizeDependent b;

    @JsonObject
    /* compiled from: Twttr */
    public class SizeDependent extends b {
        @JsonField
        public Face[] a;

        @JsonObject
        /* compiled from: Twttr */
        public class Face extends b {
            @JsonField
            public int a;
            @JsonField
            public int b;
            @JsonField
            public int c;
            @JsonField
            public int d;

            public Face() {
                this.a = -1;
                this.b = -1;
                this.c = -1;
                this.d = -1;
            }
        }

        public List<bm> a(Size size) {
            if (CollectionUtils.a(this.a)) {
                return n.g();
            }
            n a = n.a(this.a.length);
            for (Face face : this.a) {
                if (face.a >= 0 && face.b >= 0 && face.c >= 0 && face.d >= 0) {
                    a.c(new bm(face.a, face.b, face.d, face.c, size));
                }
            }
            return (List) a.q();
        }
    }

    @JsonObject
    /* compiled from: Twttr */
    public class SizeIndependent extends b {
        @JsonField
        public Tag[] a;

        @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
        /* compiled from: Twttr */
        public class Tag extends b {
            @JsonField
            public long a;
            @JsonField
            public String b;
            @JsonField
            public String c;
        }

        public List<ag> a() {
            n d = n.d();
            for (Tag tag : this.a) {
                long j = tag.a;
                String str = tag.b;
                String str2 = tag.c;
                if (!(j <= 0 || str == null || str2 == null)) {
                    d.c(new ag(j, str, str2));
                }
            }
            return (List) d.q();
        }
    }
}
