package defpackage;

import android.content.Intent;
import android.location.Location;

/* compiled from: Twttr */
/* renamed from: bxh */
public class bxh implements bxe {
    public Location a(Intent intent) {
        return (Location) intent.getParcelableExtra("location");
    }
}
