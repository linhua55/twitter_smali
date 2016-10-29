package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ValidationState implements Parcelable {
    public static final Creator<ValidationState> CREATOR;
    public State a;
    public Level b;

    /* compiled from: Twttr */
    public enum Level {
        LOCAL,
        NETWORK
    }

    /* compiled from: Twttr */
    public enum State {
        NOT_VALIDATED,
        VALIDATING,
        VALID,
        INVALID
    }

    static {
        CREATOR = new xu();
    }

    public ValidationState() {
        this.a = State.NOT_VALIDATED;
        this.b = Level.LOCAL;
    }

    public ValidationState(State state, Level level) {
        this.a = state;
        this.b = level;
    }

    public ValidationState(Parcel parcel) {
        this.a = State.values()[parcel.readInt()];
        this.b = Level.values()[parcel.readInt()];
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a.ordinal());
        parcel.writeInt(this.b.ordinal());
    }

    public boolean a() {
        return this.a == State.VALID;
    }

    public boolean b() {
        return this.a == State.VALIDATING || this.a == State.NOT_VALIDATED;
    }
}
