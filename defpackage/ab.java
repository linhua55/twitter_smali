package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* compiled from: Twttr */
/* renamed from: ab */
class ab {
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    ab(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public static ab a(Properties properties) {
        return new ab(properties.getProperty("version_code"), properties.getProperty("version_name"), properties.getProperty("build_id"), properties.getProperty("package_name"));
    }

    public static ab a(InputStream inputStream) throws IOException {
        Properties properties = new Properties();
        properties.load(inputStream);
        return ab.a(properties);
    }
}
