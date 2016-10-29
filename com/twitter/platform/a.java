package com.twitter.platform;

import com.twitter.util.aj;
import com.twitter.util.j;
import cun;
import java.io.File;

/* compiled from: Twttr */
public abstract class a {
    private long a;

    protected abstract File a();

    public void a(long j) {
        this.a = j;
    }

    public File a(String str) {
        if (a() == null) {
            return null;
        }
        return a(d(this.a) + aj.a(6), str);
    }

    public File a(String str, String str2) {
        File a = a();
        if (a == null) {
            return null;
        }
        StringBuilder append = new StringBuilder().append(str);
        String str3 = (str2 == null || str2.isEmpty()) ? "" : "." + str2;
        return new File(a, append.append(str3).toString());
    }

    public boolean a(File file) {
        return file != null && file.getName().startsWith("tmp-");
    }

    public boolean b(File file) {
        j.c();
        return a(file) && file.delete();
    }

    public void b(long j) {
        j.c();
        File a = a();
        if (a != null) {
            File[] listFiles = a.listFiles(new b(this, j));
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (!file.isDirectory()) {
                        cun.d(file);
                    }
                }
            }
        }
    }

    private static String d(long j) {
        return String.format("%s%d-", new Object[]{"tmp-", Long.valueOf(j)});
    }
}
