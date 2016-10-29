.class Lcom/twitter/android/wt;
.super Lcom/twitter/library/view/b;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/UmfPromptView;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/twitter/android/UmfPromptView;)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lcom/twitter/android/wt;->a:Lcom/twitter/android/UmfPromptView;

    invoke-direct {p0}, Lcom/twitter/library/view/b;-><init>()V

    .line 251
    iget-object v0, p0, Lcom/twitter/android/wt;->a:Lcom/twitter/android/UmfPromptView;

    invoke-virtual {v0}, Lcom/twitter/android/UmfPromptView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/wt;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/UmfPromptView;Lcom/twitter/android/ws;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/twitter/android/wt;-><init>(Lcom/twitter/android/UmfPromptView;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/av;)V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/twitter/android/wt;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/wt;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "screen_name"

    iget-object v3, p1, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    .line 266
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method public a(Lcom/twitter/model/core/b;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/android/wt;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/wt;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/b;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 261
    return-void
.end method

.method public a(Lcom/twitter/model/core/cx;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v1, p0, Lcom/twitter/android/wt;->b:Landroid/content/Context;

    .line 272
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    move-object v3, p1

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    .line 271
    invoke-static/range {v1 .. v9}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Lcom/twitter/model/core/cx;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public a(Lcom/twitter/model/core/q;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/twitter/android/wt;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/wt;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/twitter/android/fh;->a(Landroid/content/Context;Lcom/twitter/model/core/q;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method
