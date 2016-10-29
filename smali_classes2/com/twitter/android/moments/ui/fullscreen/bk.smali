.class public Lcom/twitter/android/moments/ui/fullscreen/bk;
.super Lcom/twitter/library/view/b;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/model/core/Tweet;

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/gh;

.field private final d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;JLcom/twitter/android/moments/ui/fullscreen/gh;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/twitter/library/view/b;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->b:Lcom/twitter/model/core/Tweet;

    .line 29
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->c:Lcom/twitter/android/moments/ui/fullscreen/gh;

    .line 30
    iput-wide p3, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->d:J

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/av;)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->c:Lcom/twitter/android/moments/ui/fullscreen/gh;

    iget-wide v2, p1, Lcom/twitter/model/core/av;->c:J

    const/4 v1, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/twitter/android/moments/ui/fullscreen/gh;->a(JLcom/twitter/android/moments/ui/fullscreen/dx;)V

    .line 48
    return-void
.end method

.method public a(Lcom/twitter/model/core/b;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->a:Landroid/content/Context;

    .line 42
    invoke-static {v1, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/b;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public a(Lcom/twitter/model/core/cx;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 52
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->b:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/library/client/BrowserDataSourceFactory;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/client/BrowserDataSource;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->d:J

    move-object v3, p1

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public a(Lcom/twitter/model/core/q;)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bk;->a:Landroid/content/Context;

    .line 36
    invoke-static {v1, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/q;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method
