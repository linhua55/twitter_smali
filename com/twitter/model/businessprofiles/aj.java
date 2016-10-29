package com.twitter.model.businessprofiles;

import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber.CountryCodeSource;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
public class aj extends k<PhoneNumber> {
    public static final n<PhoneNumber> a;
    private static final n<CountryCodeSource> b;

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    static {
        a = new aj();
        b = s.a(CountryCodeSource.class);
    }

    protected void a(q qVar, PhoneNumber phoneNumber) throws IOException {
        if (phoneNumber.a()) {
            qVar.b(true).e(phoneNumber.b());
        } else {
            qVar.b(false);
        }
        if (phoneNumber.c()) {
            qVar.b(true).b(phoneNumber.d());
        } else {
            qVar.b(false);
        }
        if (phoneNumber.e()) {
            qVar.b(true).b(phoneNumber.f());
        } else {
            qVar.b(false);
        }
        if (phoneNumber.g()) {
            qVar.b(true).b(phoneNumber.h());
        } else {
            qVar.b(false);
        }
        if (phoneNumber.i()) {
            qVar.b(true).e(phoneNumber.j());
        } else {
            qVar.b(false);
        }
        if (phoneNumber.k()) {
            qVar.b(true).b(phoneNumber.l());
        } else {
            qVar.b(false);
        }
        if (phoneNumber.m()) {
            qVar.b(true);
            b.b(qVar, phoneNumber.n());
        } else {
            qVar.b(false);
        }
        if (phoneNumber.p()) {
            qVar.b(true).b(phoneNumber.q());
        } else {
            qVar.b(false);
        }
    }

    protected PhoneNumber a(p pVar, int i) throws IOException, ClassNotFoundException {
        PhoneNumber phoneNumber = new PhoneNumber();
        if (pVar.d()) {
            phoneNumber.a(pVar.e());
        }
        if (pVar.d()) {
            phoneNumber.a(pVar.f());
        }
        if (pVar.d()) {
            phoneNumber.a(pVar.p());
        }
        if (pVar.d()) {
            phoneNumber.a(pVar.d());
        }
        if (pVar.d()) {
            phoneNumber.b(pVar.e());
        }
        if (pVar.d()) {
            phoneNumber.b(pVar.p());
        }
        if (pVar.d()) {
            phoneNumber.a((CountryCodeSource) b.c(pVar));
        }
        if (pVar.d()) {
            phoneNumber.c(pVar.p());
        }
        return phoneNumber;
    }
}
