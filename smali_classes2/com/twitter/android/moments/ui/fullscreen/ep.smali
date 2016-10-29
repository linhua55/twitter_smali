.class Lcom/twitter/android/moments/ui/fullscreen/ep;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/Session;

.field final synthetic b:Lcom/twitter/model/core/TwitterUser;

.field final synthetic c:Z

.field final synthetic d:Lcom/twitter/android/moments/ui/fullscreen/eo;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/eo;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;Z)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->d:Lcom/twitter/android/moments/ui/fullscreen/eo;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->a:Lcom/twitter/library/client/Session;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->b:Lcom/twitter/model/core/TwitterUser;

    iput-boolean p4, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->d:Lcom/twitter/android/moments/ui/fullscreen/eo;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/eo;->a(Lcom/twitter/android/moments/ui/fullscreen/eo;)Lakj;

    move-result-object v0

    invoke-virtual {v0}, Lakj;->b()Z

    move-result v7

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 55
    if-eqz v7, :cond_1

    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->d:Lcom/twitter/android/moments/ui/fullscreen/eo;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/eo;->b(Lcom/twitter/android/moments/ui/fullscreen/eo;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbtz;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->a:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->b:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v4, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->d:Lcom/twitter/android/moments/ui/fullscreen/eo;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/eo;->a(Lcom/twitter/android/moments/ui/fullscreen/eo;)Lakj;

    move-result-object v1

    iget-boolean v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->c:Z

    if-eqz v7, :cond_2

    const v0, 0x7f0a091a

    .line 64
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v1, v3, v7, v0}, Lakj;->a(ZZLjava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->d:Lcom/twitter/android/moments/ui/fullscreen/eo;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/eo;->c(Lcom/twitter/android/moments/ui/fullscreen/eo;)Lcom/twitter/android/moments/ui/fullscreen/eq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->d:Lcom/twitter/android/moments/ui/fullscreen/eo;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/eo;->c(Lcom/twitter/android/moments/ui/fullscreen/eo;)Lcom/twitter/android/moments/ui/fullscreen/eq;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/twitter/android/moments/ui/fullscreen/eq;->a(Z)V

    .line 69
    :cond_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->d:Lcom/twitter/android/moments/ui/fullscreen/eo;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/eo;->b(Lcom/twitter/android/moments/ui/fullscreen/eo;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbuc;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->a:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/ep;->b:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v4, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_2
    const v0, 0x7f0a03b7

    goto :goto_1
.end method
