.class final Lcom/twitter/library/scribe/af;
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
        "Lcom/twitter/library/scribe/ScribeItemUploadMedia;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/library/scribe/ScribeItemUploadMedia;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/twitter/library/scribe/ScribeItemUploadMedia;

    invoke-direct {v0, p1}, Lcom/twitter/library/scribe/ScribeItemUploadMedia;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/library/scribe/ScribeItemUploadMedia;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Lcom/twitter/library/scribe/ScribeItemUploadMedia;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/twitter/library/scribe/af;->a(Landroid/os/Parcel;)Lcom/twitter/library/scribe/ScribeItemUploadMedia;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/twitter/library/scribe/af;->a(I)[Lcom/twitter/library/scribe/ScribeItemUploadMedia;

    move-result-object v0

    return-object v0
.end method
