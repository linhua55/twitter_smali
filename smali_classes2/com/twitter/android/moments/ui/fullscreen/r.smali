.class Lcom/twitter/android/moments/ui/fullscreen/r;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/android/moments/ui/fullscreen/ah;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/q;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/q;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/r;->a:Lcom/twitter/android/moments/ui/fullscreen/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/fullscreen/ah;)V
    .locals 7

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/r;->a:Lcom/twitter/android/moments/ui/fullscreen/q;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/q;->a(Lcom/twitter/android/moments/ui/fullscreen/q;)Lcom/twitter/model/moments/viewmodels/y;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/moments/ui/fullscreen/ah;->b:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p1, Lcom/twitter/android/moments/ui/fullscreen/ah;->a:Lcom/twitter/model/av/AVMedia;

    check-cast v0, Lcom/twitter/model/av/Audio;

    .line 36
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/r;->a:Lcom/twitter/android/moments/ui/fullscreen/q;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/q;->c(Lcom/twitter/android/moments/ui/fullscreen/q;)Lajk;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/r;->a:Lcom/twitter/android/moments/ui/fullscreen/q;

    invoke-static {v2}, Lcom/twitter/android/moments/ui/fullscreen/q;->b(Lcom/twitter/android/moments/ui/fullscreen/q;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0a9f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 37
    invoke-virtual {v0}, Lcom/twitter/model/av/Audio;->m()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/twitter/model/av/Audio;->i()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lajk;->a(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/twitter/android/moments/ui/fullscreen/ah;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/r;->a(Lcom/twitter/android/moments/ui/fullscreen/ah;)V

    return-void
.end method
