package defpackage;

import android.support.annotation.NonNull;
import com.evernote.android.job.util.d;
import cxm;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: Twttr */
/* renamed from: ar */
public final class ar {
    private static final cxm a;
    private final Map<String, Object> b;

    static {
        a = new d("PersistableBundleCompat");
    }

    public ar() {
        this(new HashMap());
    }

    public ar(ar arVar) {
        this(new HashMap(arVar.b));
    }

    private ar(Map<String, Object> map) {
        this.b = map;
    }

    public void a(String str, long j) {
        this.b.put(str, Long.valueOf(j));
    }

    public long b(String str, long j) {
        Object obj = this.b.get(str);
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        return j;
    }

    @NonNull
    public String a() {
        String byteArrayOutputStream;
        Throwable e;
        OutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            as.a(this.b, byteArrayOutputStream2);
            byteArrayOutputStream = byteArrayOutputStream2.toString(Util.UTF_8);
            try {
                byteArrayOutputStream2.close();
            } catch (IOException e2) {
            }
        } catch (XmlPullParserException e3) {
            e = e3;
            a.b(e);
            byteArrayOutputStream = TtmlNode.ANONYMOUS_REGION_ID;
            try {
                byteArrayOutputStream2.close();
            } catch (IOException e4) {
            }
        } catch (IOException e5) {
            e = e5;
            a.b(e);
            byteArrayOutputStream = TtmlNode.ANONYMOUS_REGION_ID;
            byteArrayOutputStream2.close();
        } catch (Throwable e6) {
            a.b(e6);
            byteArrayOutputStream = TtmlNode.ANONYMOUS_REGION_ID;
            try {
                byteArrayOutputStream2.close();
            } catch (IOException e7) {
            }
        } catch (Throwable th) {
            try {
                byteArrayOutputStream2.close();
            } catch (IOException e8) {
            }
        }
        return byteArrayOutputStream;
    }

    @NonNull
    public static ar a(@NonNull String str) {
        ar arVar;
        Throwable e;
        InputStream inputStream;
        ByteArrayInputStream byteArrayInputStream = null;
        InputStream byteArrayInputStream2;
        try {
            byteArrayInputStream2 = new ByteArrayInputStream(str.getBytes(Util.UTF_8));
            try {
                arVar = new ar(as.a(byteArrayInputStream2));
                if (byteArrayInputStream2 != null) {
                    try {
                        byteArrayInputStream2.close();
                    } catch (IOException e2) {
                    }
                }
            } catch (XmlPullParserException e3) {
                e = e3;
                byteArrayInputStream = byteArrayInputStream2;
                try {
                    a.b(e);
                    arVar = new ar();
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e4) {
                        }
                    }
                    return arVar;
                } catch (Throwable th) {
                    e = th;
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw e;
                }
            } catch (IOException e6) {
                e = e6;
                inputStream = byteArrayInputStream2;
                a.b(e);
                arVar = new ar();
                if (byteArrayInputStream != null) {
                    byteArrayInputStream.close();
                }
                return arVar;
            } catch (VerifyError e7) {
                e = e7;
                inputStream = byteArrayInputStream2;
                a.b(e);
                arVar = new ar();
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e8) {
                    }
                }
                return arVar;
            } catch (Throwable th2) {
                e = th2;
                inputStream = byteArrayInputStream2;
                if (byteArrayInputStream != null) {
                    byteArrayInputStream.close();
                }
                throw e;
            }
        } catch (XmlPullParserException e9) {
            e = e9;
            byteArrayInputStream2 = null;
            byteArrayInputStream = byteArrayInputStream2;
            a.b(e);
            arVar = new ar();
            if (byteArrayInputStream != null) {
                byteArrayInputStream.close();
            }
            return arVar;
        } catch (IOException e10) {
            e = e10;
            a.b(e);
            arVar = new ar();
            if (byteArrayInputStream != null) {
                byteArrayInputStream.close();
            }
            return arVar;
        } catch (VerifyError e11) {
            e = e11;
            a.b(e);
            arVar = new ar();
            if (byteArrayInputStream != null) {
                byteArrayInputStream.close();
            }
            return arVar;
        }
        return arVar;
    }
}
