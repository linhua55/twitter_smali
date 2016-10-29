package defpackage;

import java.util.regex.Pattern;

/* compiled from: Twttr */
/* renamed from: cew */
public class cew {
    public static final Pattern a;
    public static final Pattern b;
    public static final Pattern c;

    static {
        a = Pattern.compile("\\b(?:(?:[\\w-]+://?|www[.])[^\\s()<>]+(?:\\([\\w\\d]+\\)|(?:[^\\p{Punct}\\s]|/)))");
        b = Pattern.compile("(\\s|\\n|\\r)");
        c = Pattern.compile("[a-zA-Z0-9+._%-]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9-]{1,25})+");
    }
}
