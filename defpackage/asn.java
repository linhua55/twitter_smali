package defpackage;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

/* compiled from: Twttr */
/* renamed from: asn */
class asn implements OnSharedPreferenceChangeListener {
    final /* synthetic */ asm a;

    asn(asm asm) {
        this.a = asm;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        this.a.a(sharedPreferences, str);
    }
}
