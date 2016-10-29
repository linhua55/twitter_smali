package defpackage;

import android.app.Activity;
import com.twitter.android.av.video.m;
import com.twitter.library.client.bg;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: aej */
public class aej implements b<Activity, aef> {
    private final aep a;

    public static aej a(bg bgVar) {
        return new aej(new aep(bgVar.c()));
    }

    public aej(aep aep) {
        this.a = aep;
    }

    public aef a(Activity activity) {
        return new aef(new aek(activity), new aec(new aee(activity), this.a, new m(), activity));
    }
}
