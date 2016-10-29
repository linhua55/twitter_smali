package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.security.Key;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class zzaq {
    private final z a;
    private final SecureRandom b;

    public class zza extends Exception {
        final /* synthetic */ zzaq zzoy;

        public zza(zzaq com_google_android_gms_internal_zzaq) {
            this.zzoy = com_google_android_gms_internal_zzaq;
        }

        public zza(zzaq com_google_android_gms_internal_zzaq, Throwable th) {
            this.zzoy = com_google_android_gms_internal_zzaq;
            super(th);
        }
    }

    public zzaq(z zVar, SecureRandom secureRandom) {
        this.a = zVar;
        this.b = secureRandom;
    }

    static void a(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] ^ 68);
        }
    }

    public byte[] a(String str) throws zza {
        try {
            byte[] a = this.a.a(str, false);
            if (a.length != 32) {
                throw new zza(this);
            }
            byte[] bArr = new byte[16];
            ByteBuffer.wrap(a, 4, 16).get(bArr);
            a(bArr);
            return bArr;
        } catch (Throwable e) {
            throw new zza(this, e);
        }
    }

    public byte[] a(byte[] bArr, String str) throws zza {
        if (bArr.length != 16) {
            throw new zza(this);
        }
        try {
            byte[] a = this.a.a(str, false);
            if (a.length <= 16) {
                throw new zza(this);
            }
            ByteBuffer allocate = ByteBuffer.allocate(a.length);
            allocate.put(a);
            allocate.flip();
            byte[] bArr2 = new byte[16];
            a = new byte[(a.length - 16)];
            allocate.get(bArr2);
            allocate.get(a);
            Key secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, secretKeySpec, new IvParameterSpec(bArr2));
            return instance.doFinal(a);
        } catch (Throwable e) {
            throw new zza(this, e);
        } catch (Throwable e2) {
            throw new zza(this, e2);
        } catch (Throwable e22) {
            throw new zza(this, e22);
        } catch (Throwable e222) {
            throw new zza(this, e222);
        } catch (Throwable e2222) {
            throw new zza(this, e2222);
        } catch (Throwable e22222) {
            throw new zza(this, e22222);
        } catch (Throwable e222222) {
            throw new zza(this, e222222);
        }
    }
}
