package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.support.v4.content.ContextCompat;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

public class l {
    SharedPreferences a;
    Context b;

    public l(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    public l(Context context, String str) {
        this.b = context;
        this.a = context.getSharedPreferences(str, 4);
        g(str + "-no-backup");
    }

    private String c(String str, String str2, String str3) {
        return str + "|T|" + str2 + "|" + str3;
    }

    private void g(String str) {
        File file = new File(new ContextCompat().getNoBackupFilesDir(this.b), str);
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !a()) {
                    Log.i("InstanceID/Store", "App restored, clearing state");
                    InstanceIDListenerService.a(this.b, this);
                }
            } catch (IOException e) {
                if (Log.isLoggable("InstanceID/Store", 3)) {
                    Log.d("InstanceID/Store", "Error creating file in no backup dir: " + e.getMessage());
                }
            }
        }
    }

    synchronized String a(String str) {
        return this.a.getString(str, null);
    }

    synchronized String a(String str, String str2) {
        return this.a.getString(str + "|S|" + str2, null);
    }

    public synchronized String a(String str, String str2, String str3) {
        return this.a.getString(c(str, str2, str3), null);
    }

    synchronized KeyPair a(String str, long j) {
        KeyPair a;
        a = f.a();
        Editor edit = this.a.edit();
        a(edit, str, "|P|", a.a(a.getPublic().getEncoded()));
        a(edit, str, "|K|", a.a(a.getPrivate().getEncoded()));
        a(edit, str, "cre", Long.toString(j));
        edit.commit();
        return a;
    }

    synchronized void a(Editor editor, String str, String str2, String str3) {
        editor.putString(str + "|S|" + str2, str3);
    }

    public synchronized void a(String str, String str2, String str3, String str4, String str5) {
        String c = c(str, str2, str3);
        Editor edit = this.a.edit();
        edit.putString(c, str4);
        edit.putString("appVersion", str5);
        edit.putString("lastToken", Long.toString(System.currentTimeMillis() / 1000));
        edit.commit();
    }

    boolean a() {
        return this.a.getAll().isEmpty();
    }

    public synchronized void b() {
        this.a.edit().clear().commit();
    }

    public synchronized void b(String str) {
        Editor edit = this.a.edit();
        for (String str2 : this.a.getAll().keySet()) {
            if (str2.startsWith(str)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    public synchronized void b(String str, String str2, String str3) {
        String c = c(str, str2, str3);
        Editor edit = this.a.edit();
        edit.remove(c);
        edit.commit();
    }

    public KeyPair c(String str) {
        return f(str);
    }

    void d(String str) {
        b(str + "|");
    }

    public void e(String str) {
        b(str + "|T|");
    }

    KeyPair f(String str) {
        Object e;
        String a = a(str, "|P|");
        String a2 = a(str, "|K|");
        if (a2 == null) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(a, 8);
            byte[] decode2 = Base64.decode(a2, 8);
            KeyFactory instance = KeyFactory.getInstance("RSA");
            return new KeyPair(instance.generatePublic(new X509EncodedKeySpec(decode)), instance.generatePrivate(new PKCS8EncodedKeySpec(decode2)));
        } catch (InvalidKeySpecException e2) {
            e = e2;
            Log.w("InstanceID/Store", "Invalid key stored " + e);
            InstanceIDListenerService.a(this.b, this);
            return null;
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            Log.w("InstanceID/Store", "Invalid key stored " + e);
            InstanceIDListenerService.a(this.b, this);
            return null;
        }
    }
}
