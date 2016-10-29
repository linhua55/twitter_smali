.class public Lcom/twitter/app/main/r;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Landroid/support/design/widget/Snackbar$Callback;

.field private d:Landroid/support/design/widget/Snackbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/twitter/app/main/s;

    invoke-direct {v0, p0}, Lcom/twitter/app/main/s;-><init>(Lcom/twitter/app/main/r;)V

    iput-object v0, p0, Lcom/twitter/app/main/r;->c:Landroid/support/design/widget/Snackbar$Callback;

    .line 36
    iput-object p1, p0, Lcom/twitter/app/main/r;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/twitter/app/main/r;->b:Landroid/view/View;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/twitter/app/main/r;)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/twitter/app/main/r;->d:Landroid/support/design/widget/Snackbar;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/app/main/r;->d:Landroid/support/design/widget/Snackbar;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/twitter/app/main/r;->d:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/app/main/r;->d:Landroid/support/design/widget/Snackbar;

    .line 67
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 78
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "To display an indefinite snackbar, use showBottomBar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/main/r;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/app/main/r;->b:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/twitter/ui/widget/u;->a(Landroid/content/Context;Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/main/r;->c:Landroid/support/design/widget/Snackbar$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 82
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/app/main/r;->d:Landroid/support/design/widget/Snackbar;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/twitter/app/main/r;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/app/main/r;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/twitter/ui/widget/u;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/main/r;->d:Landroid/support/design/widget/Snackbar;

    .line 53
    iget-object v0, p0, Lcom/twitter/app/main/r;->d:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempted to show bottom bar when one already existed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
