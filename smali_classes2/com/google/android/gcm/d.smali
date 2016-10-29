.class final Lcom/google/android/gcm/d;
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
        "Lcom/google/android/gcm/GCMScribeReporter$GCMDeletedMessageScribeItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gcm/GCMScribeReporter$GCMDeletedMessageScribeItem;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/google/android/gcm/GCMScribeReporter$GCMDeletedMessageScribeItem;

    invoke-direct {v0, p1}, Lcom/google/android/gcm/GCMScribeReporter$GCMDeletedMessageScribeItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/gcm/GCMScribeReporter$GCMDeletedMessageScribeItem;
    .locals 1

    .prologue
    .line 148
    new-array v0, p1, [Lcom/google/android/gcm/GCMScribeReporter$GCMDeletedMessageScribeItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/android/gcm/d;->a(Landroid/os/Parcel;)Lcom/google/android/gcm/GCMScribeReporter$GCMDeletedMessageScribeItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/android/gcm/d;->a(I)[Lcom/google/android/gcm/GCMScribeReporter$GCMDeletedMessageScribeItem;

    move-result-object v0

    return-object v0
.end method
