package com.twitter.library.av.playback;

import android.os.Parcelable;
import bpx;
import com.twitter.model.av.Partner;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.Tweet;
import java.util.Map;

/* compiled from: Twttr */
public interface AVDataSource extends Parcelable {
    public static final AVDataSource a;

    String a();

    Tweet b();

    int c();

    boolean d();

    String e();

    bpx f();

    Map<String, String> g();

    Partner h();

    cv i();

    String j();

    boolean k();

    ImageSpec l();

    boolean m();

    float n();

    static {
        a = new 1();
    }
}
