.class final Lcom/twitter/android/dk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/twitter/android/DMInboxFragmentSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/android/DMInboxFragmentSavedState;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/android/DMInboxFragmentSavedState;

    invoke-direct {v0, p1}, Lcom/twitter/android/DMInboxFragmentSavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/android/DMInboxFragmentSavedState;
    .locals 1

    .prologue
    .line 26
    new-array v0, p1, [Lcom/twitter/android/DMInboxFragmentSavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/android/dk;->a(Landroid/os/Parcel;)Lcom/twitter/android/DMInboxFragmentSavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/android/dk;->a(I)[Lcom/twitter/android/DMInboxFragmentSavedState;

    move-result-object v0

    return-object v0
.end method
