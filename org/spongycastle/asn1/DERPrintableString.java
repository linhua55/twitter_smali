package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;
import tv.periscope.android.api.ApiRunnable;

/* compiled from: Twttr */
public class DERPrintableString extends ASN1Primitive implements ASN1String {
    private byte[] a;

    DERPrintableString(byte[] bArr) {
        this.a = bArr;
    }

    public DERPrintableString(String str) {
        this(str, false);
    }

    public DERPrintableString(String str, boolean z) {
        if (!z || b(str)) {
            this.a = Strings.d(str);
            return;
        }
        throw new IllegalArgumentException("string contains illegal characters");
    }

    public String a() {
        return Strings.b(this.a);
    }

    boolean b() {
        return false;
    }

    int c() {
        return (StreamUtil.a(this.a.length) + 1) + this.a.length;
    }

    void a(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.a(19, this.a);
    }

    public int hashCode() {
        return Arrays.a(this.a);
    }

    boolean a(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof DERPrintableString)) {
            return false;
        }
        return Arrays.a(this.a, ((DERPrintableString) aSN1Primitive).a);
    }

    public String toString() {
        return a();
    }

    public static boolean b(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            char charAt = str.charAt(length);
            if (charAt > '\u007f') {
                return false;
            }
            if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && ('0' > charAt || charAt > '9'))) {
                switch (charAt) {
                    case ApiRunnable.ACTION_CODE_PING_BROADCAST /*32*/:
                    case ApiRunnable.ACTION_CODE_GET_BROADCAST_ID_FROM_URL /*39*/:
                    case ApiRunnable.ACTION_CODE_UPLOAD_TEST /*40*/:
                    case ApiRunnable.ACTION_CODE_REPORT_BROADCAST /*41*/:
                    case ApiRunnable.ACTION_CODE_DELETE_BROADCAST /*43*/:
                    case ApiRunnable.ACTION_CODE_USER_BROADCASTS /*44*/:
                    case ApiRunnable.ACTION_CODE_UPLOAD_PROFILE_IMAGE /*45*/:
                    case ApiRunnable.ACTION_CODE_UPDATE_PROFILE_DESCRIPTION /*46*/:
                    case ApiRunnable.ACTION_CODE_UPDATE_PROFILE_DISPLAY_NAME /*47*/:
                    case ApiRunnable.ACTION_CODE_ADJUST_BROADCAST_RANK /*58*/:
                    case ApiRunnable.ACTION_CODE_GET_USER_BY_USERNAME /*61*/:
                    case ApiRunnable.ACTION_CODE_UNBAN /*63*/:
                        break;
                    default:
                        return false;
                }
            }
        }
        return true;
    }
}
