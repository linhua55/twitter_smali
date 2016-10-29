package com.twitter.library.util;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import com.twitter.library.platform.e;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public final class ax {
    public static List<e> a(Context context) {
        List<ScanResult> scanResults = ((WifiManager) context.getSystemService("wifi")).getScanResults();
        if (scanResults == null) {
            return n.g();
        }
        n a = n.a(scanResults.size());
        for (ScanResult a2 : scanResults) {
            a.c(e.a(a2));
        }
        return (List) a.q();
    }
}
