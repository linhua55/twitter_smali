package com.twitter.util.serialization;

import com.twitter.android.mx;
import com.twitter.util.aj;
import com.twitter.util.collection.ac;
import com.twitter.util.collection.w;
import com.twitter.util.k;
import defpackage.bbl;
import defpackage.bbn;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class m {
    private static volatile ac<byte[]> a;

    public static void a(ac<byte[]> acVar) {
        a = acVar;
    }

    public static <T> byte[] a(T t, n<T> nVar) {
        if (t == null) {
            return k.a;
        }
        ac acVar = a;
        if (acVar != null) {
            byte[] bArr = (byte[]) acVar.a();
        } else {
            Object obj = null;
        }
        if (bArr == null) {
            return a((Object) t, (n) nVar, null);
        }
        try {
            byte[] a;
            synchronized (bArr) {
                a = a((Object) t, (n) nVar, bArr);
            }
            return a;
        } finally {
            acVar.a(bArr);
        }
    }

    public static <T> byte[] a(T t, n<T> nVar, byte[] bArr) {
        if (t == null) {
            return k.a;
        }
        q hVar = new h(bArr);
        try {
            nVar.b(hVar, t);
        } catch (Throwable e) {
            bbn.a(e);
        }
        return hVar.b();
    }

    public static <T> T a(byte[] bArr, n<T> nVar) {
        Throwable e;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        f fVar = new f(bArr);
        try {
            return nVar.a(fVar);
        } catch (IOException e2) {
            e = e2;
            bbn.a(new bbl().a("data", a(bArr, fVar.b(), false)).a(e));
            return null;
        } catch (ClassNotFoundException e3) {
            e = e3;
            bbn.a(new bbl().a("data", a(bArr, fVar.b(), false)).a(e));
            return null;
        }
    }

    public static <T> byte[] b(T t, n<T> nVar) {
        ObjectOutput objectOutputStream;
        Throwable e;
        if (t == null) {
            return k.a;
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            objectOutputStream = new ObjectOutputStream(new GZIPOutputStream(byteArrayOutputStream));
            try {
                nVar.b(new j(objectOutputStream), t);
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e2) {
                    }
                }
            } catch (IOException e3) {
                e = e3;
                try {
                    bbn.a(e);
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e4) {
                        }
                    }
                    return byteArrayOutputStream.toByteArray();
                } catch (Throwable th) {
                    e = th;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw e;
                }
            }
        } catch (IOException e6) {
            e = e6;
            objectOutputStream = null;
            bbn.a(e);
            if (objectOutputStream != null) {
                objectOutputStream.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            e = th2;
            objectOutputStream = null;
            if (objectOutputStream != null) {
                objectOutputStream.close();
            }
            throw e;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static <T> T b(byte[] bArr, n<T> nVar) {
        ObjectInputStream objectInputStream;
        Throwable e;
        Throwable th;
        T t = null;
        if (!(bArr == null || bArr.length == 0)) {
            try {
                objectInputStream = new ObjectInputStream(new GZIPInputStream(new ByteArrayInputStream(bArr)));
                try {
                    t = nVar.a(new i(objectInputStream));
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                    try {
                        bbn.a(e);
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e4) {
                            }
                        }
                        return t;
                    } catch (Throwable th2) {
                        th = th2;
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e5) {
                            }
                        }
                        throw th;
                    }
                } catch (ClassNotFoundException e6) {
                    e = e6;
                    bbn.a(e);
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    }
                    return t;
                }
            } catch (IOException e7) {
                e = e7;
                objectInputStream = t;
                bbn.a(e);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                return t;
            } catch (ClassNotFoundException e8) {
                e = e8;
                T t2 = t;
                bbn.a(e);
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                return t;
            } catch (Throwable e9) {
                objectInputStream = t;
                th = e9;
                if (objectInputStream != null) {
                    objectInputStream.close();
                }
                throw th;
            }
        }
        return t;
    }

    public static boolean a(q qVar, Object obj) throws IOException {
        if (obj != null) {
            if (!qVar.a()) {
                qVar.b((byte) 1);
            }
            return false;
        } else if (qVar.a()) {
            qVar.g();
            return true;
        } else {
            qVar.b((byte) 0);
            return true;
        }
    }

    public static boolean a(p pVar) throws IOException {
        boolean z = true;
        if (pVar.a()) {
            if (pVar.o() != 7) {
                z = false;
            }
            if (!z) {
                return z;
            }
            pVar.n();
            return z;
        }
        byte c = pVar.c();
        if (c == null) {
            return true;
        }
        if (c == (byte) 1) {
            return false;
        }
        throw new SerializationException("Invalid null indicator found: " + c);
    }

    public static String a(byte[] bArr, int i, boolean z) {
        return a(new f(bArr), i, z);
    }

    public static String a(p pVar, int i, boolean z) {
        StringBuilder append = new StringBuilder().append('{').append(aj.a());
        try {
            String str = "    ";
            int i2 = 0;
            Object obj = i >= 0 ? 1 : null;
            while (true) {
                byte o = pVar.o();
                if (o != 12) {
                    Object obj2;
                    if (o == 11) {
                        i2--;
                        if (i2 < 0) {
                            throw new SerializationException("Object end with no matching object start.");
                        }
                        str = aj.a("    ", i2 + 1);
                        pVar.m();
                        append.append(str).append('}');
                    } else {
                        append.append(str);
                        int e;
                        switch (o) {
                            case WireMessage.WIRE_CHAT /*1*/:
                                o = pVar.c();
                                if (!z) {
                                    append.append("Byte");
                                    break;
                                }
                                append.append("Byte: ").append(o);
                                break;
                            case WireMessage.WIRE_CONTROL /*2*/:
                                e = pVar.e();
                                if (!z) {
                                    append.append("Integer");
                                    break;
                                }
                                append.append("Integer: ").append(e);
                                break;
                            case WireMessage.WIRE_AUTH /*3*/:
                                long f = pVar.f();
                                if (!z) {
                                    append.append("Long");
                                    break;
                                }
                                append.append("Long: ").append(f);
                                break;
                            case ControlMessage.CONTROL_PRESENCE /*4*/:
                                float g = pVar.g();
                                if (!z) {
                                    append.append("Float");
                                    break;
                                }
                                append.append("Float: ").append(g);
                                break;
                            case mx.UserView_actionButtonPaddingRight /*5*/:
                                double h = pVar.h();
                                if (!z) {
                                    append.append("Double");
                                    break;
                                }
                                append.append("Double: ").append(h);
                                break;
                            case mx.UserView_actionButtonPaddingBottom /*6*/:
                                boolean d = pVar.d();
                                if (!z) {
                                    append.append("Boolean");
                                    break;
                                }
                                append.append("Boolean: ").append(d);
                                break;
                            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                                pVar.n();
                                append.append("null");
                                break;
                            case ControlMessage.CONTROL_BAN /*8*/:
                            case mx.TwitterEditText_characterCounterMode /*13*/:
                                String p = pVar.p();
                                if (!z) {
                                    append.append("String (").append(p.length()).append(')');
                                    break;
                                }
                                append.append("String: \"").append(p.replace(aj.a(), "\\n")).append('\"');
                                break;
                            case mx.TwitterEditText_messageSize /*9*/:
                                append.append("Object: Unknown type, v").append(pVar.k()).append(" {");
                                i2++;
                                str = aj.a("    ", i2 + 1);
                                break;
                            case mx.TwitterEditText_messageStyle /*10*/:
                                w l = pVar.l();
                                append.append("Object: ").append((String) l.b()).append(", v").append(l.a()).append(" {");
                                i2++;
                                str = aj.a("    ", i2 + 1);
                                break;
                            case mx.TwitterButton_labelMargin /*14*/:
                                byte[] q = pVar.q();
                                if (!z) {
                                    append.append("byte[] (").append(q.length).append(')');
                                    break;
                                }
                                e = q.length > 32 ? 32 : q.length;
                                append.append("byte[]: \"").append(k.a(q, 0, e));
                                e = q.length - e;
                                if (e > 0) {
                                    append.append("... ").append(e).append(" more bytes");
                                }
                                append.append('\"');
                                break;
                            default:
                                throw new SerializationException("Unknown type: " + o.c(o) + '.');
                        }
                    }
                    if (obj == null || i >= pVar.b()) {
                        obj2 = obj;
                    } else {
                        append.append(" <<<");
                        obj2 = null;
                    }
                    append.append(aj.a());
                    obj = obj2;
                } else if (i2 <= 0) {
                    return append.append('}').toString();
                } else {
                    throw new SerializationException("Object start with no matching object end.");
                }
            }
        } catch (IOException e2) {
            return append.append("ERROR: ").append(e2).toString();
        }
    }
}
