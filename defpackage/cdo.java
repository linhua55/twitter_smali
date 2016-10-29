package defpackage;

import android.content.Context;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.util.h;
import java.lang.reflect.Method;

/* compiled from: Twttr */
/* renamed from: cdo */
public class cdo {
    private static cdo a;
    private final Context b;
    private int c;
    private int d;
    private boolean e;
    private Method f;
    private Method g;
    private Method h;
    private final cdq i;

    protected cdo(Context context) {
        this.c = 99;
        this.d = 0;
        this.i = new cdq();
        this.b = context.getApplicationContext();
        try {
            this.f = SignalStrength.class.getMethod("getLteRssnr", new Class[0]);
            this.g = SignalStrength.class.getMethod("getLteRsrp", new Class[0]);
            this.h = SignalStrength.class.getMethod("getLteSignalStrength", new Class[0]);
            this.e = true;
        } catch (Throwable th) {
            this.f = null;
            this.g = null;
            this.h = null;
            this.e = false;
        }
        ((TelephonyManager) this.b.getSystemService("phone")).listen(this.i, 256);
    }

    public static synchronized cdo a() {
        cdo cdo;
        synchronized (cdo.class) {
            if (a == null) {
                throw new IllegalStateException("Initialize must be called first from the main looper thread");
            }
            cdo = a;
        }
        return cdo;
    }

    public static void a(Context context) {
        h.a();
        if (a == null) {
            a = new cdo(context);
        }
    }

    public int b() {
        return this.c;
    }

    public String c() {
        switch (this.d) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "poor";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "moderate";
            case Util.TYPE_OTHER /*3*/:
                return "good";
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return "great";
            default:
                return "unknown";
        }
    }

    private int a(SignalStrength signalStrength) {
        int i = 0;
        if (signalStrength.isGsm()) {
            if (this.e) {
                i = e(signalStrength);
            }
            if (i == 0) {
                return cdo.b(signalStrength);
            }
            return i;
        }
        i = cdo.c(signalStrength);
        int d = cdo.d(signalStrength);
        if (d == 0) {
            return i;
        }
        if (i == 0) {
            return d;
        }
        if (i >= d) {
            return d;
        }
        return i;
    }

    private static int b(SignalStrength signalStrength) {
        int gsmSignalStrength = signalStrength.getGsmSignalStrength();
        if (gsmSignalStrength <= 2 || gsmSignalStrength == 99) {
            return 0;
        }
        if (gsmSignalStrength >= 12) {
            return 4;
        }
        if (gsmSignalStrength >= 8) {
            return 3;
        }
        if (gsmSignalStrength < 5) {
            return 1;
        }
        return 2;
    }

    private static int c(SignalStrength signalStrength) {
        int i = 4;
        int cdmaDbm = signalStrength.getCdmaDbm();
        int cdmaEcio = signalStrength.getCdmaEcio();
        if (cdmaDbm >= -75) {
            cdmaDbm = 4;
        } else if (cdmaDbm >= -85) {
            cdmaDbm = 3;
        } else if (cdmaDbm >= -95) {
            cdmaDbm = 2;
        } else if (cdmaDbm >= -100) {
            cdmaDbm = 1;
        } else {
            cdmaDbm = 0;
        }
        if (cdmaEcio < -90) {
            if (cdmaEcio >= -110) {
                i = 3;
            } else if (cdmaEcio >= -130) {
                i = 2;
            } else if (cdmaEcio >= -150) {
                i = 1;
            } else {
                i = 0;
            }
        }
        if (cdmaDbm < i) {
            return cdmaDbm;
        }
        return i;
    }

    private static int d(SignalStrength signalStrength) {
        int i = 4;
        int evdoDbm = signalStrength.getEvdoDbm();
        int evdoSnr = signalStrength.getEvdoSnr();
        if (evdoDbm >= -65) {
            evdoDbm = 4;
        } else if (evdoDbm >= -75) {
            evdoDbm = 3;
        } else if (evdoDbm >= -90) {
            evdoDbm = 2;
        } else if (evdoDbm >= -105) {
            evdoDbm = 1;
        } else {
            evdoDbm = 0;
        }
        if (evdoSnr < 7) {
            if (evdoSnr >= 5) {
                i = 3;
            } else if (evdoSnr >= 3) {
                i = 2;
            } else if (evdoSnr >= 1) {
                i = 1;
            } else {
                i = 0;
            }
        }
        if (evdoDbm < i) {
            return evdoDbm;
        }
        return i;
    }

    private int e(SignalStrength signalStrength) {
        try {
            boolean z;
            boolean z2;
            int intValue = ((Integer) this.g.invoke(signalStrength, new Object[0])).intValue();
            int intValue2 = ((Integer) this.f.invoke(signalStrength, new Object[0])).intValue();
            int intValue3 = ((Integer) this.h.invoke(signalStrength, new Object[0])).intValue();
            if (intValue > -44) {
                z = true;
            } else if (intValue >= -85) {
                z = true;
            } else if (intValue >= -95) {
                z = true;
            } else if (intValue >= -105) {
                z = true;
            } else if (intValue >= -115) {
                z = true;
            } else if (intValue >= -140) {
                z = false;
            } else {
                z = true;
            }
            if (intValue2 > 300) {
                z2 = true;
            } else if (intValue2 >= 130) {
                z2 = true;
            } else if (intValue2 >= 45) {
                z2 = true;
            } else if (intValue2 >= 10) {
                z2 = true;
            } else if (intValue2 >= -30) {
                z2 = true;
            } else if (intValue2 >= -200) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z2 || z) {
                if (!z2) {
                    return z2;
                }
                if (!z) {
                    return z;
                }
                if (intValue3 > 63) {
                    return 0;
                }
                if (intValue3 >= 12) {
                    return 4;
                }
                if (intValue3 >= 8) {
                    return 3;
                }
                if (intValue3 >= 5) {
                    return 2;
                }
                if (intValue3 >= 0) {
                    return 1;
                }
                return 0;
            } else if (z < z2) {
                return z;
            } else {
                return z2;
            }
        } catch (Throwable th) {
            this.e = false;
            return 0;
        }
    }
}
