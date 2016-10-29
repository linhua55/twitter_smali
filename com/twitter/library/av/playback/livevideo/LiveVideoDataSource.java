package com.twitter.library.av.playback.livevideo;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.be;
import com.twitter.library.av.playback.cv;
import com.twitter.model.av.Partner;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.card.property.Vector2F;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.ab;
import com.twitter.util.object.e;
import defpackage.bpx;
import defpackage.bqe;
import defpackage.cjl;
import java.util.Collections;
import java.util.Map;

/* compiled from: Twttr */
public class LiveVideoDataSource implements AVDataSource {
    public static final Creator<LiveVideoDataSource> CREATOR;
    private static final String b;
    private final cjl c;
    private final MediaEntity d;

    static {
        CREATOR = new b();
        b = LiveVideoDataSource.class.getSimpleName();
    }

    public LiveVideoDataSource(cjl cjl) {
        this.c = cjl;
        this.d = cjl.g;
    }

    public LiveVideoDataSource(Parcel parcel) {
        this.c = (cjl) ab.a(parcel, cjl.a);
        this.d = this.c.g;
    }

    public String a() {
        return b + this.c.b;
    }

    public Tweet b() {
        return null;
    }

    public int c() {
        return 7;
    }

    public boolean d() {
        return false;
    }

    public String e() {
        return e.b(be.a(this.d));
    }

    public bpx f() {
        if (this.d == null) {
            return null;
        }
        return new bqe(this.d);
    }

    public Map<String, String> g() {
        return Collections.emptyMap();
    }

    public Partner h() {
        return Partner.a;
    }

    public cv i() {
        return new a(this.c);
    }

    public String j() {
        return null;
    }

    public boolean k() {
        return false;
    }

    public ImageSpec l() {
        if (this.d == null) {
            return null;
        }
        ImageSpec imageSpec = new ImageSpec();
        imageSpec.c = this.d.l;
        imageSpec.d = new Vector2F((float) this.d.n.a(), (float) this.d.n.b());
        return imageSpec;
    }

    public boolean m() {
        return false;
    }

    public float n() {
        if (this.d == null) {
            return 1.7777778f;
        }
        return this.d.o == null ? this.d.n.e() : this.d.o.b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ab.a(parcel, this.c, cjl.a);
    }
}
