package com.twitter.android.settings;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import bbn;
import bvj;
import cfb;
import com.twitter.client_applog.thriftandroid.ClientAppLogUpload;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.b;
import com.twitter.library.api.UserSettings;
import com.twitter.library.api.upload.z;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.network.j;
import com.twitter.library.network.narc.h;
import com.twitter.library.scribe.LogCategory;
import com.twitter.library.scribe.ScribeService;
import com.twitter.library.service.aa;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.q;
import com.twitter.library.service.t;
import com.twitter.util.al;
import defpackage.cbf;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
class v extends z {
    private static final Charset a;
    private final Session b;
    private final h c;
    private final String i;
    private final String j;

    static {
        a = Charset.forName(Util.UTF_8);
    }

    v(Context context, Session session, h hVar, String str, String str2) {
        super(context, v.class.getName(), session);
        this.b = session;
        this.c = hVar;
        this.i = str;
        this.j = str2;
        a(new k().a(new q(1)).a(new l(context)).a(new t(t.b, t.c, (int) TimeUnit.HOURS.toMillis(1))));
    }

    protected void a(aa aaVar) {
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream(131072);
            ZipOutputStream zipOutputStream;
            try {
                zipOutputStream = new ZipOutputStream(byteArrayOutputStream);
                zipOutputStream.putNextEntry(new ZipEntry("NARCLog.narc"));
                zipOutputStream.write(this.c.toString().getBytes(a));
                zipOutputStream.closeEntry();
                zipOutputStream.putNextEntry(new ZipEntry("feature_switches.txt"));
                zipOutputStream.write(bvj.g().getBytes(a));
                zipOutputStream.closeEntry();
                UserSettings j = bg.a().c().j();
                if (j != null) {
                    zipOutputStream.putNextEntry(new ZipEntry("UserSettings.json.txt"));
                    zipOutputStream.write(j.toString().getBytes(a));
                    zipOutputStream.closeEntry();
                }
                String a = cbf.a(this.p).a();
                zipOutputStream.putNextEntry(new ZipEntry("NetworkStatus.json.txt"));
                zipOutputStream.write(a.getBytes(a));
                zipOutputStream.closeEntry();
                zipOutputStream.putNextEntry(new ZipEntry("memory_stats.txt"));
                zipOutputStream.write(a(this.p).getBytes(a));
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                byte[] toByteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                HttpEntity byteArrayEntity = new ByteArrayEntity(toByteArray);
                byteArrayEntity.setContentType("application/zip");
                HttpOperation a2 = new j(this.p, "https://ton.twitter.com/1.1/ton/bucket/clientlogs").a(N().c).a(RequestMethod.b).b("Uploads are always triggered by a user action.").a(new b(new ByteArrayOutputStream(1024), null)).a(byteArrayEntity).a();
                a2.a("Authorization", "Bearer " + com.twitter.library.network.h.a(this.p).b());
                a2.a("Content-Type", "application/zip");
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, d MMM yyyy hh:mm:ss", Locale.ENGLISH);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                String str = "x-ton-expires";
                a2.a(str, simpleDateFormat.format(new Date(al.b() + 2592000000L)) + " GMT");
                a2.c();
                aaVar.a(a2);
                com.twitter.internal.network.k g = aaVar.g();
                if (g != null && g.a == 201) {
                    a(a2, a2.b("Location"));
                }
            } catch (Throwable th) {
                byteArrayOutputStream.close();
            }
        } catch (Throwable e) {
            bbn.a(e);
        }
    }

    private String a(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            MemoryInfo memoryInfo = new MemoryInfo();
            ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("availableMemory", (double) (((float) memoryInfo.availMem) / 1048576.0f));
            jSONObject2.put("lowMemory", memoryInfo.lowMemory);
            jSONObject2.put("threshold", (double) (((float) memoryInfo.threshold) / 1048576.0f));
            jSONObject.put("deviceMemory", jSONObject2);
            Runtime runtime = Runtime.getRuntime();
            long freeMemory = runtime.freeMemory();
            long totalMemory = runtime.totalMemory();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("usedMemory", (double) (((float) (totalMemory - freeMemory)) / 1048576.0f));
            jSONObject3.put("freeMemory", (double) (((float) freeMemory) / 1048576.0f));
            jSONObject3.put("totalMemory", (double) (((float) totalMemory) / 1048576.0f));
            jSONObject3.put("maxMemory", (double) (((float) runtime.maxMemory()) / 1048576.0f));
            jSONObject.put("jvmMemory", jSONObject3);
            return jSONObject.toString(3);
        } catch (JSONException e) {
            return e.getMessage();
        }
    }

    private void a(HttpOperation httpOperation, String str) {
        Object obj;
        if (!httpOperation.k() || str == null) {
            cfb.c("ReportProblemDialogPref", "PROBLEM REPORT FAILED TO UPLOAD: " + httpOperation.l().a);
            obj = TtmlNode.ANONYMOUS_REGION_ID;
        } else {
            cfb.c("ReportProblemDialogPref", "PROBLEM REPORTED AND UPLOADED TO: " + str);
            int lastIndexOf = str.lastIndexOf(47);
            if (lastIndexOf >= 0) {
                str = str.substring(lastIndexOf);
            }
            obj = "https://ton.twitter.com/clientlogs" + str;
        }
        ClientAppLogUpload a = new com.twitter.client_applog.thriftandroid.b().a(ClientAppLogUpload.b, ScribeService.a()).a(ClientAppLogUpload.d, obj).a(ClientAppLogUpload.e, this.j).a(ClientAppLogUpload.f, this.i).a(ClientAppLogUpload.c, cbf.a(this.p, httpOperation)).a(ClientAppLogUpload.g, this.b.e()).a();
        ScribeService.a(this.p, LogCategory.a, this.b.g(), a);
    }
}
