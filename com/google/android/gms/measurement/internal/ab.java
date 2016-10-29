package com.google.android.gms.measurement.internal;

import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.wl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

class ab {
    final int a;
    final boolean b;
    final String c;
    final List<String> d;
    final String e;
    final boolean f;

    public ab(wl wlVar) {
        boolean z;
        boolean z2 = false;
        bm.a(wlVar);
        if (wlVar.a == null || wlVar.a.intValue() == 0) {
            z = false;
        } else {
            if (wlVar.a.intValue() == 6) {
                if (wlVar.d == null || wlVar.d.length == 0) {
                    z = false;
                }
            } else if (wlVar.b == null) {
                z = false;
            }
            z = true;
        }
        if (z) {
            this.a = wlVar.a.intValue();
            if (wlVar.c != null && wlVar.c.booleanValue()) {
                z2 = true;
            }
            this.b = z2;
            if (this.b || this.a == 1 || this.a == 6) {
                this.c = wlVar.b;
            } else {
                this.c = wlVar.b.toUpperCase(Locale.ENGLISH);
            }
            this.d = wlVar.d == null ? null : a(wlVar.d, this.b);
            if (this.a == 1) {
                this.e = this.c;
            } else {
                this.e = null;
            }
        } else {
            this.a = 0;
            this.b = false;
            this.c = null;
            this.d = null;
            this.e = null;
        }
        this.f = z;
    }

    private List<String> a(String[] strArr, boolean z) {
        if (z) {
            return Arrays.asList(strArr);
        }
        List<String> arrayList = new ArrayList();
        for (String toUpperCase : strArr) {
            arrayList.add(toUpperCase.toUpperCase(Locale.ENGLISH));
        }
        return arrayList;
    }

    public Boolean a(String str) {
        if (!this.f) {
            return null;
        }
        if (!(this.b || this.a == 1)) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (this.a) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return Boolean.valueOf(Pattern.compile(this.e, this.b ? 0 : 66).matcher(str).matches());
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return Boolean.valueOf(str.startsWith(this.c));
            case Util.TYPE_OTHER /*3*/:
                return Boolean.valueOf(str.endsWith(this.c));
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return Boolean.valueOf(str.contains(this.c));
            case EbmlReader.TYPE_FLOAT /*5*/:
                return Boolean.valueOf(str.equals(this.c));
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return Boolean.valueOf(this.d.contains(str));
            default:
                return null;
        }
    }
}
