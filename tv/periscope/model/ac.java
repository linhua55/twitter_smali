package tv.periscope.model;

import java.util.List;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class ac {
    private StreamType a;

    public abstract String a();

    public abstract String b();

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract p f();

    public abstract List<v> g();

    public abstract String h();

    public abstract int[] i();

    ac() {
    }

    public static ac a(String str, String str2, String str3, String str4, String str5, p pVar, List<v> list, String str6, int[] iArr, String str7) {
        StreamType streamType;
        ac oVar = new o(str, str2, str3, str4, str5, pVar, list, str6, iArr);
        Object obj = -1;
        switch (str7.hashCode()) {
            case -812124764:
                if (str7.equals("StreamTypeLowLatency")) {
                    obj = null;
                    break;
                }
                break;
            case 972161263:
                if (str7.equals("StreamTypeOnlyFriends")) {
                    obj = 2;
                    break;
                }
                break;
            case 1852164521:
                if (str7.equals("StreamTypeTooFull")) {
                    obj = 1;
                    break;
                }
                break;
        }
        switch (obj) {
            case p.View_android_theme /*0*/:
                streamType = StreamType.LowLatency;
                break;
            case p.View_android_focusable /*1*/:
                streamType = StreamType.TooFull;
                break;
            case p.View_paddingStart /*2*/:
                streamType = StreamType.OnlyFriends;
                break;
            default:
                streamType = StreamType.Unknown;
                break;
        }
        oVar.a(streamType);
        return oVar;
    }

    public StreamType j() {
        return this.a;
    }

    public void a(StreamType streamType) {
        this.a = streamType;
    }
}
