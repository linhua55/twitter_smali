.class Lcom/twitter/library/scribe/aw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lcom/twitter/library/scribe/av;


# direct methods
.method constructor <init>(Lcom/twitter/library/scribe/av;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/twitter/library/scribe/aw;->a:Lcom/twitter/library/scribe/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1054
    iget-object v0, p0, Lcom/twitter/library/scribe/aw;->a:Lcom/twitter/library/scribe/av;

    invoke-static {v0}, Lcom/twitter/library/scribe/av;->a(Lcom/twitter/library/scribe/av;)Z

    move-result v0

    .line 1055
    iget-object v2, p0, Lcom/twitter/library/scribe/aw;->a:Lcom/twitter/library/scribe/av;

    invoke-static {v2}, Lcom/twitter/library/scribe/av;->b(Lcom/twitter/library/scribe/av;)J

    move-result-wide v2

    .line 1056
    iget-object v4, p0, Lcom/twitter/library/scribe/aw;->a:Lcom/twitter/library/scribe/av;

    invoke-static {v4}, Lcom/twitter/library/scribe/av;->c(Lcom/twitter/library/scribe/av;)V

    .line 1057
    iget-object v4, p0, Lcom/twitter/library/scribe/aw;->a:Lcom/twitter/library/scribe/av;

    .line 1058
    invoke-static {v4}, Lcom/twitter/library/scribe/av;->a(Lcom/twitter/library/scribe/av;)Z

    move-result v4

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/twitter/library/scribe/aw;->a:Lcom/twitter/library/scribe/av;

    .line 1059
    invoke-static {v0}, Lcom/twitter/library/scribe/av;->b(Lcom/twitter/library/scribe/av;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1061
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/library/scribe/aw;->a:Lcom/twitter/library/scribe/av;

    invoke-static {v0}, Lcom/twitter/library/scribe/av;->d(Lcom/twitter/library/scribe/av;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/twitter/library/scribe/aw;->a:Lcom/twitter/library/scribe/av;

    invoke-static {v0}, Lcom/twitter/library/scribe/av;->d(Lcom/twitter/library/scribe/av;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;Z)V

    .line 1064
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1059
    goto :goto_0
.end method
