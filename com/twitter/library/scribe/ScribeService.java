package com.twitter.library.scribe;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.IBinder;
import android.preference.PreferenceManager;
import android.support.v4.content.LocalBroadcastManager;
import com.twitter.android.mx;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.common_header.thriftandroid.ClientHeader;
import com.twitter.common_header.thriftandroid.CommonHeader;
import com.twitter.common_header.thriftandroid.VersionedCommonHeader;
import com.twitter.config.AppConfig;
import com.twitter.experiments.client.thriftandroid.DdgImpression;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.UserSettings;
import com.twitter.library.network.an;
import com.twitter.library.util.b;
import com.twitter.model.account.OAuthToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.ao;
import com.twitter.util.m;
import defpackage.arf;
import defpackage.bbn;
import defpackage.cfb;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;
import org.apache.thrift.TBase;
import org.apache.thrift.e;
import org.json.JSONException;
import org.json.JSONObject;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ScribeService extends IntentService {
    public static ap a;
    public static ak b;
    public static aj c;
    private static final HashMap<String, Integer> d;
    private static final HashMap<Long, HashMap<String, ao>> e;
    private static final HashMap<Long, Long> f;
    private static arf g;
    private String h;
    private String i;

    static {
        a = new am();
        b = new al();
        c = new ai();
        d = new HashMap();
        e = new HashMap();
        f = new HashMap();
        d.put("LOG", Integer.valueOf(1));
        d.put("FLUSH", Integer.valueOf(2));
        d.put("RESEND_EXPERIMENTS", Integer.valueOf(4));
        d.put("UPDATE_EXP_LOG_TIMESTAMP", Integer.valueOf(5));
        d.put("UPDATE_ENDPOINT_URL", Integer.valueOf(6));
        d.put("LOG_THRIFT", Integer.valueOf(7));
    }

    public static void a(arf arf) {
        g = arf;
    }

    public ScribeService() {
        super("ScribeService");
    }

    public void onCreate() {
        super.onCreate();
        SharedPreferences sharedPreferences = getSharedPreferences("debug_prefs", 0);
        if (AppConfig.m().p() && sharedPreferences.getBoolean("scribe_endpoint_enabled", false)) {
            this.h = sharedPreferences.getString("scribe_endpoint_url", "https://twitter.com/scribe");
        } else {
            this.h = getSharedPreferences("config", 0).getString("scribe_url", "https://twitter.com/scribe");
        }
        if (AppConfig.m().p() && sharedPreferences.getBoolean("scribe_thrift_endpoint_enabled", false)) {
            this.i = sharedPreferences.getString("scribe_thrift_endpoint_url", "https://api.twitter.com/1.1/jot/t");
        } else {
            this.i = "https://api.twitter.com/1.1/jot/t";
        }
        aq.a().a((Context) this);
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    protected void onHandleIntent(Intent intent) {
        if (intent != null && ab.a(intent)) {
            Integer num = (Integer) d.get(intent.getAction());
            OutputStream byteArrayOutputStream;
            long j;
            String stringExtra;
            switch (num == null ? 0 : num.intValue()) {
                case WireMessage.WIRE_CHAT /*1*/:
                    ScribeLog scribeLog = (ScribeLog) intent.getParcelableExtra("log");
                    if (scribeLog != null) {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        scribeLog.a(byteArrayOutputStream);
                        a(byteArrayOutputStream.toByteArray(), scribeLog.b());
                    }
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (b.a()) {
                        boolean a;
                        boolean z;
                        boolean z2 = true;
                        boolean z3 = true;
                        for (a aVar : d.a().c()) {
                            TwitterUser c = b.c(aVar);
                            if (c != null) {
                                String str;
                                UserSettings a2 = b.a(aVar);
                                if (a2 != null) {
                                    str = a2.h;
                                } else {
                                    str = null;
                                }
                                j = c.c;
                                OAuthToken b = b.b(aVar);
                                if (z2) {
                                    z2 = new ar(this, j, str, b, this.h, g).a();
                                }
                                if (z3) {
                                    a = new at(this, j, b, this.i, g).a();
                                } else {
                                    a = z3;
                                }
                                if (!(z2 || a)) {
                                    z3 = a;
                                    a = z2;
                                    if (a) {
                                        z = a;
                                    } else {
                                        z = new ar(this, 0, null, null, this.h, g).a();
                                    }
                                    if (z3) {
                                        a = z3;
                                    } else {
                                        a = new at(this, 0, null, this.i, g).a();
                                    }
                                    a = z && a;
                                    a(a);
                                }
                            } else {
                                a = z3;
                            }
                            z3 = a;
                        }
                        a = z2;
                        if (a) {
                            z = a;
                        } else {
                            z = new ar(this, 0, null, null, this.h, g).a();
                        }
                        if (z3) {
                            a = z3;
                        } else {
                            a = new at(this, 0, null, this.i, g).a();
                        }
                        if (!z) {
                        }
                        a(a);
                    }
                    if (AppConfig.m().a()) {
                        String stringExtra2 = intent.getStringExtra("flush_request_id");
                        Context applicationContext = getApplicationContext();
                        Intent intent2 = new Intent("SCRIBE_FLUSH_COMPLETED");
                        if (stringExtra2 != null) {
                            intent2.putExtra("flush_request_id", stringExtra2);
                        }
                        LocalBroadcastManager.getInstance(applicationContext).sendBroadcast(intent2);
                    }
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    long j2;
                    long j3;
                    Long valueOf = Long.valueOf(intent.getLongExtra("user_id", 0));
                    Long valueOf2 = Long.valueOf(intent.getLongExtra("exp_request_time", 0));
                    Long l = (Long) f.get(valueOf);
                    HashMap hashMap = (HashMap) e.get(valueOf);
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
                    if (AppConfig.m().p()) {
                        long b2 = b(defaultSharedPreferences);
                        if (b2 > 0) {
                            j2 = 3600000;
                            j3 = b2;
                            if (hashMap != null && l != null && valueOf2.longValue() - l.longValue() > j3) {
                                Iterator it = hashMap.entrySet().iterator();
                                while (it.hasNext()) {
                                    ao aoVar = (ao) ((Entry) it.next()).getValue();
                                    j = valueOf2.longValue() - aoVar.e.longValue();
                                    Object obj = (aoVar.f || j > j3) ? 1 : null;
                                    Object obj2 = (valueOf2.longValue() - aoVar.d.longValue() <= j3 || j <= j2) ? 1 : null;
                                    if (obj != null && obj2 != null) {
                                        aoVar.a(valueOf2.longValue());
                                        String str2 = aoVar.a;
                                        int i = aoVar.b;
                                        String str3 = aoVar.c;
                                        TwitterScribeLog a3 = TwitterScribeLog.d(valueOf.longValue()).a("ddg", str2.toLowerCase(), null, null, "experiment").a(str2, i, str3).a();
                                        byteArrayOutputStream = new ByteArrayOutputStream();
                                        a3.a(byteArrayOutputStream);
                                        a(byteArrayOutputStream.toByteArray(), a3.b());
                                        if (com.twitter.config.d.a("thrift_logging_ddg_double_write_enabled")) {
                                            a(getApplicationContext(), LogCategory.DDG_IMPRESSION, valueOf.longValue(), new com.twitter.experiments.client.thriftandroid.b().a(DdgImpression.b, a()).a(DdgImpression.c, str2).a(DdgImpression.d, Integer.valueOf(i)).a(DdgImpression.e, str3).a());
                                        }
                                    } else if (obj2 == null) {
                                        it.remove();
                                    }
                                }
                                f.put(valueOf, a(valueOf.longValue(), valueOf2.longValue()));
                                return;
                            }
                            return;
                        }
                    }
                    j2 = 3360000;
                    j3 = 1680000;
                    if (hashMap != null) {
                    }
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    Long valueOf3 = Long.valueOf(intent.getLongExtra("user_id", 0));
                    Long valueOf4 = Long.valueOf(intent.getLongExtra("exp_request_time", 0));
                    String stringExtra3 = intent.getStringExtra("exp_key");
                    Integer valueOf5 = Integer.valueOf(intent.getIntExtra("exp_version", 0));
                    String stringExtra4 = intent.getStringExtra("exp_bucket");
                    HashMap hashMap2 = (HashMap) e.get(valueOf3);
                    if (hashMap2 == null) {
                        hashMap2 = new HashMap();
                        e.put(valueOf3, hashMap2);
                    }
                    if (hashMap2.containsKey(stringExtra3)) {
                        ((ao) hashMap2.get(stringExtra3)).a(valueOf5.intValue(), stringExtra4, valueOf4.longValue());
                    } else {
                        hashMap2.put(stringExtra3, new ao(stringExtra3, valueOf5.intValue(), stringExtra4, valueOf4));
                    }
                    f.put(valueOf3, a(valueOf3.longValue(), valueOf4.longValue()));
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    SharedPreferences sharedPreferences = getSharedPreferences("debug_prefs", 0);
                    stringExtra = intent.getStringExtra("endpoint_url");
                    if (stringExtra != null) {
                        this.h = stringExtra;
                        sharedPreferences.edit().putBoolean("scribe_endpoint_enabled", true).putString("scribe_endpoint_url", stringExtra).apply();
                        return;
                    }
                    this.h = "https://twitter.com/scribe";
                    sharedPreferences.edit().putBoolean("scribe_endpoint_enabled", false).putString("scribe_endpoint_url", "https://twitter.com/scribe").apply();
                case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                    byte[] byteArrayExtra = intent.getByteArrayExtra("thrift_log");
                    j = intent.getLongExtra("owner_id", 0);
                    stringExtra = intent.getStringExtra("scribe_category");
                    if (byteArrayExtra != null) {
                        a(stringExtra, byteArrayExtra, j);
                    }
                default:
            }
        }
    }

    public static void a(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putLong("log_last_flush_request", m.b()).putInt("log_failure_cnt", 0).apply();
    }

    private static Long a(long j, long j2) {
        HashMap hashMap = (HashMap) e.get(Long.valueOf(j));
        if (hashMap == null || hashMap.size() == 0) {
            return Long.valueOf(0);
        }
        for (ao aoVar : hashMap.values()) {
            j2 = Math.min(aoVar.e.longValue(), j2);
        }
        return Long.valueOf(j2);
    }

    private static void a(Context context, long j, String str, int i, String str2, long j2) {
        context.startService(new Intent(context, ScribeService.class).setAction("UPDATE_EXP_LOG_TIMESTAMP").putExtra("user_id", j).putExtra("exp_request_time", j2).putExtra("exp_key", str).putExtra("exp_version", i).putExtra("exp_bucket", str2));
    }

    private static void a(Context context, long j) {
        context.startService(new Intent(context, ScribeService.class).setAction("RESEND_EXPERIMENTS").putExtra("user_id", j).putExtra("exp_request_time", m.b()));
    }

    public void a(byte[] bArr, long j) {
        if (bArr != null) {
            if (cfb.a()) {
                try {
                    cfb.b("ScribeService", new JSONObject(new String(bArr)).toString(2));
                } catch (JSONException e) {
                }
            }
            ScribeDatabaseHelper.a((Context) this, j).a(bArr);
            a((Context) this, false);
        }
    }

    public void a(String str, byte[] bArr, long j) {
        if (bArr != null) {
            if (cfb.a()) {
                cfb.b("ScribeService", "thrift log: " + str + ", " + bArr.length + " bytes");
            }
            ScribeDatabaseHelper.a((Context) this, j).a(str, bArr);
            a((Context) this, false);
        }
    }

    public static boolean a(HttpOperation httpOperation) {
        String a = ao.a(httpOperation.i());
        Set d = aq.a().d();
        return (d == null || a == null || !d.contains(a.toLowerCase())) ? false : true;
    }

    public static boolean a(String str) {
        return a(str, 0);
    }

    public static boolean a(String str, int i) {
        return aj.a.nextInt(10000) < Math.min(10000, com.twitter.config.d.a(str, i));
    }

    public static <T extends ScribeLog> void a(Context context, T t, boolean z) {
        if (z) {
            a(context, t.b());
        }
        a(context, (ScribeLog) t);
    }

    static short a(long j, TimeZone timeZone) {
        return (short) ((int) (((long) timeZone.getOffset(j)) / 60000));
    }

    public static VersionedCommonHeader a() {
        com.twitter.common_header.thriftandroid.b bVar = new com.twitter.common_header.thriftandroid.b();
        bVar.a(ClientHeader.b, Long.valueOf(m.b())).a(ClientHeader.c, Short.valueOf(a(m.b(), TimeZone.getDefault())));
        CommonHeader commonHeader = new CommonHeader();
        commonHeader.b(CommonHeader.b, bVar.a());
        VersionedCommonHeader versionedCommonHeader = new VersionedCommonHeader();
        versionedCommonHeader.b(VersionedCommonHeader.c, commonHeader);
        return versionedCommonHeader;
    }

    public static void a(Context context, LogCategory logCategory, long j, TBase tBase) {
        if (com.twitter.config.d.a("thrift_logging_enabled")) {
            try {
                context.startService(new Intent(context, ScribeService.class).setAction("LOG_THRIFT").putExtra("scribe_category", logCategory.a()).putExtra("owner_id", j).putExtra("thrift_log", new e().a(tBase)));
            } catch (Throwable e) {
                if (com.twitter.config.d.a("thrift_logging_crash_report_enabled")) {
                    bbn.a(e);
                }
            }
        }
    }

    private static <T extends ScribeLog> void a(Context context, T t) {
        context.startService(new Intent(context, ScribeService.class).setAction("LOG").putExtra("log", t));
    }

    public static void a(Context context, long j, Throwable th) {
        if (a("scribe_crash_sample_size", 10000)) {
            ScribeLog scribeLog = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b("app::::crash")).c(an.a(context).e.toString());
            if (th != null) {
                ((TwitterScribeLog) scribeLog.f(th.getClass().getName())).d(cfb.a(th));
            }
            a(context, scribeLog, true);
        }
    }

    public static void a(Context context, Throwable th) {
        cfb.b("ScribeService", "Error", th);
        if (a("scribe_error_sample_size", 10)) {
            a(context, (TwitterScribeLog) new TwitterScribeLog(0).a(th, 2, null, an.a(context).e.toString()), true);
        }
    }

    public static void a(Context context, String str, int i, String str2, long j) {
        a(context, j, str, i, str2, m.b());
        a(context, j);
    }

    public static void a(Context context, boolean z) {
        a(context, z, null);
    }

    public static boolean a(Context context, boolean z, String str) {
        if (b.a() && aq.a().b()) {
            Context applicationContext = context.getApplicationContext();
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(applicationContext);
            long b = m.b();
            boolean z2 = z ? true : a(defaultSharedPreferences) + defaultSharedPreferences.getLong("log_last_flush_request", 0) < b;
            if (z2) {
                defaultSharedPreferences.edit().putLong("log_last_flush_request", b).apply();
                applicationContext.startService(new Intent(applicationContext, ScribeService.class).setAction("FLUSH").putExtra("flush_request_id", str));
                return true;
            }
        }
        return false;
    }

    private static long a(SharedPreferences sharedPreferences) {
        int i = sharedPreferences.getInt("log_failure_cnt", 0);
        if (AppConfig.m().p()) {
            long b = b(sharedPreferences);
            if (b > 0) {
                return b;
            }
        }
        return aq.a().c() << i;
    }

    private static long b(SharedPreferences sharedPreferences) {
        String str = "default";
        str = sharedPreferences.getString("debug_scribe_flushing_frequency", "default");
        if ("default".equals(str)) {
            return 0;
        }
        return ((long) Integer.parseInt(str)) * 1000;
    }

    private void a(boolean z) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
        int i = defaultSharedPreferences.getInt("log_failure_cnt", 0);
        if (z) {
            if (i != 0) {
                defaultSharedPreferences.edit().putInt("log_failure_cnt", 0).apply();
            }
        } else if (i < 5) {
            defaultSharedPreferences.edit().putInt("log_failure_cnt", i + 1).apply();
        }
    }
}
