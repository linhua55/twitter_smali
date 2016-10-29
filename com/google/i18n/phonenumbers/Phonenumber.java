package com.google.i18n.phonenumbers;

import java.io.Serializable;

/* compiled from: Twttr */
public final class Phonenumber {

    /* compiled from: Twttr */
    public class PhoneNumber implements Serializable {
        private static final long serialVersionUID = 1;
        private CountryCodeSource countryCodeSource_;
        private int countryCode_;
        private String extension_;
        private boolean hasCountryCode;
        private boolean hasCountryCodeSource;
        private boolean hasExtension;
        private boolean hasItalianLeadingZero;
        private boolean hasNationalNumber;
        private boolean hasNumberOfLeadingZeros;
        private boolean hasPreferredDomesticCarrierCode;
        private boolean hasRawInput;
        private boolean italianLeadingZero_;
        private long nationalNumber_;
        private int numberOfLeadingZeros_;
        private String preferredDomesticCarrierCode_;
        private String rawInput_;

        /* compiled from: Twttr */
        public enum CountryCodeSource {
            FROM_NUMBER_WITH_PLUS_SIGN,
            FROM_NUMBER_WITH_IDD,
            FROM_NUMBER_WITHOUT_PLUS_SIGN,
            FROM_DEFAULT_COUNTRY
        }

        public PhoneNumber() {
            this.countryCode_ = 0;
            this.nationalNumber_ = 0;
            this.extension_ = TtmlNode.ANONYMOUS_REGION_ID;
            this.italianLeadingZero_ = false;
            this.numberOfLeadingZeros_ = 1;
            this.rawInput_ = TtmlNode.ANONYMOUS_REGION_ID;
            this.preferredDomesticCarrierCode_ = TtmlNode.ANONYMOUS_REGION_ID;
            this.countryCodeSource_ = CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        }

        public boolean a() {
            return this.hasCountryCode;
        }

        public int b() {
            return this.countryCode_;
        }

        public PhoneNumber a(int i) {
            this.hasCountryCode = true;
            this.countryCode_ = i;
            return this;
        }

        public boolean c() {
            return this.hasNationalNumber;
        }

        public long d() {
            return this.nationalNumber_;
        }

        public PhoneNumber a(long j) {
            this.hasNationalNumber = true;
            this.nationalNumber_ = j;
            return this;
        }

        public boolean e() {
            return this.hasExtension;
        }

        public String f() {
            return this.extension_;
        }

        public PhoneNumber a(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.hasExtension = true;
            this.extension_ = str;
            return this;
        }

        public boolean g() {
            return this.hasItalianLeadingZero;
        }

        public boolean h() {
            return this.italianLeadingZero_;
        }

        public PhoneNumber a(boolean z) {
            this.hasItalianLeadingZero = true;
            this.italianLeadingZero_ = z;
            return this;
        }

        public boolean i() {
            return this.hasNumberOfLeadingZeros;
        }

        public int j() {
            return this.numberOfLeadingZeros_;
        }

        public PhoneNumber b(int i) {
            this.hasNumberOfLeadingZeros = true;
            this.numberOfLeadingZeros_ = i;
            return this;
        }

        public boolean k() {
            return this.hasRawInput;
        }

        public String l() {
            return this.rawInput_;
        }

        public PhoneNumber b(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.hasRawInput = true;
            this.rawInput_ = str;
            return this;
        }

        public boolean m() {
            return this.hasCountryCodeSource;
        }

        public CountryCodeSource n() {
            return this.countryCodeSource_;
        }

        public PhoneNumber a(CountryCodeSource countryCodeSource) {
            if (countryCodeSource == null) {
                throw new NullPointerException();
            }
            this.hasCountryCodeSource = true;
            this.countryCodeSource_ = countryCodeSource;
            return this;
        }

        public PhoneNumber o() {
            this.hasCountryCodeSource = false;
            this.countryCodeSource_ = CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
            return this;
        }

        public boolean p() {
            return this.hasPreferredDomesticCarrierCode;
        }

        public String q() {
            return this.preferredDomesticCarrierCode_;
        }

        public PhoneNumber c(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.hasPreferredDomesticCarrierCode = true;
            this.preferredDomesticCarrierCode_ = str;
            return this;
        }

        public boolean a(PhoneNumber phoneNumber) {
            if (phoneNumber == null) {
                return false;
            }
            if (this == phoneNumber) {
                return true;
            }
            if (this.countryCode_ == phoneNumber.countryCode_ && this.nationalNumber_ == phoneNumber.nationalNumber_ && this.extension_.equals(phoneNumber.extension_) && this.italianLeadingZero_ == phoneNumber.italianLeadingZero_ && this.numberOfLeadingZeros_ == phoneNumber.numberOfLeadingZeros_ && this.rawInput_.equals(phoneNumber.rawInput_) && this.countryCodeSource_ == phoneNumber.countryCodeSource_ && this.preferredDomesticCarrierCode_.equals(phoneNumber.preferredDomesticCarrierCode_) && p() == phoneNumber.p()) {
                return true;
            }
            return false;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PhoneNumber) && a((PhoneNumber) obj);
        }

        public int hashCode() {
            int i = 1231;
            int b = ((((((((((h() ? 1231 : 1237) + ((((((b() + 2173) * 53) + Long.valueOf(d()).hashCode()) * 53) + f().hashCode()) * 53)) * 53) + j()) * 53) + l().hashCode()) * 53) + n().hashCode()) * 53) + q().hashCode()) * 53;
            if (!p()) {
                i = 1237;
            }
            return b + i;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Country Code: ").append(this.countryCode_);
            stringBuilder.append(" National Number: ").append(this.nationalNumber_);
            if (g() && h()) {
                stringBuilder.append(" Leading Zero(s): true");
            }
            if (i()) {
                stringBuilder.append(" Number of leading zeros: ").append(this.numberOfLeadingZeros_);
            }
            if (e()) {
                stringBuilder.append(" Extension: ").append(this.extension_);
            }
            if (m()) {
                stringBuilder.append(" Country Code Source: ").append(this.countryCodeSource_);
            }
            if (p()) {
                stringBuilder.append(" Preferred Domestic Carrier Code: ").append(this.preferredDomesticCarrierCode_);
            }
            return stringBuilder.toString();
        }
    }
}
