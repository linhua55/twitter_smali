.class Lcom/twitter/android/aj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/e",
        "<",
        "Lcom/twitter/media/model/MediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/BaseEditProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/BaseEditProfileActivity;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/twitter/android/aj;->a:Lcom/twitter/android/BaseEditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/media/model/MediaFile;)V
    .locals 1

    .prologue
    .line 367
    if-eqz p1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/twitter/android/aj;->a:Lcom/twitter/android/BaseEditProfileActivity;

    invoke-virtual {v0, p1}, Lcom/twitter/android/BaseEditProfileActivity;->c(Lcom/twitter/media/model/MediaFile;)V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/aj;->a:Lcom/twitter/android/BaseEditProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/BaseEditProfileActivity;->v()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 364
    check-cast p1, Lcom/twitter/media/model/MediaFile;

    invoke-virtual {p0, p1}, Lcom/twitter/android/aj;->a(Lcom/twitter/media/model/MediaFile;)V

    return-void
.end method
