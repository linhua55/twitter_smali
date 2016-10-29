package defpackage;

import com.twitter.model.geo.d;

/* compiled from: Twttr */
/* renamed from: bvr */
public class bvr {
    public static d a(d dVar, d dVar2) {
        double toRadians = Math.toRadians(dVar2.b() - dVar.b());
        double toRadians2 = Math.toRadians(dVar.a());
        double toRadians3 = Math.toRadians(dVar2.a());
        double toRadians4 = Math.toRadians(dVar.b());
        double cos = Math.cos(toRadians3) * Math.cos(toRadians);
        toRadians = Math.sin(toRadians) * Math.cos(toRadians3);
        return new d(Math.toDegrees(Math.atan2(Math.sin(toRadians3) + Math.sin(toRadians2), Math.sqrt(((Math.cos(toRadians2) + cos) * (Math.cos(toRadians2) + cos)) + (toRadians * toRadians)))), Math.toDegrees(Math.atan2(toRadians, Math.cos(toRadians2) + cos) + toRadians4));
    }
}
