package retrofit.mime;

import android.support.v7.recyclerview.BuildConfig;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public final class MimeUtil {
    private static final Pattern CHARSET;

    static {
        CHARSET = Pattern.compile("\\Wcharset=([^\\s;]+)", 2);
    }

    @Deprecated
    public static String parseCharset(String str) {
        return parseCharset(str, "UTF-8");
    }

    public static String parseCharset(String str, String str2) {
        Matcher matcher = CHARSET.matcher(str);
        if (matcher.find()) {
            return matcher.group(1).replaceAll("[\"\\\\]", BuildConfig.VERSION_NAME);
        }
        return str2;
    }

    private MimeUtil() {
    }
}
