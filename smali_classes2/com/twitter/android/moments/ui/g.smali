.class final Lcom/twitter/android/moments/ui/g;
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
        "Lcom/twitter/android/moments/ui/OffScreenTranslationLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/android/moments/ui/OffScreenTranslationLayout$SavedState;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/twitter/android/moments/ui/OffScreenTranslationLayout$SavedState;

    invoke-direct {v0, p1}, Lcom/twitter/android/moments/ui/OffScreenTranslationLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/android/moments/ui/OffScreenTranslationLayout$SavedState;
    .locals 1

    .prologue
    .line 72
    new-array v0, p1, [Lcom/twitter/android/moments/ui/OffScreenTranslationLayout$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/g;->a(Landroid/os/Parcel;)Lcom/twitter/android/moments/ui/OffScreenTranslationLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/g;->a(I)[Lcom/twitter/android/moments/ui/OffScreenTranslationLayout$SavedState;

    move-result-object v0

    return-object v0
.end method
