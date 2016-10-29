.class final Lcom/twitter/library/scribe/r;
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
        "Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;-><init>(Landroid/os/Parcel;Lcom/twitter/library/scribe/n;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;
    .locals 1

    .prologue
    .line 378
    new-array v0, p1, [Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/twitter/library/scribe/r;->a(Landroid/os/Parcel;)Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/twitter/library/scribe/r;->a(I)[Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    move-result-object v0

    return-object v0
.end method
