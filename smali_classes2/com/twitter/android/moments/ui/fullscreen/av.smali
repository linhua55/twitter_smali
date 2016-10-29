.class Lcom/twitter/android/moments/ui/fullscreen/av;
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
.field final synthetic a:Lcom/twitter/model/moments/d;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/ar;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ar;Lcom/twitter/model/moments/d;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/av;->b:Lcom/twitter/android/moments/ui/fullscreen/ar;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/av;->a:Lcom/twitter/model/moments/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/base/BaseDialogFragment;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/y;-><init>(I)V

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/av;->a:Lcom/twitter/model/moments/d;

    iget-object v1, v1, Lcom/twitter/model/moments/d;->c:Ljava/lang/String;

    .line 135
    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/y;->a(Ljava/lang/CharSequence;)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/av;->a:Lcom/twitter/model/moments/d;

    iget-object v1, v1, Lcom/twitter/model/moments/d;->d:Ljava/lang/String;

    .line 136
    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->b(Ljava/lang/CharSequence;)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    .line 137
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/av;->a:Lcom/twitter/model/moments/d;

    iget-object v1, v1, Lcom/twitter/model/moments/d;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/av;->a:Lcom/twitter/model/moments/d;

    iget-object v1, v1, Lcom/twitter/model/moments/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->c(Ljava/lang/CharSequence;)Lcom/twitter/android/dialog/m;

    .line 140
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/android/dialog/r;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/av;->a()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    return-object v0
.end method
