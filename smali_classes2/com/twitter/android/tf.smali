.class Lcom/twitter/android/tf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/Session;

.field final synthetic b:Lcom/twitter/model/core/Tweet;

.field final synthetic c:Lcom/twitter/android/sn;


# direct methods
.method constructor <init>(Lcom/twitter/android/sn;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/twitter/android/tf;->c:Lcom/twitter/android/sn;

    iput-object p2, p0, Lcom/twitter/android/tf;->a:Lcom/twitter/library/client/Session;

    iput-object p3, p0, Lcom/twitter/android/tf;->b:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;II)V
    .locals 4

    .prologue
    .line 498
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/twitter/android/tf;->c:Lcom/twitter/android/sn;

    iget-object v0, v0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/tf;->c:Lcom/twitter/android/sn;

    iget-object v1, v1, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/tf;->a:Lcom/twitter/library/client/Session;

    iget-object v3, p0, Lcom/twitter/android/tf;->b:Lcom/twitter/model/core/Tweet;

    .line 500
    invoke-static {v1, v2, v3}, Lbtg;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/Tweet;)Lbtg;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/tg;

    invoke-direct {v2, p0}, Lcom/twitter/android/tg;-><init>(Lcom/twitter/android/tf;)V

    .line 499
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/twitter/android/tf;->c:Lcom/twitter/android/sn;

    const-string/jumbo v1, "delete"

    iget-object v2, p0, Lcom/twitter/android/tf;->b:Lcom/twitter/model/core/Tweet;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 514
    :cond_0
    return-void
.end method
