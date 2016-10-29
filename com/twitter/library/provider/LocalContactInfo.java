package com.twitter.library.provider;

import android.annotation.TargetApi;
import android.content.ContentUris;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.ContactsContract.Contacts;
import android.telephony.PhoneNumberUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;

/* compiled from: Twttr */
public class LocalContactInfo implements Comparable<LocalContactInfo> {
    public final String a;
    public final String b;
    public final Type c;
    private final String d;
    private final boolean e;
    private final int f;

    /* compiled from: Twttr */
    public enum Type {
        PHONE,
        EMAIL
    }

    public /* synthetic */ int compareTo(Object obj) {
        return a((LocalContactInfo) obj);
    }

    private LocalContactInfo(br brVar) {
        this.f = brVar.a;
        this.e = brVar.c;
        this.a = brVar.b;
        this.b = brVar.d;
        this.c = brVar.e;
        this.d = this.c == Type.PHONE ? a(this.b) : this.b;
    }

    public Uri a() {
        if (this.e) {
            return Uri.withAppendedPath(ContentUris.withAppendedId(Contacts.CONTENT_URI, (long) this.f), "photo");
        }
        return Uri.EMPTY;
    }

    public static Intent a(LocalContactInfo localContactInfo, String str) {
        if (localContactInfo.c == Type.PHONE) {
            return new Intent("android.intent.action.VIEW", Uri.fromParts("smsto", localContactInfo.b, null)).putExtra("android.intent.extra.TEXT", str).putExtra("sms_body", str);
        }
        return new Intent("android.intent.action.SENDTO").setData(Uri.fromParts("mailto", localContactInfo.b, null)).putExtra("android.intent.extra.TEXT", str);
    }

    public int a(LocalContactInfo localContactInfo) {
        int compareTo = this.a.compareTo(localContactInfo.a);
        return compareTo != 0 ? compareTo : this.d.compareTo(localContactInfo.d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LocalContactInfo localContactInfo = (LocalContactInfo) obj;
        if (this.a.equals(localContactInfo.a) && this.d.equals(localContactInfo.d) && this.c == localContactInfo.c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.a.hashCode() * 31) + this.d.hashCode()) * 31) + this.c.hashCode();
    }

    @TargetApi(21)
    private String a(String str) {
        if (VERSION.SDK_INT >= 21) {
            return PhoneNumberUtils.normalizeNumber(str);
        }
        return PhoneNumberUtil.d(str);
    }
}
