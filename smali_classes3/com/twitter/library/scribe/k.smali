.class final Lcom/twitter/library/scribe/k;
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
        "Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;-><init>(Landroid/os/Parcel;Lcom/twitter/library/scribe/k;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;
    .locals 1

    .prologue
    .line 28
    new-array v0, p1, [Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/twitter/library/scribe/k;->a(Landroid/os/Parcel;)Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/twitter/library/scribe/k;->a(I)[Lcom/twitter/library/scribe/LiveVideoEventScribeDetails;

    move-result-object v0

    return-object v0
.end method
