package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v7.recyclerview.BuildConfig;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.util.object.ObjectUtils;
import defpackage.cun;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class NativeCardEvent implements Parcelable {
    public static final Creator<NativeCardEvent> CREATOR;
    private final String a;
    private NativeCardUserAction b;
    private ScribeKeyValuesHolder c;
    private String d;
    private int e;

    static {
        CREATOR = new q();
    }

    public NativeCardEvent(String str) {
        this.e = -1;
        this.a = str;
    }

    public NativeCardEvent(Parcel parcel) {
        this.e = -1;
        this.a = parcel.readString();
        if (parcel.readByte() == (byte) 1) {
            this.b = new NativeCardUserAction(parcel);
        }
        if (parcel.readByte() == (byte) 1) {
            this.c = new ScribeKeyValuesHolder(parcel);
        }
        this.d = parcel.readString();
        this.e = parcel.readInt();
    }

    public void a(int i) {
        this.e = i;
    }

    public void a(NativeCardUserAction nativeCardUserAction) {
        this.b = nativeCardUserAction;
    }

    public void a(ScribeKeyValuesHolder scribeKeyValuesHolder) {
        this.c = scribeKeyValuesHolder;
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        Object obj = 1;
        Object obj2 = null;
        jsonGenerator.c();
        if (this.b != null) {
            jsonGenerator.a("card_user_action");
            this.b.a(jsonGenerator);
            obj2 = 1;
        }
        if (this.c != null) {
            jsonGenerator.a("card_user_data");
            this.c.a(jsonGenerator);
            obj2 = 1;
        }
        if (this.d != null) {
            jsonGenerator.a("network_provider", this.d);
            obj2 = 1;
        }
        if (this.e != -1) {
            jsonGenerator.a("publisher_app_install_status", this.e);
        } else {
            obj = obj2;
        }
        String a = a(this.a);
        if (a != null) {
            if (obj != null) {
                jsonGenerator.c(",");
            }
            jsonGenerator.c(a);
        }
        jsonGenerator.d();
    }

    private String a(String str) {
        String str2 = null;
        if (str != null) {
            try {
                String jSONObject = new JSONObject(str).toString();
                if (jSONObject.length() > 2) {
                    str2 = jSONObject.substring(1, jSONObject.length() - 1);
                }
            } catch (JSONException e) {
            }
        }
        return str2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        if (this.b != null) {
            parcel.writeByte((byte) 1);
            this.b.writeToParcel(parcel, i);
        } else {
            parcel.writeByte((byte) 0);
        }
        if (this.c != null) {
            parcel.writeByte((byte) 1);
            this.c.writeToParcel(parcel, i);
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
    }

    public String toString() {
        Closeable a;
        String stringBuffer;
        Throwable th;
        try {
            Writer stringWriter = new StringWriter();
            a = new JsonFactory().a(stringWriter);
            try {
                a((JsonGenerator) a);
                a.flush();
                stringBuffer = stringWriter.getBuffer().toString();
                cun.a(a);
            } catch (IOException e) {
                try {
                    stringBuffer = BuildConfig.VERSION_NAME;
                    cun.a(a);
                    return stringBuffer;
                } catch (Throwable th2) {
                    th = th2;
                    cun.a(a);
                    throw th;
                }
            }
        } catch (IOException e2) {
            a = null;
            stringBuffer = BuildConfig.VERSION_NAME;
            cun.a(a);
            return stringBuffer;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            a = null;
            th = th4;
            cun.a(a);
            throw th;
        }
        return stringBuffer;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NativeCardEvent nativeCardEvent = (NativeCardEvent) obj;
        if (this.e == nativeCardEvent.e && ObjectUtils.a(this.a, nativeCardEvent.a) && ObjectUtils.a(this.b, nativeCardEvent.b) && ObjectUtils.a(this.c, nativeCardEvent.c)) {
            return ObjectUtils.a(this.d, nativeCardEvent.d);
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(this.a, this.b, this.c, this.d, Integer.valueOf(this.e));
    }
}
