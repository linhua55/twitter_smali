package defpackage;

import android.content.Intent;
import android.location.Location;
import com.google.android.gms.location.LocationResult;

/* compiled from: Twttr */
/* renamed from: bxg */
public class bxg implements bxe {
    public Location a(Intent intent) {
        LocationResult b = LocationResult.b(intent);
        return b == null ? null : b.a();
    }
}
