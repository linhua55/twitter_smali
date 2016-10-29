package defpackage;

import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.location.LocationRequest;
import com.twitter.library.geo.provider.param.LocationPriority;
import com.twitter.library.geo.provider.param.a;

/* compiled from: Twttr */
/* renamed from: bxa */
public class bxa {
    public LocationRequest a(a aVar) {
        return LocationRequest.a().a(bxa.a(aVar.a)).a(aVar.b).a(aVar.c).b(aVar.d).b(aVar.e);
    }

    private static int a(LocationPriority locationPriority) {
        switch (bxb.a[locationPriority.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return 100;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return bdd.AppCompatTheme_editTextStyle;
            case Util.TYPE_OTHER /*3*/:
                return bdd.AppCompatTheme_radioButtonStyle;
            default:
                return bdd.AppCompatTheme_checkboxStyle;
        }
    }
}
