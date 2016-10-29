.class final Lcom/twitter/android/media/stickers/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcom/twitter/android/media/stickers/m;",
        "Lcpo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/media/stickers/m;)Lcpo;
    .locals 3

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcpo;

    iget-object v1, p1, Lcom/twitter/android/media/stickers/m;->a:Lcpf;

    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/m;->d()Lcps;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcpo;-><init>(Lcpf;Lcps;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/twitter/android/media/stickers/m;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/j;->a(Lcom/twitter/android/media/stickers/m;)Lcpo;

    move-result-object v0

    return-object v0
.end method
