package defpackage;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import cvi;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cbe */
public class cbe {
    public static final Map<String, String> a;
    public static final String[] b;
    public static final String[] c;
    private static KeyStore d;

    static {
        c = new String[]{"api.twitter.com"};
        Map hashMap = new HashMap();
        hashMap.put("VERISIGN_CLASS1", "2343d148a255899b947d461a797ec04cfed170b7");
        hashMap.put("VERISIGN_CLASS1_G3", "5519b278acb281d7eda7abc18399c3bb690424b5");
        hashMap.put("VERISIGN_CLASS2_G2", "1237ba4517eead2926fdc1cdfebeedf2ded9145c");
        hashMap.put("VERISIGN_CLASS2_G3", "5abec575dcaef3b08e271943fc7f250c3df661e3");
        hashMap.put("VERISIGN_CLASS3_G2", "1a21b4952b6293ce18b365ec9c0e934cb381e6d4");
        hashMap.put("VERISIGN_CLASS3_G3", "22f19e2ec6eaccfc5d2346f4c2e8f6c554dd5e07");
        hashMap.put("VERISIGN_CLASS3_G4", "ed663135d31bd4eca614c429e319069f94c12650");
        hashMap.put("VERISIGN_CLASS3_G5", "b181081a19a4c0941ffae89528c124c99b34acc7");
        hashMap.put("VERISIGN_CLASS4_G3", "3c03436868951cf3692ab8b426daba8fe922e5bd");
        hashMap.put("VERISIGN_UNIVERSAL", "bbc23e290bb328771dad3ea24dbdf423bd06b03d");
        hashMap.put("GEOTRUST_GLOBAL", "c07a98688d89fbab05640c117daa7d65b8cacc4e");
        hashMap.put("GEOTRUST_GLOBAL2", "713836f2023153472b6eba6546a9101558200509");
        hashMap.put("GEOTRUST_PRIMARY", "b01989e7effb4aafcb148f58463976224150e1ba");
        hashMap.put("GEOTRUST_PRIMARY_G2", "bdbea71bab7157f9e475d954d2b727801a822682");
        hashMap.put("GEOTRUST_PRIMARY_G3", "9ca98d00af740ddd8180d21345a58b8f2e9438d6");
        hashMap.put("GEOTRUST_UNIVERAL", "87e85b6353c623a3128cb0ffbbf551fe59800e22");
        hashMap.put("GEOTRUST_UNIVERSAL2", "5e4f538685dd4f9eca5fdc0d456f7d51b1dc9b7b");
        hashMap.put("DIGICERT_GLOBAL_ROOT", "d52e13c1abe349dae8b49594ef7c3843606466bd");
        hashMap.put("DIGICERT_EV_ROOT", "83317e62854253d6d7783190ec919056e991b9e3");
        hashMap.put("DIGICERT_ASSUREDID_ROOT", "68330e61358521592983a3c8d2d2e1406e7ab3c1");
        hashMap.put("TWITTER1", "56fef3c2147d4ed38837fdbd3052387201e5778d");
        a = hashMap;
        Collection values = hashMap.values();
        b = (String[]) values.toArray(new String[values.size()]);
    }

    public static synchronized KeyStore a(Context context) {
        KeyStore keyStore;
        synchronized (cbe.class) {
            if (d == null) {
                d = cbe.b(context);
            }
            keyStore = d;
        }
        return keyStore;
    }

    private static KeyStore b(Context context) {
        Object e;
        Closeable bufferedInputStream;
        try {
            KeyStore instance = KeyStore.getInstance("BKS");
            bufferedInputStream = new BufferedInputStream(context.getResources().openRawResource(bdb.cacerts), 143360);
            instance.load(bufferedInputStream, "changeit".toCharArray());
            cvi.a(bufferedInputStream);
            return instance;
        } catch (KeyStoreException e2) {
            e = e2;
            throw new AssertionError(e);
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            throw new AssertionError(e);
        } catch (CertificateException e4) {
            e = e4;
            throw new AssertionError(e);
        } catch (NotFoundException e5) {
            e = e5;
            throw new AssertionError(e);
        } catch (IOException e6) {
            e = e6;
            throw new AssertionError(e);
        } catch (Throwable th) {
            cvi.a(bufferedInputStream);
        }
    }
}
