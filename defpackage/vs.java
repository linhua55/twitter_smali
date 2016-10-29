package defpackage;

import com.twitter.android.as;
import com.twitter.model.profile.ExtendedProfile.Visibility;

/* compiled from: Twttr */
/* renamed from: vs */
public class vs {
    private final as a;
    private final as b;
    private final as c;

    private vs(vu vuVar) {
        this.a = vr.a(vuVar.d, Visibility.values(), vuVar.a);
        this.b = vr.a(vuVar.d, Visibility.values(), vuVar.b);
        this.c = vr.a(vuVar.d, new Visibility[]{Visibility.SELF}, vuVar.c);
    }

    public as a() {
        return this.a;
    }

    public as b() {
        return this.b;
    }

    public as c() {
        return this.c;
    }
}
