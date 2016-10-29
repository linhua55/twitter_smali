.class Lcom/twitter/library/client/av;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bf;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/app/common/util/s;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/library/client/bf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/app/common/util/s;Lcom/twitter/library/client/bf;)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {}, Lcom/twitter/util/object/ObjectUtils;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/av;->a:Ljava/lang/ref/WeakReference;

    .line 160
    invoke-static {}, Lcom/twitter/util/object/ObjectUtils;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/av;->b:Ljava/lang/ref/WeakReference;

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/client/av;->a(Lcom/twitter/app/common/util/s;Lcom/twitter/library/client/bf;)V

    .line 169
    return-void
.end method

.method private a()Lcom/twitter/library/client/bf;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/twitter/library/client/av;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/s;

    .line 207
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/twitter/app/common/util/s;->l_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/client/av;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bf;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/twitter/library/client/av;->a()Lcom/twitter/library/client/bf;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/library/client/bf;->a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V

    .line 194
    :cond_0
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/twitter/library/client/av;->a()Lcom/twitter/library/client/bf;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p1, p2}, Lcom/twitter/library/client/bf;->a(ILcom/twitter/library/service/x;)V

    .line 186
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/app/common/util/s;Lcom/twitter/library/client/bf;)V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/client/av;->a:Ljava/lang/ref/WeakReference;

    .line 177
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/client/av;->b:Ljava/lang/ref/WeakReference;

    .line 178
    return-void
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/twitter/library/client/av;->a()Lcom/twitter/library/client/bf;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p1, p2}, Lcom/twitter/library/client/bf;->b(ILcom/twitter/library/service/x;)V

    .line 202
    :cond_0
    return-void
.end method
