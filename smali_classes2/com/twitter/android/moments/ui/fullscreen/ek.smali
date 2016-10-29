.class Lcom/twitter/android/moments/ui/fullscreen/ek;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/a;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/ei;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/moments/a;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ek;->b:Lcom/twitter/android/moments/ui/fullscreen/ei;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ek;->a:Lcom/twitter/model/moments/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ek;->b:Lcom/twitter/android/moments/ui/fullscreen/ei;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ei;->c(Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/av/audio/n;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ek;->b:Lcom/twitter/android/moments/ui/fullscreen/ei;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/ei;->b(Lcom/twitter/android/moments/ui/fullscreen/ei;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ek;->b:Lcom/twitter/android/moments/ui/fullscreen/ei;

    invoke-static {v2}, Lcom/twitter/android/moments/ui/fullscreen/ei;->b(Lcom/twitter/android/moments/ui/fullscreen/ei;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00b3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/twitter/android/moments/ui/fullscreen/ek;->a:Lcom/twitter/model/moments/a;

    iget-object v6, v6, Lcom/twitter/model/moments/a;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Lcom/twitter/android/av/audio/n;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ek;->b:Lcom/twitter/android/moments/ui/fullscreen/ei;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ei;->d(Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/moments/ui/fullscreen/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/aq;->a()V

    .line 162
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ek;->a(Ljava/lang/Boolean;)V

    return-void
.end method
