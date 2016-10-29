.class Lcom/twitter/android/moments/ui/fullscreen/es;
.super Lcom/twitter/library/view/b;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/er;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/er;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/es;->a:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-direct {p0}, Lcom/twitter/library/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/av;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/es;->a:Lcom/twitter/android/moments/ui/fullscreen/er;

    iget-object v1, p1, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(Lcom/twitter/android/moments/ui/fullscreen/er;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public a(Lcom/twitter/model/core/cx;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 64
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/es;->a:Lcom/twitter/android/moments/ui/fullscreen/er;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(Lcom/twitter/android/moments/ui/fullscreen/er;)Landroid/content/Context;

    move-result-object v1

    move-object v3, p1

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V

    .line 65
    return-void
.end method
