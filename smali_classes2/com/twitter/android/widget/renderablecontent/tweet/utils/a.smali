.class final Lcom/twitter/android/widget/renderablecontent/tweet/utils/a;
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
        "Lcom/twitter/android/widget/renderablecontent/tweet/utils/MutableForegroundColorSpan;",
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
.method public a(Landroid/os/Parcel;)Lcom/twitter/android/widget/renderablecontent/tweet/utils/MutableForegroundColorSpan;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/android/widget/renderablecontent/tweet/utils/MutableForegroundColorSpan;

    invoke-direct {v0, p1}, Lcom/twitter/android/widget/renderablecontent/tweet/utils/MutableForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/android/widget/renderablecontent/tweet/utils/MutableForegroundColorSpan;
    .locals 1

    .prologue
    .line 24
    new-array v0, p1, [Lcom/twitter/android/widget/renderablecontent/tweet/utils/MutableForegroundColorSpan;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/renderablecontent/tweet/utils/a;->a(Landroid/os/Parcel;)Lcom/twitter/android/widget/renderablecontent/tweet/utils/MutableForegroundColorSpan;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/renderablecontent/tweet/utils/a;->a(I)[Lcom/twitter/android/widget/renderablecontent/tweet/utils/MutableForegroundColorSpan;

    move-result-object v0

    return-object v0
.end method
