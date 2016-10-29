package defpackage;

import android.location.Criteria;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.geo.provider.param.LocationPriority;
import com.twitter.library.geo.provider.param.a;

/* compiled from: Twttr */
/* renamed from: bxc */
public class bxc {
    public Criteria a(a aVar) {
        LocationPriority locationPriority = aVar.a;
        Criteria criteria = new Criteria();
        switch (bxd.a[locationPriority.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                criteria.setAccuracy(1);
                criteria.setPowerRequirement(3);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                criteria.setAccuracy(2);
                criteria.setPowerRequirement(2);
                break;
            default:
                criteria.setAccuracy(2);
                criteria.setPowerRequirement(1);
                break;
        }
        return criteria;
    }
}
