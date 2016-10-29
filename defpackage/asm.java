package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import com.twitter.config.AppConfig;
import com.twitter.config.g;
import com.twitter.config.h;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: asm */
public class asm implements g {
    public final OnSharedPreferenceChangeListener a;
    private final Map<String, Object> b;
    private h c;
    private final Context d;

    public asm(Context context) {
        this.a = new asn(this);
        this.b = new HashMap();
        this.d = context;
        SharedPreferences b = b();
        b.registerOnSharedPreferenceChangeListener(this.a);
        if (AppConfig.m().p()) {
            for (Entry entry : b.getAll().entrySet()) {
                String str = (String) entry.getKey();
                String obj = entry.getValue().toString();
                if (obj == null) {
                    this.b.put(str, null);
                } else {
                    try {
                        this.b.put(str, cil.a(str, obj).a());
                    } catch (Exception e) {
                        a("Failed to load global overrides.", e);
                    }
                }
            }
        }
    }

    private SharedPreferences b() {
        return this.d.getSharedPreferences("fs_override", 0);
    }

    private void a(SharedPreferences sharedPreferences, String str) {
        if (AppConfig.m().p()) {
            String string = sharedPreferences.getString(str, null);
            if (string == null) {
                a(str, null);
                return;
            }
            try {
                a(str, cil.a(str, string).a());
            } catch (Exception e) {
                a("Failed to load updated feature switch override.", e);
            }
        }
    }

    private void a(String str, Object obj) {
        this.b.put(str, obj);
        if (this.c != null) {
            this.c.a(this);
        }
    }

    public Object a(long j, String str, long j2) {
        return this.b.get(str);
    }

    public Object a(long j, String str) {
        return this.b.get(str);
    }

    public void a(String str, Exception exception) {
        throw new IllegalStateException(str, exception);
    }

    public void a(h hVar) {
        this.c = hVar;
    }

    public boolean a(String str) {
        return this.b.containsKey(str);
    }

    public void a() {
        this.b.clear();
    }
}
