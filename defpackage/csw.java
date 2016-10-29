package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.twitter.config.AppConfig;
import com.twitter.util.c;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;

/* compiled from: Twttr */
/* renamed from: csw */
public class csw {
    public static void a(Activity activity, File file, String str, int i) {
        if (AppConfig.m().a() || AppConfig.m().b()) {
            Serializable arrayList = new ArrayList();
            arrayList.add(Uri.fromFile(file));
            String str2 = (("Build metadata:\n" + "\npackage: " + activity.getPackageName()) + "\nversion: " + c.c(activity) + " " + c.d(activity)) + "\n";
            Intent type = new Intent("android.intent.action.SEND_MULTIPLE").setType("text/plain");
            type.putExtra("android.intent.extra.SUBJECT", str);
            type.putExtra("android.intent.extra.TEXT", str2);
            type.addFlags(268435456);
            type.putExtra("android.intent.extra.STREAM", arrayList);
            activity.startActivityForResult(Intent.createChooser(type, null), i);
        }
    }
}
