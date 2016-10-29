package defpackage;

import android.content.Context;
import android.net.Uri;
import dbt;
import dbu;
import dbw;
import dcl;
import tv.periscope.android.branch.api.BranchApiClient;

/* compiled from: Twttr */
/* renamed from: dbs */
public class dbs {
    public static void a(Context context, String str, String str2, dbv dbv) {
        BranchApiClient branchApiClient = new BranchApiClient();
        boolean z = dcl.a(context, "tv.periscope.android") || dcl.a(context, "tv.periscope.android.beta");
        dbs.a(context, str, str2, dbv, branchApiClient, z);
    }

    static void a(Context context, String str, String str2, dbv dbv, BranchApiClient branchApiClient, boolean z) {
        dbs.a(context, str, str2, branchApiClient, new dbt(z, dbv, context));
    }

    static void a(Context context, String str, String str2, BranchApiClient branchApiClient, dbw dbw) {
        String packageName = context.getPackageName();
        branchApiClient.a(context, packageName, str, str2, new dbu(dbw, packageName, str, str2));
    }

    private static Uri b(String str, String str2, String str3, String str4) {
        return Uri.parse(str).buildUpon().appendQueryParameter("create_broadcast", "true").appendQueryParameter("deeplink_source", str2).appendQueryParameter("twitter_username", str3).appendQueryParameter("title", str4).build();
    }
}
