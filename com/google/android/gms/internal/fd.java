package com.google.android.gms.internal;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

final class fd implements fj {
    fd() {
    }

    public void a(sz szVar, Map<String, String> map) {
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            qd.d("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        Map hashMap = new HashMap();
        PackageManager packageManager = szVar.getContext().getPackageManager();
        for (String str2 : split) {
            String[] split2 = str2.split(";", 2);
            hashMap.put(str2, Boolean.valueOf(packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) != null));
        }
        szVar.a("openableURLs", hashMap);
    }
}
