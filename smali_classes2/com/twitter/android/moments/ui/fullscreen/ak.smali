.class Lcom/twitter/android/moments/ui/fullscreen/ak;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lden;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lden",
        "<",
        "Lcom/twitter/app/common/base/BaseDialogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twitter/android/moments/ui/fullscreen/ai;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ai;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ak;->c:Lcom/twitter/android/moments/ui/fullscreen/ai;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ak;->a:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/ak;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/base/BaseDialogFragment;
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ak;->a:Landroid/content/res/Resources;

    const v1, 0x7f0a00b8

    const v2, 0x7f0a00b9

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ak;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/util/b;->a(Landroid/content/res/Resources;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/y;-><init>(I)V

    .line 71
    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/y;->a(Ljava/lang/CharSequence;)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f0a05e5

    .line 72
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->d(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    .line 73
    invoke-virtual {v0}, Lcom/twitter/android/dialog/r;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/ak;->a()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    return-object v0
.end method
