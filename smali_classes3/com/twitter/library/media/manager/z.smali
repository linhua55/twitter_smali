.class Lcom/twitter/library/media/manager/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/media/manager/s;


# instance fields
.field final synthetic a:Lcom/twitter/library/media/manager/o;

.field final synthetic b:Lcom/twitter/library/media/manager/o;

.field final synthetic c:Lcom/twitter/media/request/ResourceRequestType;

.field final synthetic d:Ldbd;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/twitter/library/media/manager/v;


# direct methods
.method constructor <init>(Lcom/twitter/library/media/manager/v;Lcom/twitter/library/media/manager/o;Lcom/twitter/library/media/manager/o;Lcom/twitter/media/request/ResourceRequestType;Ldbd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/twitter/library/media/manager/z;->g:Lcom/twitter/library/media/manager/v;

    iput-object p2, p0, Lcom/twitter/library/media/manager/z;->a:Lcom/twitter/library/media/manager/o;

    iput-object p3, p0, Lcom/twitter/library/media/manager/z;->b:Lcom/twitter/library/media/manager/o;

    iput-object p4, p0, Lcom/twitter/library/media/manager/z;->c:Lcom/twitter/media/request/ResourceRequestType;

    iput-object p5, p0, Lcom/twitter/library/media/manager/z;->d:Ldbd;

    iput-object p6, p0, Lcom/twitter/library/media/manager/z;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/twitter/library/media/manager/z;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/internal/android/service/ab;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-object v0, p0, Lcom/twitter/library/media/manager/z;->b:Lcom/twitter/library/media/manager/o;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/o;->j()V

    .line 646
    iget-object v0, p0, Lcom/twitter/library/media/manager/z;->b:Lcom/twitter/library/media/manager/o;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/o;->f()V

    .line 651
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 652
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    .line 654
    :goto_0
    new-instance v2, Lcom/twitter/library/media/manager/ae;

    iget-object v3, p0, Lcom/twitter/library/media/manager/z;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcom/twitter/library/media/manager/ae;-><init>(Ljava/lang/String;Lcom/twitter/internal/network/k;Lcom/twitter/library/media/manager/u;)V

    .line 655
    iget-object v0, p0, Lcom/twitter/library/media/manager/z;->g:Lcom/twitter/library/media/manager/v;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/media/manager/v;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 656
    return-void

    :cond_0
    move-object v0, v1

    .line 653
    goto :goto_0
.end method

.method public a(Lcom/twitter/library/service/aa;)Z
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/twitter/library/media/manager/z;->a:Lcom/twitter/library/media/manager/o;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/o;->j()V

    .line 636
    iget-object v0, p0, Lcom/twitter/library/media/manager/z;->a:Lcom/twitter/library/media/manager/o;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/o;->f()V

    .line 637
    iget-object v0, p0, Lcom/twitter/library/media/manager/z;->b:Lcom/twitter/library/media/manager/o;

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/o;->i()V

    .line 639
    iget-object v0, p0, Lcom/twitter/library/media/manager/z;->c:Lcom/twitter/media/request/ResourceRequestType;

    sget-object v1, Lcom/twitter/media/request/ResourceRequestType;->a:Lcom/twitter/media/request/ResourceRequestType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/manager/z;->d:Ldbd;

    iget-object v1, p0, Lcom/twitter/library/media/manager/z;->e:Ljava/lang/String;

    .line 640
    invoke-virtual {v0, v1}, Ldbd;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 639
    :goto_0
    return v0

    .line 640
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
